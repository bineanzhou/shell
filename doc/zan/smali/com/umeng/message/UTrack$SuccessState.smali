.class final enum Lcom/umeng/message/UTrack$SuccessState;
.super Ljava/lang/Enum;
.source "UTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/UTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SuccessState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/message/UTrack$SuccessState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/message/UTrack$SuccessState;

.field public static final enum b:Lcom/umeng/message/UTrack$SuccessState;

.field public static final enum c:Lcom/umeng/message/UTrack$SuccessState;

.field public static final enum d:Lcom/umeng/message/UTrack$SuccessState;

.field private static final synthetic e:[Lcom/umeng/message/UTrack$SuccessState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/umeng/message/UTrack$SuccessState;

    const-string v1, "SUCCESS_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/umeng/message/UTrack$SuccessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/message/UTrack$SuccessState;->a:Lcom/umeng/message/UTrack$SuccessState;

    new-instance v0, Lcom/umeng/message/UTrack$SuccessState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/umeng/message/UTrack$SuccessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/message/UTrack$SuccessState;->b:Lcom/umeng/message/UTrack$SuccessState;

    new-instance v0, Lcom/umeng/message/UTrack$SuccessState;

    const-string v1, "FAIL_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/umeng/message/UTrack$SuccessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/message/UTrack$SuccessState;->c:Lcom/umeng/message/UTrack$SuccessState;

    new-instance v0, Lcom/umeng/message/UTrack$SuccessState;

    const-string v1, "FAIL_PARAM"

    invoke-direct {v0, v1, v5}, Lcom/umeng/message/UTrack$SuccessState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/umeng/message/UTrack$SuccessState;

    sget-object v1, Lcom/umeng/message/UTrack$SuccessState;->a:Lcom/umeng/message/UTrack$SuccessState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/message/UTrack$SuccessState;->b:Lcom/umeng/message/UTrack$SuccessState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/message/UTrack$SuccessState;->c:Lcom/umeng/message/UTrack$SuccessState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/message/UTrack$SuccessState;->d:Lcom/umeng/message/UTrack$SuccessState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/umeng/message/UTrack$SuccessState;->e:[Lcom/umeng/message/UTrack$SuccessState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/message/UTrack$SuccessState;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/umeng/message/UTrack$SuccessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UTrack$SuccessState;

    return-object v0
.end method

.method public static values()[Lcom/umeng/message/UTrack$SuccessState;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/umeng/message/UTrack$SuccessState;->e:[Lcom/umeng/message/UTrack$SuccessState;

    invoke-virtual {v0}, [Lcom/umeng/message/UTrack$SuccessState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/message/UTrack$SuccessState;

    return-object v0
.end method
