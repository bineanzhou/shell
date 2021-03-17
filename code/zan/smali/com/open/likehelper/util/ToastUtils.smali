.class public Lcom/open/likehelper/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static a:Lcom/open/likehelper/util/ToastUtils;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/Toast;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->b:Landroid/content/Context;

    .line 19
    :cond_0
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/open/likehelper/util/ToastUtils;->a:Lcom/open/likehelper/util/ToastUtils;

    .line 64
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/open/likehelper/util/ToastUtils;->b()V

    .line 52
    iget-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->c:Landroid/widget/Toast;

    .line 53
    iget-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/open/likehelper/util/ToastUtils;->b(Landroid/content/Context;)Lcom/open/likehelper/util/ToastUtils;

    move-result-object v0

    invoke-direct {v0}, Lcom/open/likehelper/util/ToastUtils;->b()V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/open/likehelper/util/ToastUtils;->b(Landroid/content/Context;)Lcom/open/likehelper/util/ToastUtils;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/open/likehelper/util/ToastUtils;->a(I)V

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/open/likehelper/util/ToastUtils;->b(Landroid/content/Context;)Lcom/open/likehelper/util/ToastUtils;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/open/likehelper/util/ToastUtils;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/open/likehelper/util/ToastUtils;->b()V

    .line 46
    iget-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->c:Landroid/widget/Toast;

    .line 47
    iget-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/open/likehelper/util/ToastUtils;
    .locals 3

    .prologue
    .line 22
    const-class v1, Lcom/open/likehelper/util/ToastUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/open/likehelper/util/ToastUtils;->a:Lcom/open/likehelper/util/ToastUtils;

    if-nez v0, :cond_1

    .line 23
    const-class v2, Lcom/open/likehelper/util/ToastUtils;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    sget-object v0, Lcom/open/likehelper/util/ToastUtils;->a:Lcom/open/likehelper/util/ToastUtils;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/open/likehelper/util/ToastUtils;

    invoke-direct {v0, p0}, Lcom/open/likehelper/util/ToastUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/open/likehelper/util/ToastUtils;->a:Lcom/open/likehelper/util/ToastUtils;

    .line 27
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :cond_1
    :try_start_2
    sget-object v0, Lcom/open/likehelper/util/ToastUtils;->a:Lcom/open/likehelper/util/ToastUtils;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->c:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/open/likehelper/util/ToastUtils;->c:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 60
    :cond_0
    return-void
.end method
