class Bootcamp
  def initialize(name , slogan, student_capacity, teachers = [], students = [], grades = Hash.new{|h,k| h[k] = []})
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = teachers
    @students = students
    @grades = grades

  end
#   ----------------------------------------------------------
  def  name      # getter method #instance method
    @name
  end
#   -----------------------------------------------------------   
    def slogan   # getter method #instance method
    @slogan
  end
#   -----------------------------------------------------------
    def student_capacity # getter method #instance method
    @student_capacity
    end
#   -----------------------------------------------------------
    def teachers # getter method #instance method
    @teachers
    end
#   -----------------------------------------------------------
    def students # getter method #instance method
    @students
    end
#   -----------------------------------------------------------
    def grades # getter method #instance method
    @grades
    end
#   -----------------------------------------------------------
    def hire(teacher) # class method 
    @teachers << teacher
    end
# --------------------------------------------------------------
 def enroll (student)       # class method  
    if @students.length < @student_capacity
      @students << student
      return true
    else
       return false
    end
  end
# --------------------------------------------------------------
def enrolled?(student)
    @students.include?(student)
end
# -----------------------------------------------------------------
def student_to_teacher_ratio ()
    @students.length / @teachers.length
end
# --------------------------------------------------------------
def add_grade (student,grade)
     if enrolled?(student)
        grades[student] << grade
        return true
     end
    false
end
# ------------------------------------------------------------------
def num_grades (student)
    grades[student].length
end
# -------------------------------------------------------------------
def average_grade (student)
    return nil if !enrolled?(student) || grades[student].empty?
    grades[student].sum / grades[student].length
end
end
# ------------------------------------------------------------------------