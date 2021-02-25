.class public Lcom/umeng/socialize/net/dplus/cache/CacheApi;
.super Ljava/lang/Object;
.source "CacheApi.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static e:Lcom/umeng/socialize/net/dplus/cache/CacheApi;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->e:Lcom/umeng/socialize/net/dplus/cache/CacheApi;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->d:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    invoke-direct {p0}, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    .line 35
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lcom/umeng/socialize/net/dplus/cache/CacheApi;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->e:Lcom/umeng/socialize/net/dplus/cache/CacheApi;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/net/dplus/cache/CacheApi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->e:Lcom/umeng/socialize/net/dplus/cache/CacheApi;

    .line 29
    :cond_0
    sget-object v0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->e:Lcom/umeng/socialize/net/dplus/cache/CacheApi;

    return-object v0
.end method


# virtual methods
.method public checkSize(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    if-nez v0, :cond_0

    .line 47
    const-wide/16 v0, 0x0

    .line 50
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->checkSize(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public read(Ljava/lang/String;Ljava/lang/Class;)Lcom/umeng/socialize/net/dplus/cache/IReader;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->readFile(Ljava/lang/String;Ljava/lang/Class;)Lcom/umeng/socialize/net/dplus/cache/IReader;

    move-result-object v0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/dplus/cache/CacheApi;->c:Lcom/umeng/socialize/net/dplus/cache/CacheExector;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/net/dplus/cache/CacheExector;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
