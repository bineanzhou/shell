.class public abstract Lcom/umeng/socialize/common/QueuedWork$DialogThread;
.super Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/common/QueuedWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DialogThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    .line 83
    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 91
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/umeng/socialize/common/QueuedWork$UMAsyncTask;->onPreExecute()V

    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/common/QueuedWork$DialogThread;->dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    .line 97
    return-void
.end method
