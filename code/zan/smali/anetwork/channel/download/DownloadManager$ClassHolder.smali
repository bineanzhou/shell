.class Lanetwork/channel/download/DownloadManager$ClassHolder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassHolder"
.end annotation


# static fields
.field static a:Lanetwork/channel/download/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lanetwork/channel/download/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/download/DownloadManager;-><init>(Lanetwork/channel/download/DownloadManager$1;)V

    sput-object v0, Lanetwork/channel/download/DownloadManager$ClassHolder;->a:Lanetwork/channel/download/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
