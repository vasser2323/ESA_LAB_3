CREATE TABLE Customer(
                         customer_id SERIAL NOT NULL PRIMARY KEY,
                         customer_name character varying(50) NOT NULL,
                         email character varying(50) NOT NULL,
                         phone_number character varying(20) NOT NULL,
                         address character varying(50) NOT NULL
);

create table creditcard (
                            card_id SERIAL NOT NULL PRIMARY KEY,
                            card_number character varying(25),
                            card_holder_name character varying(100),
                            customer_id integer,
                            expiration_date character varying(20),
                            cvv character varying(4),
                            FOREIGN KEY (customer_id) REFERENCES Customer (customer_id) ON DELETE CASCADE
);

CREATE TABLE customer_credit_cards (
                                       credit_cards_card_id INT,
                                       customer_customer_id INT,
                                       FOREIGN KEY (credit_cards_card_id) REFERENCES creditcard(card_id),
                                       FOREIGN KEY (customer_customer_id) REFERENCES Customer(customer_id)
);
