package com.JavaProject.repository;

import com.JavaProject.model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;

// The `CommentRepository` interface is extending the `JpaRepository` interface.
public interface CommentRepository extends JpaRepository<Comment, Long> {
}
