.class public Lcom/tencent/smtt/sdk/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    iput v0, p0, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/smtt/sdk/a/d$a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/a/d$a;->e:Ljava/lang/String;

    return-void
.end method
