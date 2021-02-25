.class public Lcom/open/likehelper/base/upgrade/UpgradeBean;
.super Ljava/lang/Object;
.source "UpgradeBean.java"


# static fields
.field public static final a:Ljava/lang/String; = "upgrade"


# instance fields
.field b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_id"
    .end annotation
.end field

.field c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->b:I

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->c:I

    .line 37
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->e:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/open/likehelper/base/upgrade/UpgradeBean;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
