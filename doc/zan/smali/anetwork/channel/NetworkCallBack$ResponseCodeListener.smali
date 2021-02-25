.class public interface abstract Lanetwork/channel/NetworkCallBack$ResponseCodeListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/NetworkCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseCodeListener"
.end annotation


# virtual methods
.method public abstract a(ILjava/util/Map;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method
