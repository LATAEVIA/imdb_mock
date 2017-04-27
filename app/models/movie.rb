class Movie < ApplicationRecord
  mount_uploader :cover_art, CoverArtUploader

  # Direct associations

  belongs_to :director

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  has_many   :cast,
             :through => :castings,
             :source => :actor

  # Validations

end
