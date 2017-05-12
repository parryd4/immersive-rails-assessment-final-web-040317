class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  validates :name, presence: true

  def appearances
    Appearance.all.select { |appear| appear.guest == self }
  end

  def appearance_info(appearance)
    episode = appearance.episode
    "Episode ##{episode.number} on #{episode.date}. Booked by producer #{appearance.user.username} and received a rating of #{appearance.rating}."
  end

end
