.class public interface abstract Lorg/android/agoo/service/SendMessage;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/agoo/service/SendMessage$Stub;
    }
.end annotation


# virtual methods
.method public abstract doSend(Landroid/content/Intent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
