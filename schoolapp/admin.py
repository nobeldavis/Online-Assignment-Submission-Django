from django.contrib import admin
from .models import Teacher_login_informa, Student_courses_with_Teacher_name, Student_login_informatn, Grade_Student, Student_Submit_Assignment_pro, Assignment_Comments, Teacher_Assignment_upload_File
# Register your models here.



admin.site.register(Teacher_login_informa)
admin.site.register(Student_courses_with_Teacher_name)
admin.site.register(Student_login_informatn)
admin.site.register(Grade_Student)
admin.site.register(Student_Submit_Assignment_pro)
admin.site.register(Assignment_Comments)
admin.site.register(Teacher_Assignment_upload_File)
