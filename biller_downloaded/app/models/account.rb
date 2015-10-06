class Account < ActiveRecord::Base
  has_many :account_entries

  validates :name, presence: true, 
                   length: {in: 1..70,
                            message: "Please use a decent name, sir."},
                   uniqueness: true
  validate :your_name_is_not_dumb
  validate :name_is_not_length_42

  def your_name_is_not_dumb
    if name.include?("dumb")
      errors.add(:name, "is dumb")
    end
  end

  def name_is_not_length_42
    if name.length == 42
      errors.add(:name, "cannot be of length 42 or world implodes")
    end
  end
end
