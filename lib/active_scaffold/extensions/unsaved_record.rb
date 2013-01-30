# a simple (manual) unsaved? flag and method. at least it automatically reverts after a save!
class ActiveRecord::Base
  def unsaved?
    new_record?
  end
end
