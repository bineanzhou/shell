.class public Lcom/open/likehelper/ui/edit/WebViewActivity$JavaScriptObject;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/ui/edit/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaScriptObject"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/open/likehelper/ui/edit/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/open/likehelper/ui/edit/WebViewActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/open/likehelper/ui/edit/WebViewActivity$JavaScriptObject;->b:Lcom/open/likehelper/ui/edit/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/open/likehelper/ui/edit/WebViewActivity$JavaScriptObject;->a:Landroid/content/Context;

    .line 288
    return-void
.end method


# virtual methods
.method public setLoc(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 291
    const-string v0, "msg=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/open/likehelper/ui/edit/WebViewActivity$JavaScriptObject;->b:Lcom/open/likehelper/ui/edit/WebViewActivity;

    invoke-static {v0, p1}, Lcom/open/likehelper/ui/edit/WebViewActivity;->a(Lcom/open/likehelper/ui/edit/WebViewActivity;Ljava/lang/String;)V

    .line 293
    return-void
.end method
