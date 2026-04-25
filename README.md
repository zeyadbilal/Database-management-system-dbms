# 🗄️ Bash-Based Database Management System (DBMS)

<div align="center">

![Bash](https://img.shields.io/badge/Shell-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Platform-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

**A fully functional, interactive Database Management System built entirely in Bash.**  
Manage databases and tables directly from your terminal — no external DBMS required.

[Features](#-features) · [Installation](#-installation) · [Usage](#-usage) · [Project Structure](#-project-structure) · [Authors](#-authors)

</div>

---

## 📖 Overview

This project is a **command-line DBMS** implemented in pure Bash scripting. It simulates core relational database operations — including creating databases and tables, inserting records, querying with selection and projection, updating, and deleting — all stored as plain files on the filesystem.

Data is persisted using the filesystem itself:
- Each **database** is a directory under `~/DB/`
- Each **table** is a colon-delimited flat file
- Each table's **schema** is stored in a corresponding `.meta` file

This project was built as a practical exercise in Bash scripting, demonstrating control flow, input validation, file I/O, and menu-driven CLI design.

---

## ✨ Features

### 🏦 Database Operations
| Operation | Description |
|-----------|-------------|
| **Create Database** | Creates a new named directory under `~/DB/` |
| **Connect to Database** | Navigates into a database to perform table operations |
| **List Databases** | Displays all existing databases in a formatted table |
| **Drop Database** | Permanently deletes a database and all its tables |

### 📋 Table Operations
| Operation | Description |
|-----------|-------------|
| **Create Table** | Defines a table with custom fields, types, and a primary key |
| **Drop Table** | Removes a table and its metadata from the active database |
| **List Tables** | Displays all tables in the current database |

### 🔍 Query Operations
| Operation | Description |
|-----------|-------------|
| **Select All** | Retrieves and displays all records in a table |
| **Selection (WHERE)** | Filters rows by matching a field value |
| **Projection** | Retrieves only specified columns from a table |
| **Insert** | Inserts one or more records with primary key uniqueness enforcement |
| **Update** | Modifies field values for records matching a WHERE condition |
| **Delete** | Removes all records or specific records by field value |

---

## 📁 Project Structure

```
Database-management-system-dbms-main/
│
├── Welcome.sh              # Entry point — splash screen and main launch
├── DBMenu.sh               # Top-level database operations menu
├── QueryMenu.sh            # Table-level operations menu (inside a database)
├── SelectMenu.sh           # Sub-menu for SELECT operations
│
├── CreateDB.sh             # Creates a new database (directory)
├── ConnectDB.sh            # Connects to an existing database
├── ListDB.sh               # Lists all available databases
├── DropDB.sh               # Deletes a database and all its contents
│
├── CreateTable.sh          # Interactively defines and creates a table
├── DropTable.sh            # Drops a specific table from the DB
├── DrobTable.sh            # (Alternate drop table script)
├── ListTables.sh           # Lists all tables in the connected DB
│
├── InsertIntoTable.sh      # Inserts records into a table
├── SelectFromTable.sh      # Entry for SELECT operations on a table
├── SelectAll.sh            # Retrieves all rows and displays formatted output
├── Selection.sh            # WHERE-clause row filtering
├── Projection.sh           # Column-selective retrieval
├── updateTable.sh          # Updates records matching a condition
├── Delete.sh               # Deletes all or specific records
│
├── DatabaseValidation.sh   # Validates database name format and existence
├── TableValidation.sh      # Validates table name format and existence
├── FieldValidation.sh      # Validates field name format and existence in schema
└── dataTypeValidation.sh   # Validates input against field's declared data type
```

---

## 🚀 Installation

### Prerequisites
- A Unix/Linux environment
- Bash `4.0+` (uses `select`, `extglob`, `shopt`)
- Standard GNU tools: `awk`, `cut`, `grep`, `column`, `sort`, `uniq`

> ✅ These are available by default on most Linux distributions and macOS.

### Setup

**1. Clone the repository:**
```bash
git clone https://github.com/zeyadbilal/Database-management-system-dbms.git
cd Database-management-system-dbms
```

**2. Make all scripts executable:**
```bash
chmod +x *.sh
```

**3. Launch the DBMS:**
```bash
bash Welcome.sh
```

---

## 🖥️ Usage

### Launching the System

```bash
bash Welcome.sh
```

You will be greeted with:

```
╔══════════════════════════════════════════════════════════════════╗
║                   WELCOME TO OUR DBMS PROJECT                    ║
║                  Manage Your Data Efficiently!                   ║
╚══════════════════════════════════════════════════════════════════╝

1) Enter to DBMS system
2) Exit
===> Enter your choice number:
```

---

### Database Menu

After entering the system, you are presented with the **Database Menu**:

```
1) CreateDB
2) ConnectDB
3) ListDB
4) DropDB
5) Exit
```

---

### Query Menu (Inside a Database)

Once connected to a database, you can manage its tables:

```
1) Create-Table
2) Drop-Table
3) Insert-Into-Table
4) List-Tables
5) Select-From-Table
6) Delete-From-Table
7) Update-Table
8) Exit
```

---

### Select Menu

When selecting from a table:

```
1) Select-All
2) Selection       ← Filter rows by field value (WHERE clause)
3) Projection      ← Choose specific columns to display
4) Exit
```

---

### Example Workflow

```bash
# 1. Launch the DBMS
bash Welcome.sh

# 2. Create a database named "university"
# → Choose: CreateDB → Enter: university

# 3. Connect to "university"
# → Choose: ConnectDB → Enter: university

# 4. Create a table "students" with fields: id (Int), name (String), grade (String)
# → Choose: Create-Table → Follow prompts

# 5. Insert a record
# → Choose: Insert-Into-Table → Enter values per field

# 6. Query all records
# → Choose: Select-From-Table → Select-All

# 7. Filter by grade
# → Choose: Select-From-Table → Selection → Field: grade → Value: A

# 8. Update a student's grade
# → Choose: Update-Table → Field: id → Where: 1 → Set grade: A+
```

---

## 🔐 Validation System

The DBMS includes a multi-layer validation system to prevent invalid operations:

### Name Validation (`DatabaseValidation.sh`, `TableValidation.sh`, `FieldValidation.sh`)
- Names must **start with a letter** (`A-Z`, `a-z`)
- Allowed characters: letters, digits (`0-9`), underscore `_`, hyphen `-`
- Special characters are **rejected with a clear error message**
- Duplicate creation is **blocked** (e.g., can't create a DB that already exists)
- Invalid references are **blocked** (e.g., can't connect to a non-existent DB)

### Data Type Validation (`dataTypeValidation.sh`)
- Fields declared as `Int` only accept numeric values
- Fields declared as `String` accept alphanumeric values (no special characters)

### Primary Key Enforcement
- The **first field** of every table is automatically designated as the **Primary Key**
- Uniqueness is checked on every insert
- Updating a primary key field for **multiple matching rows is disallowed**

---

## 🗂️ Data Storage Format

### Database Storage
Each database is stored as a folder:
```
~/DB/
├── university/
│   ├── students
│   ├── students.meta
│   ├── courses
│   └── courses.meta
└── company/
    ├── employees
    └── employees.meta
```

### Table File Format
Records are stored as **colon-separated values**:
```
# students (data file)
1:Alice:A
2:Bob:B
3:Charlie:A+
```

### Metadata File Format
The schema is stored in the corresponding `.meta` file:
```
# students.meta
id:Int
name:String
grade:String
```

---

## ⚙️ Technical Details

| Aspect | Detail |
|--------|--------|
| **Language** | Bash (Shell Script) |
| **Data Storage** | Filesystem (directories + flat files) |
| **Record Delimiter** | Colon (`:`) |
| **Schema Storage** | `.meta` files (field:type pairs) |
| **Primary Key** | First defined field — uniqueness enforced at insert |
| **Supported Data Types** | `Int`, `String` |
| **Menu System** | Bash `select` built-in |
| **Pattern Matching** | `extglob` patterns via `shopt -s extglob` |
| **Text Processing** | `awk`, `cut`, `grep`, `column`, `sort`, `uniq` |
| **Scripting Style** | Modular — each operation is a separate `.sh` file, sourced as needed |

---

## 👥 Authors

| Name | Role |
|------|------|
| **Zeyad Bilal** | Co-Developer |
| **Abdelaziz Hassan** | Co-Developer |

> Created: August 15, 2025

---

## 📬 Contributing

Contributions, issues, and feature requests are welcome!

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — feel free to use, modify, and distribute it with attribution.

---

<div align="center">
Made with ❤️ using pure Bash
</div>
