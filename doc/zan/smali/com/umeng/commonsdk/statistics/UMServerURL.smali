.class public Lcom/umeng/commonsdk/statistics/UMServerURL;
.super Ljava/lang/Object;
.source "UMServerURL.java"


# static fields
.field public static DEFAULT_URL:Ljava/lang/String;

.field public static OVERSEA_DEFAULT_URL:Ljava/lang/String;

.field public static OVERSEA_SECONDARY_URL:Ljava/lang/String;

.field public static SECONDARY_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "https://ulogs.umeng.com/unify_logs"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    .line 12
    const-string v0, "https://ulogs.umengcloud.com/unify_logs"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    .line 20
    const-string v0, "https://alogus.umeng.com/unify_logs"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_DEFAULT_URL:Ljava/lang/String;

    .line 22
    const-string v0, "https://alogsus.umeng.com/unify_logs"

    sput-object v0, Lcom/umeng/commonsdk/statistics/UMServerURL;->OVERSEA_SECONDARY_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
