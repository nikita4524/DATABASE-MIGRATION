
COMPANY : CODETECH IT SOLUTIONS

NAME : NIKITA PATIL

INTERN ID:CT04DF2460

DOMAIN: SQL

DURATION :4 WEEK

MENTOR : NEELA SANTOSH

# Database Migration Summary

## Overview

This document summarizes the migration of the placement database from MySQL to PostgreSQL.

---

## Tables Migrated

- Students  
- Companies  
- Job_Postings  
- Applications  

---

## Changes Made for PostgreSQL

1. **AUTO_INCREMENT → SERIAL**  
   - Replaced MySQL `INT PRIMARY KEY AUTO_INCREMENT` with PostgreSQL `SERIAL PRIMARY KEY`.

2. **Data Types**  
   - Data types like `VARCHAR` and `INT` remained the same and are compatible.

3. **Foreign Keys**  
   - Foreign key constraints syntax stayed consistent with minor adjustments handled automatically.

4. **Insert Statements**  
   - No changes required; inserts work identically in PostgreSQL.

---

## Verification

- Tables created successfully in PostgreSQL.
- Sample data inserted correctly.
- Verified data integrity with `SELECT COUNT(*)` and sample queries.
- Sample advanced queries (window functions, CTEs, subqueries) run without issues.

---

## Conclusion

Migration from MySQL to PostgreSQL completed with minimal changes, mainly around the `SERIAL` keyword for auto-increment columns. The database schema and sample data are now fully compatible with PostgreSQL.
