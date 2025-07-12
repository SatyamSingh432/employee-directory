<!DOCTYPE html>
<html>
<head>
  <title>Employee Directory</title>
  <link rel="stylesheet" href="./static/css/style.css">
</head>
<body>
  <header class="header">
    <h1>Employee Directory</h1>
    <div class="search-filter">
      <input type="text" placeholder="Search by name or email" id="searchInput">
      <button id="filterBtn">Filter</button>
    </div>
  </header>

  <div class="controls">
    <div class="left-controls">
      <label>Sort:</label>
      <select id="sortSelect">
        <option value="">--Select--</option>
        <option value="firstName">First Name</option>
        <option value="department">Department</option>
      </select>

      <label>Show:</label>
      <select id="showCount">
        <option>10</option>
        <option>25</option>
        <option>50</option>
        <option>100</option>
      </select>
    </div>
    <button class="add-btn">Add Employee</button>
  </div>

  <div class="employee-container">
    <#list employees as emp>
      <div class="employee-card" data-id="${emp.id}">
        <strong>${emp.firstName} ${emp.lastName}</strong>
        <p><strong>Email:</strong> ${emp.email}</p>
        <p><strong>Department:</strong> ${emp.department}</p>
        <p><strong>Role:</strong> ${emp.role}</p>
        <div class="card-buttons">
          <button onclick="editEmployee(${emp.id})">Edit</button>
          <button onclick="deleteEmployee(${emp.id})">Delete</button>
        </div>
      </div>
    </#list>
  </div>

  <footer class="footer">
    © 2025 Employee Directory App. All rights reserved.
  </footer>

  <script src="./static/js/app.js"></script>
</body>
</html>
