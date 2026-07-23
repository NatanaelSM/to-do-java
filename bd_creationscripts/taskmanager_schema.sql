CREATE DATABASE IF NOT EXISTS taskmanager;
USE taskmanager;

CREATE TABLE user_account(
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE project(
    id INT AUTO_INCREMENT,
    id_user INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,

    PRIMARY KEY (id),
    FOREIGN KEY (id_user) REFERENCES user_account(id),
    UNIQUE (id_user, name)
);

CREATE TABLE task(
    id INT AUTO_INCREMENT,
    id_project INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    priority ENUM('LOW', 'MEDIUM', 'HIGH') NOT NULL,
    status ENUM('PENDING', 'IN_PROGRESS', 'COMPLETED') NOT NULL DEFAULT 'PENDING',
    creation_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    due_date DATETIME NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (id_project) REFERENCES project(id),
    UNIQUE (id_project, title)
);
