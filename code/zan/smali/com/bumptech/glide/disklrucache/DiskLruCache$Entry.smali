.class final Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field a:[Ljava/io/File;

.field b:[Ljava/io/File;

.field final synthetic c:Lcom/bumptech/glide/disklrucache/DiskLruCache;

.field private final d:Ljava/lang/String;

.field private final e:[J

.field private f:Z

.field private g:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

.field private h:J


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 822
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d:Ljava/lang/String;

    .line 824
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->e:[J

    .line 825
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a:[Ljava/io/File;

    .line 826
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b:[Ljava/io/File;

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 830
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 831
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 832
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 834
    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->f(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 836
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;J)J
    .locals 1

    .prologue
    .line 803
    iput-wide p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->g:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->g:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    array-length v0, p1

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->c:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 851
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 855
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 856
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->e:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 861
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;Z)Z
    .locals 0

    .prologue
    .line 803
    iput-boolean p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->f:Z

    return p1
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)[J
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->e:[J

    return-object v0
.end method

.method static synthetic c(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)J
    .locals 2

    .prologue
    .line 803
    iget-wide v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->h:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->a:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->e:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 843
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->b:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method
