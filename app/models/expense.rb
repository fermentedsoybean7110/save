class Expense < ApplicationRecord
  has_one :event, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :event
end
