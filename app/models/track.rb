class Track < ActiveRecord::Base
  belongs_to :album
  has_one :band, through: :album, source: :band

  validates :album_id, :name, :lyric, :ord, presence: true
  validates :ord, uniqueness: { scope: :album_id}
  validates :bonus, inclusion: { in: [true, false]}


end
