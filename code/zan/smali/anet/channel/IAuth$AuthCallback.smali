.class public interface abstract Lanet/channel/IAuth$AuthCallback;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/IAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthCallback"
.end annotation


# virtual methods
.method public abstract onAuthFail(ILjava/lang/String;)V
.end method

.method public abstract onAuthSuccess()V
.end method
