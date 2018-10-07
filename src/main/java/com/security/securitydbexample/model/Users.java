package com.security.securitydbexample.model;

import lombok.Data;
import lombok.Getter;

import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Entity
@Table(name = "user")
@Data
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private int id;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "name")
    @Getter
    private String name;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "active")
    private int active;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))

    private Collection<Role> roles;

    public Users(Users users) {
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public Collection<Role> getRoles() {
        return roles;
    }
}
