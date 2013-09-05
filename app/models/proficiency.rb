class Proficiency < ActiveRecord::Base
  VALID_FORMAL_EDUS = %w(yes no)

  validates :years_exp, presence: true
  validates :formal_edu, presence: true
  validates :user_id, presence: true
  validates :skill_id, presence: true
  validate :validate_formal_edu

  belongs_to :user
  belongs_to :skill

  private
  def validate_formal_edu
    p self.formal_edu
    self.errors[:formal_edu] = "must be one of: #{VALID_FORMAL_EDUS.join(', ')}" unless VALID_FORMAL_EDUS.include? self.formal_edu
  end

end
