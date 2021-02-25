.class public interface abstract Lanetwork/channel/interceptor/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/interceptor/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract a()Lanet/channel/request/Request;
.end method

.method public abstract a(Lanet/channel/request/Request;Lanetwork/channel/interceptor/Callback;)Ljava/util/concurrent/Future;
.end method

.method public abstract b()Lanetwork/channel/interceptor/Callback;
.end method
