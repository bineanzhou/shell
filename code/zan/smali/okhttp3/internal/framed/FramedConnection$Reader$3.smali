.class Lokhttp3/internal/framed/FramedConnection$Reader$3;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection$Reader;->a(Lokhttp3/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/Settings;

.field final synthetic c:Lokhttp3/internal/framed/FramedConnection$Reader;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/Settings;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$3;->c:Lokhttp3/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lokhttp3/internal/framed/FramedConnection$Reader$3;->a:Lokhttp3/internal/framed/Settings;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .prologue
    .line 735
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader$3;->c:Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection;->i:Lokhttp3/internal/framed/FrameWriter;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$3;->a:Lokhttp3/internal/framed/Settings;

    invoke-interface {v0, v1}, Lokhttp3/internal/framed/FrameWriter;->a(Lokhttp3/internal/framed/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    goto :goto_0
.end method
