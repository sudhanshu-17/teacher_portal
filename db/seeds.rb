# Seed data for Teachers
Teacher.create!(
  [
    { username: 'admin_user', email: 'admin_user@gmail.com', password: '123456', password_confirmation: '123456' },
    { username: 'teacher_1', email: 'teacher_1@gmail.com', password: '123456', password_confirmation: '123456' }
  ]
)

# Seed data for Students
students = [
  { name: 'Alice', subject: 'Java', marks: 85 },
  { name: 'Bob', subject: 'Python', marks: 90 },
  { name: 'Charlie', subject: 'PHP', marks: 75 },
  { name: 'Dave', subject: 'DBMS', marks: 33 },
  { name: 'Eve', subject: 'CN', marks: 95 }
]

students.each do |student|
  Student.create!(student)
end
