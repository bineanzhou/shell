.class public Lcom/alibaba/sdk/android/utils/c;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    .line 14
    invoke-static {p1}, Lcom/alibaba/sdk/android/utils/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    iput-object p1, p0, Lcom/alibaba/sdk/android/utils/c;->TAG:Ljava/lang/String;

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/c;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/c;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/c;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/sdk/android/utils/c;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/utils/c;->b:Z

    .line 21
    return-void
.end method
