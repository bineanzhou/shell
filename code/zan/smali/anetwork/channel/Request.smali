.class public interface abstract Lanetwork/channel/Request;
.super Ljava/lang/Object;
.source "Taobao"


# virtual methods
.method public abstract a()Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lanet/channel/request/BodyEntry;)V
.end method

.method public abstract a(Lanetwork/channel/Header;)V
.end method

.method public abstract a(Lanetwork/channel/IBodyHandler;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/net/URI;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(Ljava/lang/String;)[Lanetwork/channel/Header;
.end method

.method public abstract b()Ljava/net/URL;
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Lanetwork/channel/Header;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract c(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract e(Ljava/lang/String;)V
.end method

.method public abstract f()I
.end method

.method public abstract f(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Lanetwork/channel/IBodyHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract j()Lanet/channel/request/BodyEntry;
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public abstract o()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract p()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract q()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
