.class Lokhttp3/internal/framed/FramedConnection$Reader$2;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection$Reader;->a(ZLokhttp3/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/FramedConnection$Reader;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$2;->a:Lokhttp3/internal/framed/FramedConnection$Reader;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$Reader$2;->a:Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->f(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$Reader$2;->a:Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v1, v1, Lokhttp3/internal/framed/FramedConnection$Reader;->c:Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/FramedConnection$Listener;->a(Lokhttp3/internal/framed/FramedConnection;)V

    .line 719
    return-void
.end method
