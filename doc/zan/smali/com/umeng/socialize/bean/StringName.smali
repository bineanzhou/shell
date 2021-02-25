.class public Lcom/umeng/socialize/bean/StringName;
.super Ljava/lang/Object;
.source "StringName.java"


# static fields
.field public static female:Ljava/lang/String;

.field public static male:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "\u5973"

    sput-object v0, Lcom/umeng/socialize/bean/StringName;->female:Ljava/lang/String;

    .line 9
    const-string v0, "\u7537"

    sput-object v0, Lcom/umeng/socialize/bean/StringName;->male:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
