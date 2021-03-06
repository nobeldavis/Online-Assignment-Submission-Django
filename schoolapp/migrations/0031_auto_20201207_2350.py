# Generated by Django 3.1.4 on 2020-12-07 17:50

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0030_auto_20201207_2347'),
    ]

    operations = [
        migrations.CreateModel(
            name='Grade_Student',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Student_ID', models.CharField(max_length=200)),
                ('course', models.CharField(max_length=200)),
                ('Assignment_name', models.CharField(max_length=200)),
                ('Grade', models.CharField(max_length=200)),
                ('Out_Of_Grade', models.CharField(max_length=200)),
            ],
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file_image',
            name='date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 7, 23, 50, 1, 138406)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file_image',
            name='due_date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 7, 23, 50, 1, 138406)),
        ),
    ]
