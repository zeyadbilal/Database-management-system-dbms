# Database Management System (DBMS) - Bash Shell Project


# Database Management System (DBMS)

A lightweight Database Management System built completely using Bash scripting on Linux.
This project simulates core DBMS functionalities such as creating databases, creating tables, inserting records, selecting data, updating records, and deleting data through an interactive command-line interface.

## Features

- Create and drop databases
- Connect to existing databases
- Create and drop tables
- Insert records into tables
- Select all records or specific fields
- Update table records
- Delete records from tables
- Input validation for:
  - Database names
  - Table names
  - Data types
  - Field values
- Interactive shell menus using Bash `select`
- Organized modular Bash scripts for each operation

---

## Technologies Used

- Bash Shell Scripting
- Linux File System
- awk
- sed
- grep
- Linux command-line utilities

---

## Project Structure

```bash
.
├── Welcome.sh
├── DBMenu.sh
├── QueryMenu.sh
├── SelectMenu.sh
├── CreateDB.sh
├── DropDB.sh
├── ConnectDB.sh
├── ListDB.sh
├── CreateTable.sh
├── DropTable.sh
├── ListTables.sh
├── InsertIntoTable.sh
├── SelectAll.sh
├── SelectFromTable.sh
├── Projection.sh
├── Selection.sh
├── updateTable.sh
├── Delete.sh
├── DatabaseValidation.sh
├── TableValidation.sh
├── FieldValidation.sh
└── dataTypeValidation.sh
```

---

## How It Works

### 1. Start the Application

Run the main script:

```bash
bash Welcome.sh
```

The system automatically creates a `~/DB` directory if it does not already exist.

---

## Main Menu Operations

### Database Operations

- Create Database
- Connect to Database
- List Databases
- Drop Database

### Table Operations

- Create Table
- List Tables
- Drop Table
- Insert Into Table
- Select From Table
- Update Records
- Delete Records

---

## Validation System

The project includes validation modules to ensure:

- Correct database naming conventions
- Correct table naming conventions
- Valid data types
- Proper field input validation

This helps prevent invalid data entry and improves system reliability.

---

## Example Workflow

1. Create a database
2. Connect to the database
3. Create a table with fields and data types
4. Insert records
5. Query records using selection or projection
6. Update or delete records

---

## Learning Outcomes

Through this project, the following concepts were practiced:

- Linux shell scripting
- File-based database simulation
- Data validation techniques
- Menu-driven CLI applications
- Modular scripting architecture
- Text processing using Linux utilities

---

## Authors

- Zeyad Bilal
- Abdelaziz Hassan



