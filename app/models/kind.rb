class Kind < ApplicationRecord

  def color; "blue"; end

  validates :name, presence: true, uniqueness: true
  validates_length_of :name, minimum: 5, maximum: 100
  validates_numericality_of :size, :only_integer => true, :greater_than_or_equal_to => 20
end
