json.extract! student, :id, :name, :subject, :marks, :teacher_id, :created_at, :updated_at
json.url student_url(student, format: :json)
