package com.JavaProject.service;

import com.JavaProject.model.Post;
import com.JavaProject.model.User;
import org.springframework.data.domain.Page;

import java.util.Optional;

// The `PostService` interface defines a set of methods that can be used to interact with the `Post`
// entity in a Java project.
public interface PostService {

    Optional<Post> findForId(Long id);

    Post save(Post post);

    /**
     * Finds a {@link Page) of {@link Post} of provided user ordered by date
     */
    Page<Post> findByUserOrderedByDatePageable(User user, int page);

    /**
     * Finds a {@link Page) of all {@link Post} ordered by date
     */
    Page<Post> findAllOrderedByDatePageable(int page);

    void delete(Post post);
}
