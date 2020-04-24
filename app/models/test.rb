class Test < ApplicationRecord
    has_many :test2, dependent: :destroy
    validates :title, presence: true, length: { minimum: 5 }
end
