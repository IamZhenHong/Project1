class Mentor < User
    has_many :teaching_relationships
    has_many :mentees, through: :teaching_relationships
    has_many :comments
end
