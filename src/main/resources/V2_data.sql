INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (1, 'John Smith', 'john.smith@example.com', '+7(123)-456-78-90', 'Address: 123 Main St, City, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (2, 'Anna Johnson', 'anna.johnson@email.com', '+7(987)-654-32-10', '456 Elm St, Town, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (3, 'Alex Petrov', 'alex.petrov@example.net', '+7(111)-222-33-33', 'Address: 789 Oak St, Village, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (4, 'Emily Brown', 'emily.brown@email.net', '+7(333)-444-55-55', '234 Pine St, City, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (5, 'Mikhail Ivanov', 'mikhail.ivanov@example.org', '+7(444)-555-66-66', '567 Cedar St, Town, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (6, 'Sofia Kuznetsova', 'sofia.kuznetsova@email.org', '+7(555)-666-77-77', '890 Maple St, City, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (7, 'David Kim', 'david.kim@example.com', '+7(666)-777-88-88', '901 Birch St, Village, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (8, 'Maria Gonzalez', 'maria.gonzalez@email.net', '+7(777)-888-99-99', '345 Walnut St, Town, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (9, 'Sergey Popov', 'sergey.popov@example.org', '+7(888)-999-00-00', '678 Cherry St, City, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (10, 'Julia Lee', 'julia.lee@email.com', '+7(999)-000-11-11', '012 Pine St, Village, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (11, 'Elena Volkova', 'elena.volkova@email.net', '+7(111)-222-33-33 ', '678 Elm St, City, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (12, 'Peter Mueller', 'peter.mueller@email.org', '+7(222)-333-44-44', '901 Cedar St, Village, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (13, 'Michael Brown', 'michael.brown@email.net', '+7(444)-555-66-66', '567 Birch St, City, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (14, 'Olga Sokolova', 'olga.sokolova@example.com', '+7(333)-444-55-55', '234 Maple St, Town, Country');
INSERT INTO public.customer (customer_id, customer_name, email, phone_number, address) VALUES (15, 'Andrei Smirnov', 'andrei.smirnov@example.net', '+7(000)-111-22-22', '345 Oak St, Town, Country');


INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (12, '6789 0123 4567 8901', 'Peter Mueller', '01/25', '789');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (14, '3456 7890 1234 5678', 'Olga Sokolova', '08/24', '567');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (1, '4532-8765-2345-9876', 'John Smith', '08/25', '123');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (2, '5467-1234-5678-9012', 'Anna Johnson', '05/24', '456');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (3, '3782-9012-3456-7891', 'Alex Petrov', '11/27', '789');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (4, '9876-5432-1098-7654', 'Emily Brown', '02/26', '234');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (5, '2345-6789-0123-4567', 'Mikhail Iva', '07/23', '567');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (6, '7890 1234 5678 9012', 'Sofia Kuznetsova', '09/25', '890');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (7, '3210 9876 5432 1098', 'David Kim', '12/28', '345');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (8, '4567 8901 2345 6789', 'Maria Gonzalez', '06/24', '678');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (9, '8901 2345 6789 0123', 'Sergey Popov', '03/26', '901');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (10, '5678 9012 3456 7890', 'Julia Lee', '10/27', '123');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name, expiration_date, cvv) VALUES (11, '1234 5678 9012 3456', 'Elena Volkova', '04/23', '456');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name,  expiration_date, cvv) VALUES (13, '9012 3456 7890 1234', 'Michael Brown', '11/28', '234');
INSERT INTO public.creditcard (card_id, card_number, card_holder_name,  expiration_date, cvv) VALUES (15, '2109 8765 4321 0987', 'Andrei Smirnov', '07/26', '890');


INSERT INTO customer_credit_cards
(credit_cards_card_id, customer_customer_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15);