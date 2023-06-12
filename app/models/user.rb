class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :tweets, dependent: :destroy, inverse_of: :user

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }

  before_save :set_display_name, if: -> { display_name.blank? }
  def set_display_name
    self.display_name = username.humanize
  end

end