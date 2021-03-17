.class Lcom/tencent/smtt/sdk/av;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/tencent/smtt/sdk/av;


# instance fields
.field a:Lcom/tencent/smtt/sdk/ax;

.field b:Landroid/content/Context;

.field c:Lcom/tencent/tbs/video/interfaces/a;

.field d:Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/av;->e:Lcom/tencent/smtt/sdk/av;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/av;->b:Landroid/content/Context;

    new-instance v0, Lcom/tencent/smtt/sdk/ax;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/av;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/ax;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/av;
    .locals 2

    const-class v1, Lcom/tencent/smtt/sdk/av;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/smtt/sdk/av;->e:Lcom/tencent/smtt/sdk/av;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/smtt/sdk/av;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/av;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/smtt/sdk/av;->e:Lcom/tencent/smtt/sdk/av;

    :cond_0
    sget-object v0, Lcom/tencent/smtt/sdk/av;->e:Lcom/tencent/smtt/sdk/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/av;->c:Lcom/tencent/tbs/video/interfaces/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/av;->c:Lcom/tencent/tbs/video/interfaces/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tbs/video/interfaces/a;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method a(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/ax;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ax;->a()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/ax;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tbs/video/interfaces/a;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "videoUrl"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ax;->a()V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ax;->b()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iput-object p3, p0, Lcom/tencent/smtt/sdk/av;->c:Lcom/tencent/tbs/video/interfaces/a;

    new-instance v1, Lcom/tencent/smtt/sdk/aw;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/aw;-><init>(Lcom/tencent/smtt/sdk/av;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/av;->d:Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/av;->c:Lcom/tencent/tbs/video/interfaces/a;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/av;->d:Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;

    invoke-interface {v1, v2}, Lcom/tencent/tbs/video/interfaces/a;->a(Lcom/tencent/tbs/video/interfaces/IUserStateChangedListener;)V

    const-string v1, "callMode"

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/av;->a:Lcom/tencent/smtt/sdk/ax;

    if-nez p3, :cond_3

    const/4 p0, 0x0

    :cond_3
    invoke-virtual {v1, p2, p0}, Lcom/tencent/smtt/sdk/ax;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v1, "callMode"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
