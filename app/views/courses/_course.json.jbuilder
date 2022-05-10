json.extract! course, :id, :course_code, :course_name, :cee_marks, :see_marks, :created_at, :updated_at
json.url course_url(course, format: :json)
