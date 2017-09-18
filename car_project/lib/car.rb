class Car
  attr_accessor :make, :year, :color
  attr_reader :wheels
  attr_reader :doors

  def initialize(options = {})
    @make = options[:make] || 'Ford'
    @color = options[:color] || 'unknown'
    @year = (options[:year] || 2007).to_i
    @wheels = 4
  end

  def self.colors
    %w[blue black red green]
  end

  def full_name
    "#{self.year} #{self.make} (#{self.color})"
  end
end
