# Generated by Django 3.1.4 on 2020-12-08 04:48

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0034_auto_20201208_1029'),
    ]

    operations = [
        migrations.CreateModel(
            name='Teacher_Assignment_upload_file',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Assignment_name', models.CharField(max_length=500)),
                ('course', models.CharField(max_length=500)),
                ('date', models.DateField(blank=True, default=datetime.datetime(2020, 12, 8, 10, 48, 39, 378941))),
                ('due_date', models.DateField(blank=True, default=datetime.datetime(2020, 12, 8, 10, 48, 39, 378941))),
                ('title', models.CharField(max_length=500)),
                ('Details', models.TextField(max_length=500)),
                ('attachment', models.FileField(upload_to='uploads/files')),
                ('resource', models.CharField(max_length=500)),
                ('posts', models.CharField(max_length=500)),
            ],
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file_image',
            name='date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 8, 10, 48, 39, 377941)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_file_image',
            name='due_date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 8, 10, 48, 39, 377941)),
        ),
    ]
