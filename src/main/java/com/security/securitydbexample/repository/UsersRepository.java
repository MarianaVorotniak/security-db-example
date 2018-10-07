package com.security.securitydbexample.repository;

import com.security.securitydbexample.model.Users;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UsersRepository extends JpaRepository<Users, Integer> {

    public Optional<Users> findByName(String username);
}
