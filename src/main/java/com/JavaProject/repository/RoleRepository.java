package com.JavaProject.repository;

import com.JavaProject.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

// The code snippet is defining a repository interface called `RoleRepository` that extends the
// `JpaRepository` interface.
public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByRole(@Param("role") String role);
}
