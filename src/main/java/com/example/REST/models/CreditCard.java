package com.example.REST.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Entity
@Setter
@NoArgsConstructor
@ToString
@Table(name = "creditcard")
public class CreditCard {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "card_id")
    private Integer cardId;

    @Column(name = "card_number")
    private String cardNumber;

    @Column(name = "card_holder_name")
    private String cardHolderName;

    @Column(name = "expiration_date")
    private String expirationDate;

    @Column(name = "cvv")
    private String cvv;
}
