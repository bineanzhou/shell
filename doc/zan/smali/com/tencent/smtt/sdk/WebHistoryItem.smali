.class public Lcom/tencent/smtt/sdk/WebHistoryItem;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

.field private b:Landroid/webkit/WebHistoryItem;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    return-void
.end method

.method static a(Landroid/webkit/WebHistoryItem;)Lcom/tencent/smtt/sdk/WebHistoryItem;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/smtt/sdk/WebHistoryItem;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/WebHistoryItem;-><init>()V

    iput-object p0, v0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    goto :goto_0
.end method

.method static a(Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;)Lcom/tencent/smtt/sdk/WebHistoryItem;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/smtt/sdk/WebHistoryItem;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/WebHistoryItem;-><init>()V

    iput-object p0, v0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    goto :goto_0
.end method


# virtual methods
.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->a:Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebHistoryItem;->b:Landroid/webkit/WebHistoryItem;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
