.class public Lcom/umeng/commonsdk/framework/UMModuleRegister;
.super Ljava/lang/Object;
.source "UMModuleRegister.java"


# static fields
.field public static final ANALYTICS:Ljava/lang/String; = "analytics"

.field public static final INNER:Ljava/lang/String; = "internal"

.field private static final INNER_EVENT_VALUE_HIGH:I = 0x9000

.field private static final INNER_EVENT_VALUE_LOW:I = 0x8001

.field public static final PUSH:Ljava/lang/String; = "push"

.field private static final PUSH_EVENT_VALUE_HIGH:I = 0x5000

.field private static final PUSH_EVENT_VALUE_LOW:I = 0x4001

.field public static final SHARE:Ljava/lang/String; = "share"

.field private static final SHARE_EVENT_VALUE_HIGH:I = 0x7000

.field private static final SHARE_EVENT_VALUE_LOW:I = 0x6001

.field private static mModuleAppContext:Landroid/content/Context;

.field private static mModuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/framework/UMLogDataProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    .line 16
    sput-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventType2ModuleName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    const-string v0, "analytics"

    .line 47
    const/16 v1, 0x4001

    if-lt p0, v1, :cond_0

    const/16 v1, 0x5000

    if-gt p0, v1, :cond_0

    .line 48
    const-string v0, "push"

    .line 50
    :cond_0
    const/16 v1, 0x6001

    if-lt p0, v1, :cond_1

    const/16 v1, 0x7000

    if-gt p0, v1, :cond_1

    .line 51
    const-string v0, "share"

    .line 53
    :cond_1
    const v1, 0x8001

    if-lt p0, v1, :cond_2

    const v1, 0x9000

    if-gt p0, v1, :cond_2

    .line 54
    const-string v0, "internal"

    .line 56
    :cond_2
    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerAppContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleAppContext:Landroid/content/Context;

    .line 92
    :cond_0
    return-void
.end method

.method public static registerCallback(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 66
    const/4 v1, 0x0

    .line 67
    sget-object v2, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    sget-object v3, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/framework/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    sget-object v1, Lcom/umeng/commonsdk/framework/UMModuleRegister;->mModuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
