class ResultsController < ApplicationController
    def result
      #@results=Result.search(params[:search])
     
        @usn_id=params[:search]
        @learners=Student.all.where("lower(usn) LIKE :search",search: "%#{@usn_id}%")
        @ids= []

        @learners.each do |learner|
          #@ids <<learner.id#1,2..
          @ids <<learner.id
        end
       # @marks=Result.all.where("student_id in #{@ids}")
       @marks=Result.where(student_id: @ids)
       @courseids=@marks.map(&:course_id)
        #@marks.each do |mark|
         #  @courseids=mark.course_id
        #end
           @subs=Course.all.where(id: @courseids)


           
    end
end
        #@marks=Student.all.where("lower(usn) LIKE :search",search: "%#{@usn_id}%")

#private
 #def result_params
 #   params.require(:result).permit(:usn, :search)
#end
 