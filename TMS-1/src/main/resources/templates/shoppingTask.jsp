<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
           	max-width: 1700px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        form {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 5px 10px;
            margin: 5px 0;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div style="padding-top:30px;">
    <div class="container">
        <h1><a href="/home">Task Management System</a></h1>
        <h2>Shopping Tasks</h2>
       
               
            <div class="row">
                <div class="col-md-4">
                    <select id="filterSelect" class="form-control">
                        <option value="">Filter by Status</option>
                        <option value="TODO">TODO</option>
                        <option value="In Progress">In Progress</option>
                        <option value="Done">Done</option>
                        <!-- Add more options for other criteria if needed -->
                    </select>
                </div>
                
                <div class="col-md-4">
                    <div class="row">
                        <div class="col">  <a href="/work" class="btn btn-primary btn-block mb-2">Work</a> </div>
                        <div class="col"> <a href="/personal" class="btn btn-secondary btn-block mb-2">Personal</a> </div>
                        <div class="col"> <a href="/shopping" class="btn btn-success btn-block">Shopping</a> </div>
                    </div>
                </div>


                <div class="col-md-4">
                    <input type="text" id="searchInput" class="form-control" placeholder="Search by Title">
                </div>
            </div>
        

                <div style="padding-left: 80%;padding-bottom: 2%;padding-top: 2%;">
                    <a  class="btn btn-primary" href="/createPage">Create a New Task</a>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Due Date</th>
                            <th>Priority</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody id="tableBody">
                        <!-- Tasks will be listed here dynamically -->
                        <tr th:each="task : ${task}">
                            <td th:text="${task.id}"></td>
                            <td th:text="${task.title}"></td>
                            <td th:text="${task.description}"></td>
                            <td th:text="${task.duedate}"></td>
                            <td th:text="${task.priority}"></td>
                            <td th:text="${task.status}"></td>
                            <td> <a th:href="@{/edit/{id}(id=${task.id})}" class="btn btn-primary">Edit</a> | <a th:href="@{/delete/{id}(id=${task.id})}" class="btn btn-danger">Delete</a> </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // Filter function
        function filterTable() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("tableBody");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[1]; // Change index to the column you want to filter
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }

     // Filter by select dropdown
     document.getElementById("filterSelect").addEventListener("change", function() {
            var filterValue = this.value.toUpperCase();
            var table = document.getElementById("tableBody");
            var tr = table.getElementsByTagName("tr");
            for (var i = 0; i < tr.length; i++) {
                var td = tr[i].getElementsByTagName("td")[5]; // Change index to the column you want to filter
                if (td) {
                    var txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filterValue) > -1 || filterValue === "") {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        });

        // Add event listener for input
        document.getElementById("searchInput").addEventListener("keyup", filterTable);
    </script>

</body>
</html>
