class Test < ApplicationRecord
    has_many :test2
    validates :title, presence: true, length: { minimum: 5 }
end
