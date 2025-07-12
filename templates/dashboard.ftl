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
    <button id="addEmployeeBtn"  class="add-btn">Add Employee</button>
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

  
<div id="addEmployeeModal" class="modal hidden">
  <div class="modal-content">
    <h2>Add Employee</h2>
    <form id="addEmployeeForm">
      <label>First name</label>
      <input type="text" name="firstName" required />

      <label>Last name</label>
      <input type="text" name="lastName" required />

      <label>Email</label>
      <input type="email" name="email" required />

      <label>Department</label>
      <select name="department" required>
        <option value="">Select</option>
        <option value="HR">HR</option>
        <option value="IT">IT</option>
        <option value="Finance">Finance</option>
      </select>

      <label>Role</label>
      <select name="role" required>
        <option value="">Select</option>
        <option value="Manager">Manager</option>
        <option value="Developer">Developer</option>
        <option value="Analyst">Analyst</option>
      </select>

      <div class="modal-actions">
        <button type="button" id="cancelBtn">Cancel</button>
        <button type="submit">Add</button>
      </div>
    </form>
  </div>
</div>

<div id="filterSidebar" class="filter-sidebar hidden">
  <h3>Filter Employees</h3>

  <label for="filterName">First Name:</label>
  <input type="text" id="filterName" />

  <label for="filterDept">Department:</label>
  <input type="text" id="filterDept" />

  <label for="filterRole">Role:</label>
  <input type="text" id="filterRole" />

  <div class="filter-actions">
    <button id="applyFilterBtn">Apply</button>
    <button id="resetFilterBtn">Reset</button>
    <button id="closeFilterBtn">Close</button>
  </div>
</div>



  <script src="./static/js/app.js"></script>
</body>
</html>
