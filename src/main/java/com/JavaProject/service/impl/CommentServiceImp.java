package com.JavaProject.service.impl;

import com.JavaProject.model.Comment;
import com.JavaProject.repository.CommentRepository;
import com.JavaProject.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * The CommentServiceImp class is a service implementation that saves comments using a
 * CommentRepository.
 */
@Service
public class CommentServiceImp implements CommentService {

    private final CommentRepository commentRepository;

    @Autowired
    public CommentServiceImp(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }

    @Override
    public Comment save(Comment comment) {
        return commentRepository.saveAndFlush(comment);
    }
}
