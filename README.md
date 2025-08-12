# -Library-Management-System-5


# Task 5 – SQL Joins (Inner, Left, Right, Full)

## Overview
This task demonstrates how to combine data from multiple tables using different SQL JOIN types, including INNER, LEFT, RIGHT, and FULL (simulated in MySQL using UNION).  
The queries are based on the Library Management System schema from Task 1.

## Tools Used
- MySQL Workbench / DB Browser for SQLite
- GitHub for version control


### SQL Features Demonstrated
1. **INNER JOIN** – Retrieves only matching records from both tables
2. **LEFT JOIN** – Retrieves all records from the left table and matches from the right
3. **RIGHT JOIN** – Retrieves all records from the right table and matches from the left
4. **FULL OUTER JOIN** – Retrieves all records from both tables (simulated in MySQL using UNION)
5. **Joins with multiple tables** – Combining 3 or more tables in one query
6. **LEFT JOIN with NULL handling** – Showing unmatched rows

### Queries Included
1. All books and their authors (INNER JOIN)
2. All books with authors (including books without authors) – LEFT JOIN
3. All authors with their books (including authors without books) – RIGHT JOIN
4. All books and authors, matched or not – FULL OUTER JOIN simulation
5. Books with their authors and categories – Multi-table INNER JOIN
6. Members with their issued books – LEFT JOIN to show members without issued books

### Files Included
- `joins.sql` – SQL script with JOIN queries
- `README.md` – This documentation

###  How to Use
1. Load the database schema from **Task 1** (`library_schema.sql`).
2. Insert sample data from **Task 2** (`task2_data.sql`).
3. Run `task5_joins.sql` to execute the queries.
4. Observe how different JOIN types affect the output.

## Key Learning Points
- **INNER JOIN** returns only rows with matching values in both tables.
- **LEFT JOIN** includes unmatched rows from the left table with NULLs for missing matches.
- **RIGHT JOIN** includes unmatched rows from the right table with NULLs for missing matches.
- **FULL OUTER JOIN** is not directly supported in MySQL and can be simulated with `UNION` of LEFT and RIGHT JOIN results.
- Multiple tables can be joined by chaining JOIN clauses.

