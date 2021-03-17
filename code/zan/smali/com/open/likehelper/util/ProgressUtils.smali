.class public Lcom/open/likehelper/util/ProgressUtils;
.super Ljava/lang/Object;
.source "ProgressUtils.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/app/ProgressDialog;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    sput-object v0, Lcom/open/likehelper/util/ProgressUtils;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    .line 55
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/open/likehelper/util/ProgressUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/open/likehelper/util/ProgressUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/open/likehelper/util/ProgressUtils;->a()V

    .line 27
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    .line 28
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 29
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 30
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 34
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    .line 66
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 67
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 70
    :cond_1
    sput-object p1, Lcom/open/likehelper/util/ProgressUtils;->c:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 73
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 74
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 76
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    .line 42
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 43
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 44
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 48
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0900d1

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 60
    return-object v0
.end method

.method public static b()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/open/likehelper/util/ProgressUtils;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method
