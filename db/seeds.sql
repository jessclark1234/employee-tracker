INSERT INTO departments (department_name)
VALUES ("Owner"),
        ("President"),
        ("Foreman"),
        ("Machinist"),
        ("Machinist Apprentice");

INSERT INTO roles (title, salary, department_id)
VALUES ("Owner"),
        ("President"),
        ("Foreman"),
        ("Machinist"),
        ("Machinist Apprentice");

INSERT INTO employees (first_name, last_name, manager_id)
VALUES ("John", "Smith", 1),
        ("Ron", "James", 1),
        ("Jon", "Hansen", 2),
        ("Rob", "Johnson", 3),
        ("Brandon", "Banes", 3);
        ("Charlie", "Bush", 3);
        ("Steve", "Jones", 3);