# Project Management Database
> author: hoangtuanbaonguyen     
> [demo here!](https://www.google.com/)

1. [x] Define scope
2. [x] Define entities
3. [x] Visualize ERD
4. [ ] Optimiaztions
5. [ ] Limitations


## Scope    
The database of project management systems for organizations decreases operation fees and increases the process speed of projects, and it is comfortable with both methodologies, Agile and Scrum.

* accounts: This contains detailed information about users.
* projects: This contains the projects created by users.
* project-views: This contains visualization views of projects.
* Segments: This contains the segments of the project's life cycle.
* Tasks: This section contains the tasks that were created by the owners.
* Assignments: This contains the assignments that the owners assigned to users.
* task_comments: This contains the comments from users that they made on a specific task.
  
## Entities
The database includes the entities below:

#### accounts
The "account" table includes:
* id: The unique ID of a user is an integer, and it's a primary key.
* username: The unique username of a user is text.
* first_name: The first name of a user is text and not null.
* last_name: The last name of a user is text and not null.
* email: The unique email of a user is text and not null.
* mobile_number: The mobile phone number of a user is text and not null.
* type: The user's type is text and not null, It includes 'user' and 'admin'.
* updated_at: The updated_at time is a number and not null.
* created_at: The create_at time is a number and not null.
* is_active: The is_active is a number, it includes '0' and '1'.
  
#### projects
* id: The unique ID of a project is an integer, and it's a primary key.
* owner_id: The project owner ID of a project is an integer.
* sponsor_id: The sponsor ID is an integer, and it's not null.
* description: The description of a project is an integer.
* start_date: The start date of a project is a number, and it's not null.
* end_date: The end date of a project is a number, and it's not null.
* name: The name of a project is text, and it's not null.
* type: The type of a project is text, and it's not null, it includes 'private' and 'public'.
* is_active: The is_active is a number, it includes '0' and '1'.

#### project_views
* id: The ID of a project's view is an integer, and it's a primary key.
* project_id: The project ID is an integer, and it's not null.
* title: The title of a project's view is text, and it's not null.
* type: The type of a project's view is text, and it's not null and includes 'list' and 'calendar'.

#### segments
* id: The ID of a segment is an integer, and it's a primary key.
* project_id: The project ID of a segment is an integer, and it's not null.
* title: The title of a segment is text, and it's not null.
* description: The description of a segment is text.

#### tasks
* id: The task ID is an integer, and it's a primary key.
* segment_id: The task's segment ID is an integer, and it's not null.
* title: The title of a task is text, and it's not null.
* description: The description of a task is text.
* start_at: The start date of a task is a number, and it's not null.
* end_at: The end date of a task is a number, and it's not null.
* milestone: The milestone of a task is text.
* status: The status of a task is text, and it's not null, it includes 'todo', 'in progress', 'done'.
* updated_at: The updated at of a task is a number, and it's not null.
* is_active: The is_active is a number, it includes '0' and '1'.

#### task_comments
* id: The task comment ID is an integer, and it's a primary key.
* task_id: The task ID is an integer, and it's not null.
* account_id: The account ID is an integer, and it's not null.
* content: The content of a comment is text, and it's not null.
* comment_at: the comment date is a number, it's not null.

#### assignments
* id: The assignment ID is an integer, and it's a primary key.
* account_id: The account ID of an assignment is an integer, it's not null.
* task_id: The task ID of an assignment is an integer, it's not null.
* type: The type of an assignment is text, and it's not null that includes 'assignee' and 'reviewer'.
* assigned_at: the assignment date is a number, it's not null.

## Relationships
#### ERD Schema
<img src="/schema.png" alt="Database Project Management Schema" style="width: 800px; height: 600px;">

## Optimizations
## Limitations

**Happy Coding! 😸**
