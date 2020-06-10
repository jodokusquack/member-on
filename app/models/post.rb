class Post < ApplicationRecord
  belongs_to :member

  def preview
    if body.length > 200
      body[0..200] + '...'
    else
      body
    end
  end
end
