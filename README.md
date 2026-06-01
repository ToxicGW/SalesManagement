# 🍲 Multi-National Food Distribution & Logistics Database System


An enterprise-grade, relational MySQL database architecture designed to manage a complex multi-national restaurant supply chain and distribution system. The schema handles global sales workflows, multi-tier supply chain logistics, customer accounts, order processing and employee evaluation matrices.

<img width="1082" height="579" alt="erd_diagram" src="https://github.com/user-attachments/assets/ee5be614-4520-43d3-95e4-ca66106beae3" />

## 📊 Database Schema Architecture (ERD Breakdown)
The relational system maps 7 core data entities designed to maintain data integrity and strict operational workflows
:

*   **Customers:** Manages multi-national client data with independent localization attributes (`city`, `country`, `postal_code`).
*   **Orders / OrderDetails:** A split-table architecture separating transactional metadata (`order_datetime`, `shipper_id`, `emp_id`) from linear order line-items (`sales_id`, `amount`, `discount`) to prevent redundant tables.
*   **Employees:** Tracks human resource operations including performance data through an evaluation loop (`Evaluate` relation) and organizational roles.
*   **Shippers:** Handles logistics routing by binding shipping companies directly to order processing metrics.
*   **Items & Categories:** Manages a modular product ecosystem tracking categorical hierarchies, individual sales item variables, pricing structures, and vendor supply paths.
*   **Suppliers:** Handles wholesale logistics tracking corporate communication pipelines and composite address schemas.


## 🛠️ Design Patterns & Relational Integrity
*   **Normalization:** Designed according to Third Normal Form (3NF) principles to remove transitive dependencies and storage anomalies.
*   **Cardinality Rules:** Implemented precise One-to-Many (`1:N`) and Many-to-Many (`M:N`) mappings using standardized Crow's Foot notation mapping points.
*   **Data Integrity Constraints:** Structured around strong Referencing Rules utilizing Primary Keys (`PK`) and Foreign Keys (`FK`) to handle cascading updates and data consistency during writes.


## 🚀 SQL Core Features Implemented

### 1. Data Definition Language (DDL) - `schema.sql`
Contains full structural DDL setup parameters enforcing data boundaries, data constraints and relationship rules (`CREATE TABLE`, `ALTER TABLE`).

### 2. Data Manipulation Language (DML) - `seed_data.sql`
Handles the population and seeding of relational mock data representing global inventory pipelines using strict DML syntax architectures (`INSERT INTO`).

### 3. Data Query Language (DQL) - `queries.sql`
Demonstrates multi-table analytical retrieval layers using high-performance DQL algorithms with conditional filters, aggregate calculations and joins (`SELECT`, `INNER JOIN`).


## 📁 Repository Structure
*   `schema.sql` - Structural database setup, data constraints and relational engine declarations.
*   `seed_data.sql` - Pre-configured relational mock data representing global inventory pipelines.
*   `queries.sql` - Operational transaction scripts demonstrating multi-table `JOIN` processes, subqueries and analytical data grouping.
*   `erd_diagram.png` - Entity-Relationship diagram outlining system schemas and foreign constraints.
