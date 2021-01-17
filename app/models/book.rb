class Book < ApplicationRecord
    validates :title, :author, :status, :borrowed_date, :returned_date, presence: true
    enum status: [:borrowed, :on_shelf]
    # paginates_per 2
end
