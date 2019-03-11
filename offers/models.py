from django.db import models

# Create your models here.


class Offer(models.Model):
    location = models.CharField(max_length=100)
    posted_by_user = models.IntegerField()
    offered_service = models.IntegerField()
    wanted_service = models.IntegerField()
    post_timestamp = models.BigIntegerField()
    offer_expiration_time = models.BigIntegerField()
