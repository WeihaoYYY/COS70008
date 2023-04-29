package com.example.rcca.Entities;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepository extends JpaRepository<Administrator, Long> {

    @Query(value = "SELECT * FROM administrators a WHERE a.name = :name", nativeQuery = true)
    public Administrator findByName(@Param("name") String name);

    @Query(value = "SELECT role FROM administrators a WHERE a.name = :name", nativeQuery = true)
    public String findRoleByName(@Param("name") String name);
}
