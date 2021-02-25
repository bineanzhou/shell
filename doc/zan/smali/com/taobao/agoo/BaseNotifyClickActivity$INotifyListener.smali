.class public interface abstract Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/agoo/BaseNotifyClickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "INotifyListener"
.end annotation


# virtual methods
.method public abstract getMsgSource()Ljava/lang/String;
.end method

.method public abstract parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;
.end method
