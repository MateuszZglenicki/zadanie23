1.	CREATE TABLE employee (
                                id INT AUTO_INCREMENT,
                                first_name VARCHAR(20) NOT NULL,
                                last_name VARCHAR(20) NOT NULL,
                                date_of_birth DATE NOT NULL,
                                salary DECIMALl(10,2),
                                position VARCHAR(40),
                                PRIMARY KEY (id)
      );
2. INSERT INTO employee(first_name, last_name, date_of_birth, salary, position)
VALUES('Kamil', 'Solecki', '1993-05-03', 3250.00, 'expert'), ('Mateusz', 'Kowalski', '1990-05-03', 3250.00, 'expert'),
('Bartek', 'Kaczyński', '1995-07-03', 3350.00, 'expert'), ('Mariola', 'Duda', '1982-05-03', 3251.00, 'specialist'),
('Barbara', 'Morawiecka', '1982-06-03', 3260.00, 'specialist'), ('Jerzy', 'Kononowicz', '1992-06-03', 3250.10, 'expert');

3. SELECT * FROM employee ORDER BY last_name;

4.  SELECT * FROM employee WHERE position = 'expert';

5. SELECT * FROM employee WHERE date_of_birth <= '1992-05-04';

6. UPDATE employee SET salary = salary * 1.1 WHERE position = 'specialist' AND id = 4;

7. SELECT * FROM employee WHERE
        date_of_birth = (SELECT MAX(date_of_birth) FROM employee);

8. DROP TABLE IF EXISTS employee;

9. CREATE TABLE position (
                             id INT PRIMARY KEY AUTO_INCREMENT,
                             name VARCHAR(30) UNIQUE NOT NULL,
                             description VARCHAR(3000),
                             salary DECIMAL(10,2)
   );
10. CREATE TABLE address (
                             id INT PRIMARY KEY AUTO_INCREMENT,
                             street VARCHAR(30) NOT NULL,
                             house_flat_number VARCHAR(10) NOT NULL,
                             ZIP_code VARCHAR(10) NOT NULL,
                             town VARCHAR(30) NOT NULL
    );
11. CREATE TABLE employee (
                              id int primary key auto_increment,
                              first_name varchar(20) not null,
                              last_name varchar(20) not null,
                              id_address int,
                              id_position int
    );
12. INSERT INTO employee (first_name, last_name, id_address, id_position)
values ('Kamil', 'Kowalski', '1', '2'), ('Tomasz', 'Solecki', '1', '1');

13. SELECT * FROM employee, address, position WHERE employee.id_position = position.id AND employee.id_address = address.id;

14. SELECT SUM(salary) FROM employee e JOIN position p ON e.id_position = p.id;

15. SELECT * FROM employee e JOIN address a ON e.id_address = a.id where ZIP_code = '14-200';

