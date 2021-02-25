.class Lcom/open/likehelper/widget/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/open/likehelper/widget/TitleBar;->getDefaultListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/open/likehelper/widget/TitleBar;


# direct methods
.method constructor <init>(Lcom/open/likehelper/widget/TitleBar;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/open/likehelper/widget/TitleBar$1;->a:Lcom/open/likehelper/widget/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/open/likehelper/widget/TitleBar$1;->a:Lcom/open/likehelper/widget/TitleBar;

    invoke-virtual {v0}, Lcom/open/likehelper/widget/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Landroid/app/Activity;

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 62
    :cond_0
    return-void
.end method
