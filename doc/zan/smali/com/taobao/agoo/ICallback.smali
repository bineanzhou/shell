.class public abstract Lcom/taobao/agoo/ICallback;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public extra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess()V
.end method
