USE taskmanager;

INSERT INTO user_account (name, email, password) VALUES
('Paulo Henrique', 'paulo@email.com', '123456'),
('Maria Silva', 'maria@email.com', '123456'),
('Joao Santos', 'joao@email.com', '123456');

INSERT INTO project (id_user, name, description) VALUES
(1, 'Task Manager', 'Personal task management system.'),
(1, 'Java Studies', 'Projects created while learning Java.'),
(2, 'College', 'College assignments and exams.'),
(2, 'Travel Planner', 'Travel planning and organization.'),
(3, 'Work', 'Professional activities and deadlines.');

INSERT INTO task
(id_project, title, description, priority, status, due_date)
VALUES
(1, 'Create Database', 'Design the MySQL database.', 'HIGH', 'COMPLETED', '2026-08-10 18:00:00'),
(1, 'Implement Login', 'Develop user authentication.', 'HIGH', 'IN_PROGRESS', '2026-08-15 18:00:00'),
(1, 'Create REST API', 'Implement CRUD endpoints.', 'MEDIUM', 'PENDING', '2026-08-20 18:00:00'),
(2, 'Study JDBC', 'Practice database connections.', 'HIGH', 'IN_PROGRESS', '2026-08-05 20:00:00'),
(2, 'Study Collections', 'Review Java Collections Framework.', 'LOW', 'PENDING', '2026-08-07 20:00:00'),
(3, 'Database Assignment', 'Finish the database modeling assignment.', 'HIGH', 'PENDING', '2026-08-12 23:59:00'),
(3, 'Prepare Presentation', 'Prepare slides for the software engineering class.', 'MEDIUM', 'COMPLETED', '2026-08-08 18:00:00'),
(4, 'Book Hotel', 'Reserve hotel for the vacation.', 'MEDIUM', 'PENDING', '2026-09-01 12:00:00'),
(4, 'Buy Tickets', 'Purchase airline tickets.', 'HIGH', 'IN_PROGRESS', '2026-08-18 12:00:00'),
(5, 'Deploy Application', 'Deploy the new version to production.', 'HIGH', 'PENDING', '2026-08-25 17:00:00'),
(5, 'Write Documentation', 'Document the REST API.', 'LOW', 'PENDING', '2026-08-28 17:00:00');
