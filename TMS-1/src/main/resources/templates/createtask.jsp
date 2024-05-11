<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create New Task</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container{
            padding-top: 100px;
        }

        h1{
            text-align: center;
            color: black;
            text-decoration: underline 4px solid lightgreen;
        }
        h2 {
            text-align: center;
            text-decoration: underline 4px solid lightgreen;
            padding-bottom: 5px;
        }

        a{
            font-family: cursive;
            color: black;
        }


    </style>
</head>
<body>
    <div class="container">
        <h1><a href="/home">Task Management System</a></h1>
        <form action="/createTask" th:object="${tasks}" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" class="form-control" id="title" th:field="${tasks.title}" name="title" required>
            </div>

            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" th:field="${tasks.description}" rows="4" cols="50"></textarea>
            </div>

            <div class="form-group">
                <label for="duedate">Due Date:</label>
                <input type="date" class="form-control" id="duedate" name="duedate" th:field="${tasks.duedate}" required>
            </div>

            <div class="form-group">
                <label for="priority">Priority:</label>
                <select class="form-control" id="priority" name="priority" th:field="${tasks.priority}">
                    <option value="LOW">Low</option>
                    <option value="MEDIUM">Medium</option>
                    <option value="HIGH">High</option>
                </select>
            </div>


            <div class="form-group">
                <label for="type">Task Type:</label>
                <select class="form-control" id="priority" name="priority" th:field="${tasks.type}">
                    <option value="Work">Work</option>
                    <option value="Personal">Personal</option>
                    <option value="Shopping">Shopping</option>
                </select>
            </div>


            <div class="form-group">
                <label for="status">Status:</label>
                <select class="form-control" id="status" name="status" th:field="${tasks.status}">
                    <option value="TODO">To Do</option>
                    <option value="IN_PROGRESS">In Progress</option>
                    <option value="DONE">Done</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Create Task</button>
            <!-- Add a Cancel button -->
            <a href="/home" class="btn btn-secondary">Cancel</a>
        </form>
    </div>

    <!-- Add Bootstrap JS (optional, only required if you're using Bootstrap JavaScript components) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
