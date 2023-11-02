package com.JavaProject.repository;

import com.JavaProject.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

// The code snippet is defining a repository interface called `UserRepository` that extends the
// `JpaRepository` interface.
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(@Param("email") String email);

    Optional<User> findByUsername(@Param("username") String username);
}
