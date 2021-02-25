.class Lcom/taobao/accs/net/BaseConnection$1;
.super Ljava/util/LinkedHashMap;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/taobao/accs/data/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/b;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/taobao/accs/net/BaseConnection$1;->a:Lcom/taobao/accs/net/b;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/taobao/accs/net/BaseConnection$1;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
