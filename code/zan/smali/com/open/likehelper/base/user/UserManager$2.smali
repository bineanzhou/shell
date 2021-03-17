.class Lcom/open/likehelper/base/user/UserManager$2;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/base/user/UserManager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/base/user/UserManager;


# direct methods
.method constructor <init>(Lcom/open/likehelper/base/user/UserManager;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/open/likehelper/base/user/UserManager$2;->a:Lcom/open/likehelper/base/user/UserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager$2;->a:Lcom/open/likehelper/base/user/UserManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/open/likehelper/base/user/UserManager;->a(Lcom/open/likehelper/base/user/UserManager;Lcom/open/likehelper/base/user/UserInfo;)Lcom/open/likehelper/base/user/UserInfo;

    .line 61
    iget-object v0, p0, Lcom/open/likehelper/base/user/UserManager$2;->a:Lcom/open/likehelper/base/user/UserManager;

    invoke-static {v0}, Lcom/open/likehelper/base/user/UserManager;->a(Lcom/open/likehelper/base/user/UserManager;)Lcom/open/likehelper/util/SharedPreferUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/open/likehelper/util/SharedPreferUtils;->b()V

    .line 62
    return-void
.end method
