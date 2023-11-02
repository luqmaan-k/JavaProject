package com.JavaProject.service;

import com.JavaProject.model.Comment;

// The `public interface CommentService` is defining a contract for a service that deals with comments.
// It declares a method `save` that takes a `Comment` object as a parameter and returns a `Comment`
// object. This method is responsible for saving the comment.
public interface CommentService {

    Comment save(Comment comment);
}
