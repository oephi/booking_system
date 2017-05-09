json.extract! student, :id, :concession, :name, :email, :cabin, :paid, :created_at, :updated_at
json.url student_url(student, format: :json)
