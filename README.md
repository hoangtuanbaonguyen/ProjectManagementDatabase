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
* username: chỉ ra tên tài khoản duy nhất của người dùng là một văn bản, và thuộc tính này phải là duy nhất.
* first_name: chỉ ra rằng họ của người dùng là một văn bản, và không thể null.
* last_name: chỉ ra rằng tên của người dùng là một văn bản, và không thể null.
* email: chỉ ra Email của người dùng là một văn bản và không thể null.
* mobile_number: Chỉ ra số điện thoại của người dùng là một văn bản.
* type: Chỉ ra kiểu người dùng của người dùng là văn bản, và nó bao gồm user và admin.
* updated_at: chỉ ra lần cuối mà người dùng chỉnh sửa thông tin của tài khoản.
* created_at: chỉ ra ngày mà người dụng tạo tài khoản là một số.
* is_active: chỉ ra người dùng có active hay không là một số bao gồm 0 và 1.
  
#### projects
* id: Chỉ ra ID duy nhất của một dự án là một số nguyên, và thuộc tính này phải là khóa chính.
* owner_id: chỉ ra id của người quản lý dự án là một một số nguyên và không thể null.
* sponsor_id: chỉ ra id của người chịu trách nhiệm cho dự án là một số nguyên và không thể null.
* description: chỉ ra nội dung chi tiết của một dự án là một văn bản và có thể null.
* start_date: chỉ ra ngày bắt đầu của một dự án là một số và không thể null.
* end_date: chỉ ra ngày kết thúc của một dự án và có thể null.
* name: chỉ tên của một dự án là một văn bản và không thể null.
* type: chỉ ra kiểu của một dự án là một văn bản, không thể null và bao gồm private và public.
* is_active: chỉ ra dự án có active hay không là một số bao gồm 0 và 1.

#### project_views
* id: Chỉ ra ID duy nhất của một khung nhìn trong dự án là một số nguyên, và thuộc tính này phải là khóa chính.
* project_id: chỉ ra id của dự án là một số nguyên, thuộc tính không thể null.
* title: chỉ ra tiêu đề của một khung nhìn là một văn bản và không thể null.
* type: chỉ ra kiểu của một khung nhìn là một văn bản, không thể null và bao gồm 'list' và 'calendar'.

#### segments
* id: Chỉ ra ID duy nhất của một giai đoạn là một số nguyên, và thuộc tính này phải là khóa chính.
* project_id: chỉ ra id của giai đoạn là một số nguyên, và thuộc tính không thể null.
* title: chỉ ra tiêu đề của một giai đoạn là một văn bản, và thuộc tính không thể null.
* description: chỉ ra mô tả của một giai đoạn là một văn bản.

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
