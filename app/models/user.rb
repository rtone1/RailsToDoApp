class User < ActiveRecord::Base
  has_many(:task)

  def to_s
    self.name + "don't forget to do your tasks."
  end
end
