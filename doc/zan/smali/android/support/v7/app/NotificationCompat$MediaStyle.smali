.class public Landroid/support/v7/app/NotificationCompat$MediaStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# instance fields
.field a:[I

.field b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field c:Z

.field d:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 572
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->a:[I

    .line 573
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->a:[I

    .line 576
    invoke-virtual {p0, p1}, Landroid/support/v7/app/NotificationCompat$MediaStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 577
    return-void
.end method


# virtual methods
.method public a(Landroid/app/PendingIntent;)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->d:Landroid/app/PendingIntent;

    .line 636
    return-object p0
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 596
    return-object p0
.end method

.method public a(Z)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0

    .prologue
    .line 624
    iput-boolean p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->c:Z

    .line 625
    return-object p0
.end method

.method public varargs a([I)Landroid/support/v7/app/NotificationCompat$MediaStyle;
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->a:[I

    .line 587
    return-object p0
.end method
