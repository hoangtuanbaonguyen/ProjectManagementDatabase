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
* id: Chỉ ra ID duy nhất của một công việc là một số nguyên, và thuộc tính này phải là khóa chính.
* segment_id: chỉ ra id của giai đoạn trong một dự án là một số nguyên, và thuộc tính không thể null.
* title: chỉ ra tiêu đề của của một công việc là một văn bản, và thuộc tính không thể null.
* description: chỉ ra mô tả của một công việc là một văn bản.
* start_at: chỉ ra ngày bắt đầu của một công việc là một số, và thuộc tính không thể null.
* end_at: chỉ ra ngày kết thúc của một công việc là một số, và thuộc tính không thể null.
* milestone: chỉ ra một cột mốc hoặc tên gọi của cột mốc là một văn bản.
* status: chỉ ra trạng thái của một công việc là một văn bản, thuộc tính không thể null và bao gồm 'todo', 'in progress', 'done'.
* updated_at: chỉ ra ngày sửa đổi gần nhất là một số, thuộc tính không thể null.
* is_active: chỉ ra công việc có active hay không là một số bao gồm 0 và 1.

#### task_comments
* id: Chỉ ra ID duy nhất của một comment trong một công việc cụ thể là một số nguyên, và thuộc tính này phải là khóa chính.
* task_id: chỉ ra id của một công việc là một số nguyên, và thuộc tính không thể null.
* account_id: chỉ ra id của một người dùng cụ thể là một số nguyên, và thuộc tính không thể null.
* content: chỉ ra nội dung của một bình luận là một văn bản, và thuộc tính không thể null.
* comment_at: chỉ ra thời gian bình luận là một số, và thuộc tính không thể null.

#### assignments
* id: Chỉ ra ID duy nhất của một phân việc là một số nguyên, và thuộc tính này phải là khóa chính.
* account_id: chỉ ra id của người dùng là một số nguyên, không thể null.
* task_id: chỉ ra id của một công việc là một số nguyên, không thể null.
* type: chỉ ra kiểu của một phân việc, và không thể null bao gồm 'assignee' và 'reviewer'.
* assigned_at: chỉ ra thời gian đã phân việc là một số, không thể null.

## Relationships
#### ERD Schema
<img src="/schema.png" alt="Database Project Management Schema" style="width: 800px; height: 600px;">

## Optimizations
## Limitations

**Happy Coding! 😸**
