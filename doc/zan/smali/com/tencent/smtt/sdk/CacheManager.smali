.class public final Lcom/tencent/smtt/sdk/CacheManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheDisabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "android.webkit.CacheManager"

    const-string v1, "cacheDisabled"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static getCacheFile(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 2

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/smtt/sdk/bj;->a(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bj;->g()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "android.webkit.CacheManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCacheFile"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/v;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bi;->b()Lcom/tencent/smtt/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bi;->d()Lcom/tencent/smtt/sdk/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bj;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android.webkit.CacheManager"

    const-string v1, "getCacheFileBaseDir"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method
