.class Lcom/tencent/smtt/sdk/z$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/z$c;->a:Landroid/webkit/SslErrorHandler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/z$c;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public proceed()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/z$c;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
