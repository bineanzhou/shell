.class public final enum Lcom/umeng/analytics/MobclickAgent$EScenarioType;
.super Ljava/lang/Enum;
.source "MobclickAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/MobclickAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EScenarioType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/analytics/MobclickAgent$EScenarioType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E_DUM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

.field public static final enum E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

.field public static final enum E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

.field public static final enum E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

.field private static final synthetic b:[Lcom/umeng/analytics/MobclickAgent$EScenarioType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 355
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    const-string v1, "E_UM_NORMAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 357
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    const-string v1, "E_UM_GAME"

    invoke-direct {v0, v1, v4, v4}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 359
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    const-string v1, "E_DUM_NORMAL"

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v5, v2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 361
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    const-string v1, "E_DUM_GAME"

    const/16 v2, 0xa1

    invoke-direct {v0, v1, v6, v2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    .line 353
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_DUM_GAME:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->b:[Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 366
    iput p3, p0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->a:I

    .line 367
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/MobclickAgent$EScenarioType;
    .locals 1

    .prologue
    .line 353
    const-class v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    return-object v0
.end method

.method public static values()[Lcom/umeng/analytics/MobclickAgent$EScenarioType;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->b:[Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {v0}, [Lcom/umeng/analytics/MobclickAgent$EScenarioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->a:I

    return v0
.end method
