from django.db import models
from django.urls import reverse

class Unit(models.Model):
    #############
    # these all need to be lookup tables ... ugh
    # given time constraints, they are hard-coded and Other is the catch all
    OTHER = 'Other'
    #############
    GROUND = 'Ground'
    MARITIME = 'Maritime'
    AVIATION = 'Aviation'
    UNIT_TYPE_CHOICES = (
        (GROUND, 'Ground'),
        (MARITIME, 'Maritime'),
        (AVIATION, 'Aviation'),
        (OTHER, 'Other'),
    )
    #############
    PERSISTENT = 'Persistent'
    EPISODIC = 'Episodic'
    ENGAGEMENT_CHOICES = (
        (PERSISTENT, 'Persistent'),
        (EPISODIC, 'Episodic'),
        (OTHER, 'Other'),
    )
    #############
    AIRFORCE = 'Air Force'
    ARMY = 'Army'
    JOINT = 'Joint'
    MARINES = 'Marines'
    NAVY = 'Navy'
    CG = 'Coast Guard'
    COUNTER = 'Counter-Drug Police'
    STATE = 'State Police'
    FEDERAL = 'Federal Police'
    NATIONAL = 'National Police'
    LIMA = 'Lima Police'
    POLICE = 'Police'
    AFFILIATION_CHOICES = (
        (AIRFORCE, 'Air Force'),
        (ARMY, 'Army'),
        (CG, 'Coast Guard'),
        (MARINES, 'Marines'),
        (NAVY, 'Navy'),
        (JOINT, 'Joint'),
        (STATE, 'State Police'),
        (FEDERAL, 'Federal Police'),
        (NATIONAL, 'National Police'),
        (COUNTER, 'Counter-Drug Police'),
        (LIMA, 'Lima Police'),
        (POLICE, 'Police'),
        (OTHER, 'Other'),
    )
    #############
    CR = 'CT & Habitual Relationship with C-3/7'
    CT = 'Counter Terrorism'
    CD = 'Counter Drug'
    AVN = 'Aviation'
    ENGAGEMENT_TYPE_CHOICES = (
        (CR ,'CT & Habitual Relationship with C-3/7'),
        (CT , 'Counter Terrorism'),
        (CD , 'Counter Drug'),
        (AVN , 'Aviation'),
        (OTHER , 'Other'),
    )
    #############
    SCAR = 'SCAR'
    CENTAM = 'CENTAM'
    CARIB = 'CARIB'
    REGION_CHOICES = (
        (SCAR , 'SCAR'),
        (CENTAM , 'CENTAM'),
        (CARIB , 'CARIB'),
        (OTHER , 'Other'),
    )
    #############

    CR = 'CT & Habitual Relationship with C-3/7'
    CT = 'Counter Terrorism'
    CD = 'Counter Drug'
    AVN = 'Aviation'
    ENGAGEMENT_TYPE_CHOICES = (
        (CR ,'CT & Habitual Relationship with C-3/7'),
        (CT , 'Counter Terrorism'),
        (CD , 'Counter Drug'),
        (AVN , 'Aviation'),
        (OTHER , 'Other'),
    )

    # Fields
    id      = models.AutoField(
        primary_key=True
    )

    created          = models.DateTimeField(
        auto_now_add=True
    )

    updated          = models.DateTimeField(
        auto_now=True
    )

    unit             = models.CharField(
        max_length=80,
    )
    unit_abbrev      = models.CharField(
        max_length=20,
    )
    unit_description  = models.TextField(
        blank=True,
    )
    unit_type        = models.CharField(
        max_length=10,
        choices=UNIT_TYPE_CHOICES,
    )
    engagement        = models.CharField(
        max_length=10,
        choices=ENGAGEMENT_CHOICES,
        blank=True,
    )
    engagement_type   = models.CharField(
        max_length=65,
        choices=ENGAGEMENT_TYPE_CHOICES,
        blank=True,
    )
    affiliation        = models.CharField(
        max_length=45,
        choices=AFFILIATION_CHOICES,
        blank=True,
    )
    region        = models.CharField(
        max_length=45,
        choices=REGION_CHOICES,
        blank=True,
    )

    # who / when
    leader_text    = models.TextField(
        blank=True,
    )

    # country
    country        = models.CharField(
        max_length=25,
    )
    location_1  = models.TextField(
        blank=True,
    )
    mgrs_1  = models.TextField(
        blank=True,
    )
    location_2  = models.TextField(
        blank=True,
    )
    mgrs_2  = models.TextField(
        blank=True,
    )
    location_3  = models.TextField(
        blank=True,
    )
    mgrs_3  = models.TextField(
        blank=True,
    )

    # logistics
    force           = models.TextField(
        blank=True,
    )
    weapons         = models.TextField(
        blank=True,
    )
    comms           = models.TextField(
        blank=True,
    )
    mobility        = models.TextField(
        blank=True,
    )
    night_vision    = models.TextField(
        blank=True,
    )

    # objectives
    mission  = models.TextField(
        blank=True,
    )
    country_objectives  = models.TextField(
        blank=True,
    )
    southcom_objectives = models.TextField(
        blank=True,
    )
    embassy_objectives  = models.TextField(
        blank=True,
    )
    socsouth_objectives = models.TextField(
        blank=True,
    )

    #  Catchall
    diagram        = models.CharField(
        max_length=120,
        blank=True,
    )

    # Metadata
    class Meta: 
        ordering = ['region', 'country', 'unit']

    def __str__(self):
        return f'{self.unit}'

    def get_absolute_url(self):
        return reverse('unit-update', args=[str(self.id)])
