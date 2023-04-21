package com.example.rcca.Entities;

import jakarta.annotation.Nullable;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "administrators")
public class Administrator{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private Long aid;

    private String name;

    private String password;

    private String security_question;

    private String answer;

    @OneToOne
    private Administrator created_by;

}
