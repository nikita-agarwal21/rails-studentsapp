json.extract! student, :id, :usn, :name, :gender, :phone_number, :created_at, :updated_at
json.url student_url(student, format: :json)
