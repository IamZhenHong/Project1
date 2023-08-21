class Mentee < User
    has_many :teaching_relationships
    has_many :mentors, through: :teaching_relationships
    has_many :comments
end
