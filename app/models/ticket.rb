class Ticket < ApplicationRecord
  belongs_to :executive
  belongs_to :user
  belongs_to :comment

  has_many :comments

  validates :title, presence: true
  validates :description, presence: true
  validates :priority, presence: true
  # Add more?
  def self.search(search)
    if search
      title = Ticket.find_by(title: search)
      if title
        self.where(ticket_id: title)
      else
        Ticket.all
      end
    else
      Ticket.all
    end
  end
end
