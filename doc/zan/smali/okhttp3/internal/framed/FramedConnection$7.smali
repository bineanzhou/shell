.class Lokhttp3/internal/framed/FramedConnection$7;
.super Lokhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/FramedConnection;->c(ILokhttp3/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lokhttp3/internal/framed/ErrorCode;

.field final synthetic d:Lokhttp3/internal/framed/FramedConnection;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lokhttp3/internal/framed/FramedConnection$7;->d:Lokhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lokhttp3/internal/framed/FramedConnection$7;->a:I

    iput-object p5, p0, Lokhttp3/internal/framed/FramedConnection$7;->c:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$7;->d:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->h(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lokhttp3/internal/framed/FramedConnection$7;->a:I

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection$7;->c:Lokhttp3/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/PushObserver;->a(ILokhttp3/internal/framed/ErrorCode;)V

    .line 890
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection$7;->d:Lokhttp3/internal/framed/FramedConnection;

    monitor-enter v1

    .line 891
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection$7;->d:Lokhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lokhttp3/internal/framed/FramedConnection;->i(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection$7;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 892
    monitor-exit v1

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
