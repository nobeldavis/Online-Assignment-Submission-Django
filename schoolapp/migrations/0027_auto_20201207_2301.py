# Generated by Django 3.1.4 on 2020-12-07 17:01

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0026_auto_20201207_2258'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='submit_assignment_stu',
            name='Student_ID',
        ),
        migrations.RemoveField(
            model_name='submit_assignment_stu',
            name='course',
        ),
        migrations.RemoveField(
            model_name='submit_assignment_stu',
            name='name',
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file_image',
            name='date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 7, 23, 1, 23, 278522)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file_image',
            name='due_date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 7, 23, 1, 23, 278522)),
        ),
        migrations.DeleteModel(
            name='Assignment_upload_file_image',
        ),
        migrations.DeleteModel(
            name='Submit_Assignment_stu',
        ),
    ]
