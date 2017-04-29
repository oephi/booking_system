json.extract! course, :id, :name, :instructor, :start_date, :end_date, :notes, :created_at, :updated_at
json.url course_url(course, format: :json)
