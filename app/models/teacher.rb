class Teacher < ApplicationRecord
has_many :students, dependent: :destroy, inverse_of: :project

accepts_nested_attributes_for :students, allow_destroy: true, reject_if: :all_blank
end
