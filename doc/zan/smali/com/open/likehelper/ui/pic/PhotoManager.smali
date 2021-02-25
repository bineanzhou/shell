.class public Lcom/open/likehelper/ui/pic/PhotoManager;
.super Ljava/lang/Object;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;,
        Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Lcom/open/likehelper/ui/pic/PhotoManager;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    sput-object v0, Lcom/open/likehelper/ui/pic/PhotoManager;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoManager;->c:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/open/likehelper/ui/pic/PhotoManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/open/likehelper/ui/pic/PhotoManager;->b:Lcom/open/likehelper/ui/pic/PhotoManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoManager;

    invoke-direct {v0, p0}, Lcom/open/likehelper/ui/pic/PhotoManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/open/likehelper/ui/pic/PhotoManager;->b:Lcom/open/likehelper/ui/pic/PhotoManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/open/likehelper/ui/pic/PhotoManager;->b:Lcom/open/likehelper/ui/pic/PhotoManager;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/open/likehelper/ui/pic/Album;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x5

    .line 52
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/open/likehelper/ui/pic/PhotoManager;->a:[Ljava/lang/String;

    const-string v5, "datetaken desc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 55
    if-nez v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/open/likehelper/ui/pic/PhotoManager;->c:Landroid/content/Context;

    const v1, 0x7f07002b

    invoke-static {v0, v1}, Lcom/open/likehelper/util/ToastUtils;->a(Landroid/content/Context;I)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 61
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    const/4 v5, 0x6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    const/4 v6, 0x7

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 68
    new-instance v7, Lcom/open/likehelper/ui/pic/Album;

    invoke-direct {v7}, Lcom/open/likehelper/ui/pic/Album;-><init>()V

    .line 69
    invoke-virtual {v7, v4}, Lcom/open/likehelper/ui/pic/Album;->a(Ljava/lang/String;)V

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/open/likehelper/ui/pic/Album;->a(I)V

    .line 71
    invoke-virtual {v7, v5}, Lcom/open/likehelper/ui/pic/Album;->c(Ljava/lang/String;)V

    .line 72
    const-string v4, "1"

    invoke-virtual {v7, v4}, Lcom/open/likehelper/ui/pic/Album;->b(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v7}, Lcom/open/likehelper/ui/pic/Album;->a()Ljava/util/List;

    move-result-object v4

    new-instance v8, Lcom/open/likehelper/ui/pic/Photo;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v8, v3, v5, v6}, Lcom/open/likehelper/ui/pic/Photo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/open/likehelper/ui/pic/Album;

    .line 77
    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Album;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/open/likehelper/ui/pic/Album;->b(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcom/open/likehelper/ui/pic/Album;->a()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/open/likehelper/ui/pic/Photo;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v3, v5, v6}, Lcom/open/likehelper/ui/pic/Photo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 87
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/open/likehelper/ui/pic/PhotoManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/open/likehelper/ui/pic/PhotoManager;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;

    invoke-direct {v0, p0, p1}, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;-><init>(Lcom/open/likehelper/ui/pic/PhotoManager;Lcom/open/likehelper/ui/pic/PhotoManager$OnAlbumListGetListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/open/likehelper/ui/pic/PhotoManager$GetPhotoAlbumList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method
