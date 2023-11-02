package com.JavaProject.service;

import com.JavaProject.model.User;

import java.util.Optional;

// The `UserService` interface defines a contract for a service that handles user-related operations.
// It declares three methods:
public interface UserService {

    Optional<User> findByUsername(String username);

    Optional<User> findByEmail(String email);

    User save(User user);
}
