class Game < ActiveRecord::Base
  has_many :playergames
  has_many :players, through: :playergames
  has_many :gametiles
  has_many :cells
  belongs_to :winner, class_name: "Player"


  def self.pending
    Game.all.select{ |game| game.status == "pending" }
  end

end
