.class Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;
.super Ljava/lang/Object;
.source "BaseHttpUtils.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/util/BaseHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/util/BaseHttpUtils;

.field private b:Lretrofit2/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/open/likehelper/util/BaseHttpUtils;Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    iput-object p1, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->a:Lcom/open/likehelper/util/BaseHttpUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p3, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->b:Lretrofit2/Callback;

    .line 201
    iput-object p2, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->c:Ljava/lang/String;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Lcom/open/likehelper/util/BaseHttpUtils;Ljava/lang/String;Lretrofit2/Callback;Lcom/open/likehelper/util/BaseHttpUtils$1;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;-><init>(Lcom/open/likehelper/util/BaseHttpUtils;Ljava/lang/String;Lretrofit2/Callback;)V

    return-void
.end method

.method private a(Lretrofit2/Call;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->a:Lcom/open/likehelper/util/BaseHttpUtils;

    invoke-static {v0}, Lcom/open/likehelper/util/BaseHttpUtils;->a(Lcom/open/likehelper/util/BaseHttpUtils;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->a:Lcom/open/likehelper/util/BaseHttpUtils;

    invoke-static {v0}, Lcom/open/likehelper/util/BaseHttpUtils;->a(Lcom/open/likehelper/util/BaseHttpUtils;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->a(Lretrofit2/Call;)V

    .line 221
    invoke-interface {p1}, Lretrofit2/Call;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->b:Lretrofit2/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit2/Callback;->a(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 224
    :cond_0
    return-void
.end method

.method public a(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->a(Lretrofit2/Call;)V

    .line 207
    invoke-virtual {p2}, Lretrofit2/Response;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p2}, Lretrofit2/Response;->f()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/open/likehelper/base/network/Result;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->f()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/open/likehelper/base/upgrade/UpgradeBean;

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->b:Lretrofit2/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit2/Callback;->a(Lretrofit2/Call;Lretrofit2/Response;)V

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->b:Lretrofit2/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Not Result or UpgradeBean Type!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lretrofit2/Callback;->a(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/open/likehelper/util/BaseHttpUtils$OnCallBack;->b:Lretrofit2/Callback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "responseCode!=2xx || response.body()==null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lretrofit2/Callback;->a(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
