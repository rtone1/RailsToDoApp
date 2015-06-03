class Task < ActiveRecord::Base
  belongs_to(:user)

  def to_s
    self.note + "are task to be done."
  end

end
