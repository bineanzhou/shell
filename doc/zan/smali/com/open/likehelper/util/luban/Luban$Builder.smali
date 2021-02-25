.class public Lcom/open/likehelper/util/luban/Luban$Builder;
.super Ljava/lang/Object;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/open/likehelper/util/luban/Luban;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/open/likehelper/util/luban/OnCompressListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/16 v0, 0x64

    iput v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->e:I

    .line 209
    iput-object p1, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->a:Landroid/content/Context;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->d:Ljava/util/List;

    .line 211
    return-void
.end method

.method static synthetic a(Lcom/open/likehelper/util/luban/Luban$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/open/likehelper/util/luban/Luban$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Lcom/open/likehelper/util/luban/Luban;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/open/likehelper/util/luban/Luban;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/open/likehelper/util/luban/Luban;-><init>(Lcom/open/likehelper/util/luban/Luban$Builder;Lcom/open/likehelper/util/luban/Luban$1;)V

    return-object v0
.end method

.method static synthetic c(Lcom/open/likehelper/util/luban/Luban$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/open/likehelper/util/luban/Luban$Builder;)Lcom/open/likehelper/util/luban/OnCompressListener;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->f:Lcom/open/likehelper/util/luban/OnCompressListener;

    return-object v0
.end method

.method static synthetic e(Lcom/open/likehelper/util/luban/Luban$Builder;)I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->e:I

    return v0
.end method


# virtual methods
.method public a(I)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 0

    .prologue
    .line 233
    return-object p0
.end method

.method public a(Lcom/open/likehelper/util/luban/OnCompressListener;)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->f:Lcom/open/likehelper/util/luban/OnCompressListener;

    .line 238
    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->d:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/open/likehelper/util/luban/Luban$Builder;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/open/likehelper/util/luban/Luban$Builder;->c()Lcom/open/likehelper/util/luban/Luban;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;Landroid/content/Context;)V

    .line 267
    return-void
.end method

.method public b(I)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 0

    .prologue
    .line 258
    iput p1, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->e:I

    .line 259
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->b:Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/open/likehelper/util/luban/Luban$Builder;->c()Lcom/open/likehelper/util/luban/Luban;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/open/likehelper/util/luban/Luban;->b(Lcom/open/likehelper/util/luban/Luban;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/open/likehelper/util/luban/Luban$Builder;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->c:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/open/likehelper/util/luban/Luban$Builder;->c()Lcom/open/likehelper/util/luban/Luban;

    move-result-object v0

    iget-object v1, p0, Lcom/open/likehelper/util/luban/Luban$Builder;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/open/likehelper/util/luban/Luban;->a(Lcom/open/likehelper/util/luban/Luban;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
