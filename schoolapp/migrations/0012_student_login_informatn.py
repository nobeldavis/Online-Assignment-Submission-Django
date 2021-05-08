# Generated by Django 3.1.4 on 2020-12-07 03:25

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0011_auto_20201207_0921'),
    ]

    operations = [
        migrations.CreateModel(
            name='Student_login_informatn',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Student_ID', models.CharField(max_length=50)),
                ('Student_Name', models.CharField(max_length=255)),
                ('Student_pass', models.CharField(max_length=255)),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.student_courses_with_teacher_name')),
            ],
        ),
    ]
