class Result < ApplicationRecord
  belongs_to :course
  belongs_to :student

 # def self.search(search)
  #  if search
   #   usn_type=Student.find_by(usn: search)
  #    if usn_type
  #      self.where(student_id: usn_type)
  #    else
  #      @results=Results.all
  #    end
  #  else
  #    @results=Result.all
  #  end
  #end

end
