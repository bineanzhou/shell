.class public Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory$Honeycomb;
.super Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Honeycomb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory",
        "<",
        "Landroid/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/util/ErrorDialogConfig;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;-><init>(Lorg/greenrobot/eventbus/util/ErrorDialogConfig;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected synthetic a(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory$Honeycomb;->d(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lorg/greenrobot/eventbus/util/ErrorDialogFragments$Honeycomb;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/util/ErrorDialogFragments$Honeycomb;-><init>()V

    .line 109
    invoke-virtual {v0, p2}, Lorg/greenrobot/eventbus/util/ErrorDialogFragments$Honeycomb;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v0
.end method
