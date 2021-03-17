.class public Lcom/umeng/socialize/utils/UmengText$DROPBOX;
.super Ljava/lang/Object;
.source "UmengText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/utils/UmengText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DROPBOX"
.end annotation


# static fields
.field public static NEEDACTIVITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-string v0, "[SDB10001]dropbox\u8bf7\u4f20\u5165Activity"

    sput-object v0, Lcom/umeng/socialize/utils/UmengText$DROPBOX;->NEEDACTIVITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
