.class public interface abstract Lorg/android/agoo/service/IMessageService;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/service/IMessageService$Stub;
    }
.end annotation


# virtual methods
.method public abstract ping()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract probe()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
