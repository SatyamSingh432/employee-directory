function editEmployee(id) {
  alert("Edit clicked for ID: " + id);
}

function deleteEmployee(id) {
  const card = document.querySelector(`[data-id="${id}"]`);
  if (card) card.remove();
}

const searchInput = document.getElementById("searchInput");
if (searchInput) {
  searchInput.addEventListener("input", function () {
    const search = this.value.toLowerCase();
    document.querySelectorAll(".employee-card").forEach((card) => {
      card.style.display = card.innerText.toLowerCase().includes(search)
        ? "block"
        : "none";
    });
  });
}

const addBtn = document.getElementById("addEmployeeBtn");
const modal = document.getElementById("addEmployeeModal");
const cancelBtn = document.getElementById("cancelBtn");
if (addBtn && modal && cancelBtn) {
  addBtn.addEventListener("click", () => {
    modal.classList.remove("hidden");
  });

  cancelBtn.addEventListener("click", () => {
    modal.classList.add("hidden");
  });
}

document.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("addEmployeeForm");
  const modal = document.getElementById("addEmployeeModal");
  const employeeContainer = document.querySelector(".employee-container");

  form?.addEventListener("submit", (e) => {
    e.preventDefault();
    console.log("ewe");
    const data = new FormData(form);

    const firstName = data.get("firstName").trim();
    const lastName = data.get("lastName").trim();
    const email = data.get("email").trim();
    const department = data.get("department");
    const role = data.get("role");

    if (!firstName || !lastName || !email || !department || !role) {
      alert("All fields are required.");
      return;
    }

    const id = Date.now();

    const card = document.createElement("div");
    card.className = "employee-card";
    card.setAttribute("data-id", id);
    card.innerHTML = `
      <strong>${firstName} ${lastName}</strong>
      <p><strong>Email:</strong> ${email}</p>
      <p><strong>Department:</strong> ${department}</p>
      <p><strong>Role:</strong> ${role}</p>
      <div class="card-buttons">
        <button onclick="editEmployee(${id})">Edit</button>
        <button onclick="deleteEmployee(${id})">Delete</button>
      </div>
    `;

    employeeContainer.appendChild(card);
    form.reset();
    modal.classList.add("hidden");
  });
});

const filterName = document.getElementById("filterName");
const filterDept = document.getElementById("filterDept");
const filterRole = document.getElementById("filterRole");
const applyBtn = document.getElementById("applyFilterBtn");
const resetBtn = document.getElementById("resetFilterBtn");

applyBtn.addEventListener("click", () => {
  const nameVal = filterName.value.toLowerCase();
  const deptVal = filterDept.value.toLowerCase();
  const roleVal = filterRole.value.toLowerCase();

  document.querySelectorAll(".employee-card").forEach((card) => {
    const text = card.innerText.toLowerCase();
    const match =
      (!nameVal || text.includes(nameVal)) &&
      (!deptVal || text.includes(deptVal)) &&
      (!roleVal || text.includes(roleVal));

    card.style.display = match ? "block" : "none";
  });
});

resetBtn.addEventListener("click", () => {
  filterName.value = "";
  filterDept.value = "";
  filterRole.value = "";

  document.querySelectorAll(".employee-card").forEach((card) => {
    card.style.display = "block";
  });
});

const filterSidebar = document.getElementById("filterSidebar");
const filterBtn = document.getElementById("filterBtn");
const closeFilterBtn = document.getElementById("closeFilterBtn");

filterBtn?.addEventListener("click", () => {
  filterSidebar.classList.remove("hidden");
});

closeFilterBtn?.addEventListener("click", () => {
  filterSidebar.classList.add("hidden");
});
