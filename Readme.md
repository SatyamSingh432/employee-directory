Employee Directory

A responsive Employee Directory web application built using HTML, CSS, JavaScript, and FreeMarker templates.

Features

- View employee list
- Add, delete employee cards
- Search by name or email
- Filter by name, department, and role
- Fully responsive layout

---

Folder Structure

```bash
EMPLOYEE-DIRECTORY/
├── static/
│ ├── css/
│ │ └── style.css → CSS styles
│ └── js/
│ └── app.js → JavaScript logic
├── templates/
│ └── dashboard.ftl → FreeMarker template file
├── freemarker-2.3.31.jar → FreeMarker Java library
├── Main.java → Java program to render the template
├── Main.class → Compiled Java class
├── index.html → Rendered HTML file (output)
├── .gitignore → Git ignored files
└── README.md → This file
```

---

Setup Instructions

1. Make sure Java is installed

2.Download FreeMarker JAR

```bash
curl -O https://repo1.maven.org/maven2/org/freemarker/freemarker/2.3.31/freemarker-2.3.31.jar

```

3. Compile and Run

Compile Java file

```bash
javac -cp ".:freemarker-2.3.31.jar" Main.java

```

Run the program

```bash
java -cp ".:freemarker-2.3.31.jar" Main

```

4. View in Browser
   After running the program, an index.html file will be generated.
   Open index.html in any browser to see the Employee Directory dashboard

---

Screenshot
<img width="1437" height="688" alt="Screenshot 2025-07-13 at 10 17 34 PM" src="https://github.com/user-attachments/assets/36d13ec4-f7ca-4797-8498-47adf1ffa7a5" />
<img width="1423" height="636" alt="Screenshot 2025-07-13 at 10 18 17 PM" src="https://github.com/user-attachments/assets/6d7c1a3a-37cb-42ea-be10-9a02757e1408" />
<img width="1440" height="686" alt="Screenshot 2025-07-13 at 10 18 46 PM" src="https://github.com/user-attachments/assets/e846cce9-96b2-4355-886d-916da85c8bf9" />


---

Author
Satyam Rajput
