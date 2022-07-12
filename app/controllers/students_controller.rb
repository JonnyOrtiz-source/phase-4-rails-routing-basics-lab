class StudentsController < ApplicationController
    def index
        render json: Student.all
    end
    def grades
        students = Student.order(grade: :desc)
        render json: students
    end
    def highestgrade
        student = Student.order(grade: :desc)
        render json: student.first
    end
end
