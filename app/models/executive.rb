class Executive < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :tickets

    validates :name, presence: true
    validates :last_name, presence: true
    validates :phone_number, numericality: { only_integer: true }, presence: true
    validates :role, presence: true

    def admin?
      role == "Administrator"
    end
    def super?
      role == "Supervisor"
    end
    def exec?
      role == "Executive"
    end
    def normal?
      role == ""
    end
end
