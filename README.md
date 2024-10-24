# Teacher Portal

This project is a teacher portal built with Ruby on Rails, HTML, CSS, and JavaScript. Teachers can manage student records, including adding new students, updating existing records, and deleting students.

## Features

- User authentication for teachers.
- Student listing with options to edit, delete, and add new students.
- Inline editing of student details.
- Validation for duplicate student names and subjects.

## Prerequisites

Make sure you have the following installed:

- Ruby (with RVM installed)
- Ruby on Rails
- PostgreSQL (or your preferred database)
- Bundler

## Installation

Follow these steps to set up the project locally:

### 1. Clone the repository

```bash
git clone https://github.com/sudhanshu-17/teacher_portal.git
cd teacher-portal
```

### 2. Use the correct Ruby version

Ensure you're using the correct Ruby version by running:

```bash
rvm use
```

### 3. Install dependencies

Run `bundle install` to install all the required gems:

```bash
bundle install
```

### 4. Set up the database

First, migrate the database:

```bash
rake db:migrate
```

(Optional) Seed the database with default data:

```bash
rake db:seed
```

### 5. Start the Rails server

Finally, start the Rails server:

```bash
rails s
```

Now, you can visit `http://localhost:3000` in your browser to access the teacher portal.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---
