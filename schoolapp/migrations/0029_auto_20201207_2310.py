# Generated by Django 3.1.4 on 2020-12-07 17:10

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0028_auto_20201207_2305'),
    ]

    operations = [
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 7, 23, 10, 5, 26286)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file',
            name='due_date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 7, 23, 10, 5, 26286)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file_image',
            name='date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 7, 23, 10, 5, 25288)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file_image',
            name='due_date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 7, 23, 10, 5, 25288)),
        ),
    ]
