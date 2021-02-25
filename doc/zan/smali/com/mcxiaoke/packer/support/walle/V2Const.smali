.class Lcom/mcxiaoke/packer/support/walle/V2Const;
.super Ljava/lang/Object;
.source "V2Const.java"


# static fields
.field public static final a:J = 0x3234206b636f6c42L

.field public static final b:J = 0x20676953204b5041L

.field public static final c:I = 0x20

.field public static final d:I = 0x7109871a

.field public static final e:I = 0x100000

.field public static final f:[B

.field public static final g:I = 0x16

.field public static final h:I = 0x6054b50

.field public static final i:I = 0xa

.field public static final j:I = 0xc

.field public static final k:I = 0x10

.field public static final l:I = 0x14

.field public static final m:I = 0x14

.field public static final n:I = 0x7064b50

.field public static final o:I = 0xffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mcxiaoke/packer/support/walle/V2Const;->f:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x50t
        0x4bt
        0x20t
        0x53t
        0x69t
        0x67t
        0x20t
        0x42t
        0x6ct
        0x6ft
        0x63t
        0x6bt
        0x20t
        0x34t
        0x32t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
