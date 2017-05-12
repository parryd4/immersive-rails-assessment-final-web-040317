class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  belongs_to :user

  validates :rating, inclusion: { in: 1..5 }
  # is this redundant because of the input form?

end
