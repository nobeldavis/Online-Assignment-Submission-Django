# Generated by Django 3.1.4 on 2020-12-08 16:44

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0048_auto_20201208_1656'),
    ]

    operations = [
        migrations.CreateModel(
            name='Teacher_Assignment_upload_File',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Assignment_name', models.CharField(max_length=500)),
                ('course', models.CharField(max_length=500)),
                ('date', models.DateField(blank=True, default=datetime.datetime(2020, 12, 8, 22, 44, 9, 457916))),
                ('due_date', models.DateField(blank=True, default=datetime.datetime(2020, 12, 8, 22, 44, 9, 457916))),
                ('title', models.CharField(max_length=500)),
                ('Details', models.TextField(max_length=500)),
                ('attachment', models.CharField(max_length=1000)),
                ('resource', models.CharField(max_length=500)),
                ('posts', models.CharField(max_length=500)),
                ('Out_Of_Grade', models.CharField(max_length=500)),
            ],
        ),
        migrations.AlterField(
            model_name='assignment_comments',
            name='time_comment',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 8, 22, 44, 9, 458915)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_files',
            name='date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 8, 22, 44, 9, 456917)),
        ),
        migrations.AlterField(
            model_name='teacher_assignment_upload_files',
            name='due_date',
            field=models.DateField(blank=True, default=datetime.datetime(2020, 12, 8, 22, 44, 9, 456917)),
        ),
    ]
