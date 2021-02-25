.class Lcom/open/likehelper/ui/MomentsActivity$1;
.super Ljava/lang/Object;
.source "MomentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/ui/MomentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/ui/MomentsActivity;


# direct methods
.method constructor <init>(Lcom/open/likehelper/ui/MomentsActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/open/likehelper/ui/MomentsActivity$1;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/open/likehelper/ui/MomentsActivity$1;->a:Lcom/open/likehelper/ui/MomentsActivity;

    invoke-virtual {v0}, Lcom/open/likehelper/ui/MomentsActivity;->finish()V

    .line 117
    return-void
.end method
