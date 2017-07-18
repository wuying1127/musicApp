class Album < ActiveRecord::Base
  has_many :tracks, dependent: :destroy
  belongs_to :band

  validates :band_id, :name, :year, presence: true
  validates :year, numerically: { minimum: 1900, maximum: 9000 }
  validates :name, uniqueness: { scope: :band_id }
  validates :live, inclusion: { in: [true, false] }

end
