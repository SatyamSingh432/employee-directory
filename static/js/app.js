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
