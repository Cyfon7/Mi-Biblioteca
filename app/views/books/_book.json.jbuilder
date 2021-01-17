json.extract! book, :id, :title, :author, :status, :borrowed_date, :returned_date, :created_at, :updated_at
json.url book_url(book, format: :json)
