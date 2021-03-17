.class interface abstract Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils$RequestService;
.super Ljava/lang/Object;
.source "UpgradeHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/base/upgrade/UpgradeHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RequestService"
.end annotation


# virtual methods
.method public abstract a()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lcom/open/likehelper/base/upgrade/UpgradeBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "upgrade.json"
    .end annotation
.end method
