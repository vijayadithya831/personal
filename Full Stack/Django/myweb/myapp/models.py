from django.db import models

# Create your models here.
class Students(models.Model):
    Name = models.CharField(max_length=15)
    Email = models.EmailField(max_length=25)
    Phone = models.CharField(max_length=10)