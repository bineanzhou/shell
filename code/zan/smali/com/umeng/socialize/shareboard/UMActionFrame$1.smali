.class Lcom/umeng/socialize/shareboard/UMActionFrame$1;
.super Ljava/lang/Object;
.source "UMActionFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/shareboard/UMActionFrame;->init(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/shareboard/UMActionFrame;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/shareboard/UMActionFrame;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/umeng/socialize/shareboard/UMActionFrame$1;->this$0:Lcom/umeng/socialize/shareboard/UMActionFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/UMActionFrame$1;->this$0:Lcom/umeng/socialize/shareboard/UMActionFrame;

    invoke-static {v0}, Lcom/umeng/socialize/shareboard/UMActionFrame;->access$000(Lcom/umeng/socialize/shareboard/UMActionFrame;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/umeng/socialize/shareboard/UMActionFrame$1;->this$0:Lcom/umeng/socialize/shareboard/UMActionFrame;

    invoke-static {v0}, Lcom/umeng/socialize/shareboard/UMActionFrame;->access$000(Lcom/umeng/socialize/shareboard/UMActionFrame;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 93
    :cond_0
    return-void
.end method
