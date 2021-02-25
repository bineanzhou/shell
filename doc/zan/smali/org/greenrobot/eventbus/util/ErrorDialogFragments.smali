.class public Lorg/greenrobot/eventbus/util/ErrorDialogFragments;
.super Ljava/lang/Object;
.source "ErrorDialogFragments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/util/ErrorDialogFragments$Support;,
        Lorg/greenrobot/eventbus/util/ErrorDialogFragments$Honeycomb;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lorg/greenrobot/eventbus/util/ErrorDialogFragments;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    const-string v1, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 42
    const-string v1, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 43
    sget v1, Lorg/greenrobot/eventbus/util/ErrorDialogFragments;->a:I

    if-eqz v1, :cond_0

    .line 44
    sget v1, Lorg/greenrobot/eventbus/util/ErrorDialogFragments;->a:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 46
    :cond_0
    const v1, 0x104000a

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/DialogInterface;ILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogFragments;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogFragments;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    sget-object v1, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;

    iget-object v1, v1, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;->a:Lorg/greenrobot/eventbus/util/ErrorDialogConfig;

    invoke-virtual {v1}, Lorg/greenrobot/eventbus/util/ErrorDialogConfig;->b()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->d(Ljava/lang/Object;)V

    .line 61
    :cond_0
    const-string v0, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 63
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 65
    :cond_1
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Event cannot be constructed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
