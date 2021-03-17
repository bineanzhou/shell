.class public Lcom/umeng/commonsdk/internal/utils/h;
.super Ljava/lang/Object;
.source "Root.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v0

    .line 17
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/h;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 30
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 31
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 39
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v1

    .line 46
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/Kinguser.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 52
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static d()Z
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/umeng/commonsdk/internal/utils/e;

    invoke-direct {v0}, Lcom/umeng/commonsdk/internal/utils/e;-><init>()V

    sget-object v1, Lcom/umeng/commonsdk/internal/utils/e$a;->a:Lcom/umeng/commonsdk/internal/utils/e$a;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/internal/utils/e;->a(Lcom/umeng/commonsdk/internal/utils/e$a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/bin"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/system/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/su/bin/"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/data/local/xbin/"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "/data/local/bin/"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "/system/sd/xbin/"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "/system/bin/failsafe/"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "/data/local/"

    aput-object v4, v3, v2

    .line 68
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 69
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "su"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    :goto_1
    return v0

    .line 68
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 74
    goto :goto_1
.end method
