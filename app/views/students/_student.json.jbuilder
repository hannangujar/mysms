json.extract! student, :id, :user_id, :parent_id, :classroom_id, :status, :meta, :created_at, :updated_at
json.url student_url(student, format: :json)
