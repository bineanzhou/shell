.class public Lcom/umeng/socialize/utils/ContextUtil;
.super Ljava/lang/Object;
.source "ContextUtil.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$INTER;->CONTEXT_ERROR:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    .line 18
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDataFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    const-string v1, "share.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getIcon()I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0
.end method

.method public static final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/umeng/socialize/utils/ContextUtil;->context:Landroid/content/Context;

    .line 30
    return-void
.end method
