class SnsCredential < ApplicationRecord
  #optional: trueにより外部キー（user_id)なしでも保存できるように
  belongs_to :user, optional: true
end
