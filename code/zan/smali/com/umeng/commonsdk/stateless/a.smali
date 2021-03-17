.class public Lcom/umeng/commonsdk/stateless/a;
.super Ljava/lang/Object;
.source "UMSLConfig.java"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:J = 0x0L

.field public static d:J = 0x0L

.field public static final e:Ljava/lang/String; = "stateless"

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "native"

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->b:Ljava/lang/String;

    .line 14
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/umeng/commonsdk/stateless/a;->c:J

    .line 15
    const-wide/32 v0, 0x32000

    sput-wide v0, Lcom/umeng/commonsdk/stateless/a;->d:J

    .line 34
    const-string v0, "https://plbslog.umeng.com"

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->f:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->f:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->g:Ljava/lang/String;

    .line 41
    const-string v0, "https://ouplog.umeng.com"

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
