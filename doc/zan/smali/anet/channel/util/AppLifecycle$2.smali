.class final Lanet/channel/util/AppLifecycle$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static final TAG:Ljava/lang/String; = "awcn.ComponentCallbacks2"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 6

    .prologue
    .line 107
    const-string v0, "awcn.ComponentCallbacks2"

    const-string v1, "onTrimMemory"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "level"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 109
    invoke-static {}, Lanet/channel/util/AppLifecycle;->onBackground()V

    .line 111
    :cond_0
    return-void
.end method
