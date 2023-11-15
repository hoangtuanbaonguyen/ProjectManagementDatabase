-- users are represented in the accounts table
INSERT INTO "accounts" ("username", "password", "first_name", "last_name", "email", "mobile_number") 
VALUES 
('admin', '123456', 'Tuan', 'Bao', 'tuanbao@123.com', '123456789'),
('user1', '123456', 'Tuan', 'Bao', 'tuanbao1@123.com', '123456789'),
('user2', '123456', 'Tuan', 'Bao', 'tuanbao2@123.com', '123456789'),
('user3', '123456', 'Tuan', 'Bao', 'tuanbao3@123.com', '123456789');

-- prjects are represented in the projects table
INSERT INTO "projects" ("owner_id", "sponsor_id", "description", "name")
VALUES 
(1, 1, 'Making the rivers in Thanh An to be pured!', 'GreenCup'),
(2, 1, 'Change phone-number prefix to new numbers using new fomular', 'Local Phone-number Evo');

-- projects' segments are represented in the segments table
INSERT INTO "segments" ("project_id", "title")
VALUES
(1, 'Initiation'),
(1, 'Planning'),
(1, 'Execution'),
(1, 'Closure'),
(2, 'Initiation'),
(2, 'Planning'),
(2, 'Execution'),
(2, 'Monitoring'),
(2, 'Closing');

-- tasks are represented in the tasks table
INSERT INTO "tasks" ("segment_id", "title", "start_at", "end_at")
VALUES
-- first project insertion
(1, 'Define the project scope and objectives.'),
(1, 'Identify key stakeholders (local communities, environmental organizations, government bodies).'),
(1, 'Conduct a feasibility study to assess the viability of the project.'),
(1, 'Obtain necessary permissions and approvals from relevant authorities.'),
(2, 'Develop a detailed project plan outlining tasks, timelines, and resources required.'),
(2, 'Create a budget for the project, including potential funding sources or grants.'),
(2, 'Form a project team and assign responsibilities.'),
(2, 'Establish communication channels with stakeholders.'),
(2, 'Identify potential risks and develop a risk management plan.'),
(2, 'Plan for monitoring and evaluation of the project's progress.'),
(3, 'Mobilize resources, including equipment and personnel.'),
(3, 'Conduct awareness campaigns to involve local citizens in the cleanup efforts.'),
(3, 'Implement the cleanup activities according to the project plan'),
(3, 'Regularly communicate with the project team and stakeholders to address any issues.')
(4, 'Evaluate the project's success against the initial objectives.'),
(4, 'Celebrate achievements and acknowledge the efforts of the project team and volunteers.'), 
(4, 'Document lessons learned for future reference.'), 
(4, 'Develop a maintenance plan to ensure the continued cleanliness of the rivers.'), 
(4, 'Communicate the project's outcomes to the community and stakeholders.'), 
-- the second project insertion
(5, 'Develop a detailed plan for implementing the prefix change.'),
(5, 'Collaborate with technical teams to ensure network compatibility with the new prefixes.'),
(5, 'Communicate the upcoming change to customers and provide necessary information.'),
(5, 'Create a customer support plan to address queries and issues during the transition.'),
(5, 'Develop a timeline for the prefix change and set milestones.'),
(7, 'Update network infrastructure to accommodate the new prefixes.'),
(7, 'mplement changes in a phased approach to minimize disruptions.'),
(7, 'Communicate regularly with customers through various channels about the progress.'),
(7, 'Monitor the network for any technical issues and address them promptly.'),
(7, 'Provide support to customers facing difficulties during the transition.'),
(6, 'Develop a detailed plan for implementing the prefix change.'),
(6, 'Collaborate with technical teams to ensure network compatibility with the new prefixes.'),
(6, 'Communicate the upcoming change to customers and provide necessary information.'),
(6, 'Create a customer support plan to address queries and issues during the transition.'),
(6, 'Develop a timeline for the prefix change and set milestones.'),
(8, 'Evaluate the success of the prefix change in terms of technical and customer satisfaction.'),
(8, 'Address any post-implementation issues and fine-tune the system if necessary.'),
(8, 'Update documentation and inform relevant stakeholders about the completion.'),
(8, 'Gather feedback from customers and use it for future improvements-- first project insertion
(1, 'Define the project scope and objectives.', CURRENT_TIMESTAMP, datetime(CURRENT_TIMESTAMP, '+1 day')),
(1, 'Identify key stakeholders (local communities, environmental organizations, government bodies.)', datetime(CURRENT_TIMESTAMP, '+1 day'), datetime(CURRENT_TIMESTAMP, '+2 days')),
(1, 'Conduct a feasibility study to assess the viability of the project.', datetime(CURRENT_TIMESTAMP, '+2 days'), datetime(CURRENT_TIMESTAMP, '+3 days')),
(1, 'Obtain necessary permissions and approvals from relevant authorities.', datetime(CURRENT_TIMESTAMP, '+3 days'), datetime(CURRENT_TIMESTAMP, '+4 days')),
(2, 'Develop a detailed project plan outlining tasks, timelines, and resources required.', datetime(CURRENT_TIMESTAMP, '+4 days'), datetime(CURRENT_TIMESTAMP, '+5 days')),
(2, 'Create a budget for the project, including potential funding sources or grants.', datetime(CURRENT_TIMESTAMP, '+5 days'), datetime(CURRENT_TIMESTAMP, '+6 days')),
(2, 'Form a project team and assign responsibilities.', datetime(CURRENT_TIMESTAMP, '+6 days'), datetime(CURRENT_TIMESTAMP, '+7 days')),
(2, 'Establish communication channels with stakeholders.', datetime(CURRENT_TIMESTAMP, '+7 days'), datetime(CURRENT_TIMESTAMP, '+8 days')),
(2, 'Identify potential risks and develop a risk management plan.', datetime(CURRENT_TIMESTAMP, '+8 days'), datetime(CURRENT_TIMESTAMP, '+9 days')),
(2, 'Plan for monitoring and evaluation of the project\'s progress.', datetime(CURRENT_TIMESTAMP, '+9 days'), datetime(CURRENT_TIMESTAMP, '+10 days')),
(3, 'Mobilize resources, including equipment and personnel.', datetime(CURRENT_TIMESTAMP, '+10 days'), datetime(CURRENT_TIMESTAMP, '+11 days')),
(3, 'Conduct awareness campaigns to involve local citizens in the cleanup efforts.', datetime(CURRENT_TIMESTAMP, '+11 days'), datetime(CURRENT_TIMESTAMP, '+12 days')),
(3, 'Implement the cleanup activities according to the project plan', datetime(CURRENT_TIMESTAMP, '+12 days'), datetime(CURRENT_TIMESTAMP, '+13 days')),
(3, 'Regularly communicate with the project team and stakeholders to address any issues.', datetime(CURRENT_TIMESTAMP, '+13 days'), datetime(CURRENT_TIMESTAMP, '+14 days')),
(4, 'Evaluate the project\'s success against the initial objectives.', datetime(CURRENT_TIMESTAMP, '+14 days'), datetime(CURRENT_TIMESTAMP, '+15 days')),
(4, 'Celebrate achievements and acknowledge the efforts of the project team and volunteers.', datetime(CURRENT_TIMESTAMP, '+15 days'), datetime(CURRENT_TIMESTAMP, '+16 days')), 
(4, 'Document lessons learned for future reference.', datetime(CURRENT_TIMESTAMP, '+16 days'), datetime(CURRENT_TIMESTAMP, '+17 days')), 
(4, 'Develop a maintenance plan to ensure the continued cleanliness of the rivers.', datetime(CURRENT_TIMESTAMP, '+17 days'), datetime(CURRENT_TIMESTAMP, '+18 days')), 
(4, 'Communicate the project\'s outcomes to the community and stakeholders.', datetime(CURRENT_TIMESTAMP, '+18 days'), datetime(CURRENT_TIMESTAMP, '+19 days')), 
-- the second project insertion
(5, 'Develop a detailed plan for implementing the prefix change.', datetime(CURRENT_TIMESTAMP, '+19 days'), datetime(CURRENT_TIMESTAMP, '+20 days')),
(5, 'Collaborate with technical teams to ensure network compatibility with the new prefixes.', datetime(CURRENT_TIMESTAMP, '+20 days'), datetime(CURRENT_TIMESTAMP, '+21 days')),
(5, 'Communicate the upcoming change to customers and provide necessary information.', datetime(CURRENT_TIMESTAMP, '+21 days'), datetime(CURRENT_TIMESTAMP, '+22 days')),
(5, 'Create a customer support plan to address queries and issues during the transition.', datetime(CURRENT_TIMESTAMP, '+22 days'), datetime(CURRENT_TIMESTAMP, '+23 days')),
(5, 'Develop a timeline for the prefix change and set milestones.', datetime(CURRENT_TIMESTAMP, '+23 days'), datetime(CURRENT_TIMESTAMP, '+24 days')),
(7, 'Update network infrastructure to accommodate the new prefixes.', datetime(CURRENT_TIMESTAMP, '+24 days'), datetime(CURRENT_TIMESTAMP, '+25 days')),
(7, 'Implement changes in a phased approach to minimize disruptions.', datetime(CURRENT_TIMESTAMP, '+25 days'), datetime(CURRENT_TIMESTAMP, '+26 days')),
(7, 'Communicate regularly with customers through various channels about the progress.', datetime(CURRENT_TIMESTAMP, '+26 days'), datetime(CURRENT_TIMESTAMP, '+27 days')),
(7, 'Monitor the network for any technical issues and address them promptly.', datetime(CURRENT_TIMESTAMP, '+27 days'), datetime(CURRENT_TIMESTAMP, '+28 days')),
(7, 'Provide support to customers facing difficulties during the transition.', datetime(CURRENT_TIMESTAMP, '+28 days'), datetime(CURRENT_TIMESTAMP, '+29 days')),
(6, 'Develop a detailed plan for implementing the prefix change.', datetime(CURRENT_TIMESTAMP, '+29 days'), datetime(CURRENT_TIMESTAMP, '+30 days')),
(6, 'Collaborate with technical teams to ensure network compatibility with the new prefixes.', datetime(CURRENT_TIMESTAMP, '+30 days'), datetime(CURRENT_TIMESTAMP, '+31 days')),
(6, 'Communicate the upcoming change to customers and provide necessary information.', datetime(CURRENT_TIMESTAMP, '+31 days'), datetime(CURRENT_TIMESTAMP, '+32 days')),
(6, 'Create a customer support plan to address queries and issues during the transition.', datetime(CURRENT_TIMESTAMP, '+32 days'), datetime(CURRENT_TIMESTAMP, '+33 days')),
(6, 'Develop a timeline for the prefix change and set milestones.', datetime(CURRENT_TIMESTAMP, '+33 days'), datetime(CURRENT_TIMESTAMP, '+34 days')),
(8, 'Evaluate the success of the prefix change in terms of technical and customer satisfaction.', datetime(CURRENT_TIMESTAMP, '+34 days'), datetime(CURRENT_TIMESTAMP, '+35 days')),
(8, 'Address any post-implementation issues and fine-tune the system if necessary.', datetime(CURRENT_TIMESTAMP, '+35 days'), datetime(CURRENT_TIMESTAMP, '+36 days')),
(8, 'Update documentation and inform relevant stakeholders about the completion.', datetime(CURRENT_TIMESTAMP, '+36 days'), datetime(CURRENT_TIMESTAMP, '+37 days')),
(8, 'Gather feedback from customers and use it for future improvements.', datetime(CURRENT_TIMESTAMP, '+37 days'), datetime(CURRENT_TIMESTAMP, '+38 days'));

