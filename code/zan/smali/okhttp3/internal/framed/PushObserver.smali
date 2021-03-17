.class public interface abstract Lokhttp3/internal/framed/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final a:Lokhttp3/internal/framed/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lokhttp3/internal/framed/PushObserver$1;

    invoke-direct {v0}, Lokhttp3/internal/framed/PushObserver$1;-><init>()V

    sput-object v0, Lokhttp3/internal/framed/PushObserver;->a:Lokhttp3/internal/framed/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract a(ILokhttp3/internal/framed/ErrorCode;)V
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract a(ILokio/BufferedSource;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
