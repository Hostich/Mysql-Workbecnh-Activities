USE act_db;

CREATE TABLE PETS (
  pet_id INT NOT NULL,
  pet_name VARCHAR(50) NOT NULL,
  pet_type VARCHAR(20) NOT NULL,
  pet_age INT NOT NULL,
  pet_owner VARCHAR(100) NOT NULL,
  visit_date DATE NOT NULL,
  procedure_id CHAR(2) NOT NULL,
  procedure_type VARCHAR(100) NOT NULL,
  amount DECIMAL(10,2) NOT NULL
);

INSERT INTO PETS
(pet_id, pet_name, pet_type, pet_age, pet_owner, visit_date, procedure_id, procedure_type, amount, DICOUNT)
VALUES
(246, 'ROVER', 'DOG', 5, 'ALNADO REJUF', '2022-01-13', '01', '5 IN 1 PARVO VACCINATION', 5000.00),
(246, 'ROVER', 'DOG', 5, 'ALNADO REJUF', '2022-03-27', '10', 'EXAMINE AND TREAT WOUND', 1200.00),
(246, 'ROVER', 'DOG', 5, 'ALNADO REJUF', '2022-05-02', '05', 'HEART WORM TEST', 800.00),
(298, 'SPOT', 'DOG', 2, 'IGOJO APRJOLS', '2022-01-21', '08', 'TETANUS VACCINATION', 500.00),
(289, 'SPOT', 'DOG', 2, 'IGOJO APRJOLS', '2022-03-12', '05', 'HEART WORM TEST', 800.00),
(341, 'MORRIS', 'CAT', 4, 'MABUTID NINMAR', '2022-03-02', '02', 'RABIES VACCINATION', 500.00),
(341, 'MORRIS', 'CAT', 4, 'MABUTID NINMAR', '2022-01-23', '02', 'RABIES VACCINATION', 500.00),
(519, 'TWEEDY', 'BIRD', 2, 'IGOJO APRJOLS', '2022-04-30', '20', 'ANNUAL CHECK-UP', 250.00),
(519, 'TWEEDY', 'BIRD', 2, 'IGOJO APRJOLS', '2022-03-23', '18', 'EYE WASH', 150.00);


INSERT INTO PETS (pet_id, pet_name, pet_type, pet_age, pet_owner, visit_date, procedure_id, procedure_type, amount)
VALUES(615, 'SNOW', 'CAT', 3, 'LACYER I’GOP', '2022-04-20', '20', 'ANNUAL CHECK-UP', 250.00),
	(620, 'CHEEDAR', 'RABBIT', 1, 'YALAC NOBLA', '2022-03-10', '10', 'DEWORMING', 350.00);



SELECT * FROM PETS;
