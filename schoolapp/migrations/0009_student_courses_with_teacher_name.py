# Generated by Django 3.1.4 on 2020-12-07 03:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('schoolapp', '0008_delete_teacher_login_information'),
    ]

    operations = [
        migrations.CreateModel(
            name='Student_courses_with_Teacher_name',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('course', models.CharField(max_length=200)),
                ('Teacher_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='schoolapp.teacher_login_informa')),
            ],
        ),
    ]
