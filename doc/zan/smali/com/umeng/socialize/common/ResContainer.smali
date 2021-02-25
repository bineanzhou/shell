.class public final Lcom/umeng/socialize/common/ResContainer;
.super Ljava/lang/Object;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/common/ResContainer$SocializeResource;
    }
.end annotation


# static fields
.field private static R:Lcom/umeng/socialize/common/ResContainer;

.field private static mPackageName:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/common/ResContainer$SocializeResource;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/common/ResContainer;->R:Lcom/umeng/socialize/common/ResContainer;

    .line 87
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->map:Ljava/util/Map;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/common/ResContainer$SocializeResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->map:Ljava/util/Map;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    .line 97
    iput-object p1, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/umeng/socialize/common/ResContainer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/socialize/common/ResContainer;->R:Lcom/umeng/socialize/common/ResContainer;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/umeng/socialize/common/ResContainer;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/common/ResContainer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/common/ResContainer;->R:Lcom/umeng/socialize/common/ResContainer;

    .line 38
    :cond_0
    sget-object v0, Lcom/umeng/socialize/common/ResContainer;->R:Lcom/umeng/socialize/common/ResContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    .line 112
    :cond_0
    sget-object v1, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 113
    if-gtz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer;->mPackageName:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/umeng/socialize/utils/UmengText;->resError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/utils/UrlUtil;->ALL_NO_RES:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/UmengText;->errorWithUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public anim(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "anim"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized batch()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/common/ResContainer$SocializeResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v0

    .line 139
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;

    .line 142
    iget-object v2, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;->mType:Ljava/lang/String;

    iget-object v4, v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;->mName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;->mId:I

    .line 143
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/umeng/socialize/common/ResContainer$SocializeResource;->mIsCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->mResources:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public color(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "color"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dimen(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "dimen"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public drawable(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "drawable"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public id(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public layout(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "layout"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public raw(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "raw"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public string(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "string"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public style(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "style"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public styleable(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/common/ResContainer;->context:Landroid/content/Context;

    const-string v1, "styleable"

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
