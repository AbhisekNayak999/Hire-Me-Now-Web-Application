package com.jobapp.repo;

import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.jobapp.model.JobPost;

@Repository
public class JobRepo {

    private JdbcTemplate template;

    public JobRepo(JdbcTemplate template) {
        this.template = template;
    }

    public JdbcTemplate getTemplate() {
        return template;
    }

    @Autowired
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // method to return all JobPosts
    public List<JobPost> returnAllJobPosts() {
        String sql = "SELECT * FROM jobapplication;";
        
        RowMapper<JobPost> mapper = new RowMapper<JobPost>() {
            @Override
            public JobPost mapRow(ResultSet rs, int rowNum) throws SQLException {
                JobPost jobpost = new JobPost();
                jobpost.setPostId(rs.getInt("postId"));
                jobpost.setPostProfile(rs.getString("postProfile"));
                jobpost.setPostDesc(rs.getString("postDesc"));
                jobpost.setReqExperience(rs.getInt("reqExperience"));
                
                Array sqlArray = rs.getArray("postTechStack");
                if (sqlArray != null) {
                    String[] techStack = (String[]) sqlArray.getArray();
                    jobpost.setPostTechStack(techStack);
                }
                return jobpost;
            }
        };
        
        return template.query(sql, mapper);
    }

    // method to save a job post object
    public void addJobPost(JobPost job) 
    {
        String sql = "INSERT INTO jobapplication (postId, postProfile, postDesc, reqExperience, postTechStack)VALUES (?,?,?,?,?);";
        
        
        try {
            template.update(
                sql,
                job.getPostId(),
                job.getPostProfile(),
                job.getPostDesc(),
                job.getReqExperience(),
                template.getDataSource().getConnection().createArrayOf("text", job.getPostTechStack())
            );
        } catch (DataAccessException | SQLException e) {
            e.printStackTrace();
        }
    }
}
