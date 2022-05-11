json.extract! classroom, :id, :teacher_id, :grade, :start_date, :end_date, :section, :status, :remarks, :meta, :created_at, :updated_at
json.url classroom_url(classroom, format: :json)
