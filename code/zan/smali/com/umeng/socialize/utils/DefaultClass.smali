.class public Lcom/umeng/socialize/utils/DefaultClass;
.super Ljava/lang/Object;
.source "DefaultClass.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes()[B
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [B

    return-object v0
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "no mac"

    return-object v0
.end method

.method public static getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, ""

    return-object v0
.end method
