.class Lcom/tencent/smtt/sdk/CookieManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/CookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/tencent/smtt/sdk/CookieManager;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/CookieManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/CookieManager$a;->e:Lcom/tencent/smtt/sdk/CookieManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
