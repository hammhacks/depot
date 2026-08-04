json.extract! question, :id, :question, :asker, :answer, :answered, :created_at, :updated_at
json.url question_url(question, format: :json)
