.class public Lanetwork/channel/entity/RequestImpl;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/Request;


# static fields
.field private static final a:Ljava/lang/String; = "anet.RequestImpl"


# instance fields
.field private b:Ljava/net/URI;

.field private c:Ljava/net/URL;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Header;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lanet/channel/request/BodyEntry;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    .line 29
    const-string v0, "GET"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    .line 32
    const-string v0, "utf-8"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    .line 29
    const-string v0, "GET"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    .line 32
    const-string v0, "utf-8"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    .line 33
    iput-object v3, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 55
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    const-string v0, "anet.RequestImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url MalformedURLException error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    .line 29
    const-string v0, "GET"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    .line 32
    const-string v0, "utf-8"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 45
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URI;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    .line 29
    const-string v0, "GET"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    .line 32
    const-string v0, "utf-8"

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 50
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/net/URL;

    .line 51
    return-void
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URI;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    .line 164
    return-void
.end method

.method public a(Lanet/channel/request/BodyEntry;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 189
    return-void
.end method

.method public a(Lanetwork/channel/Header;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public a(Lanetwork/channel/IBodyHandler;)V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lanetwork/channel/entity/BodyHandlerEntry;

    invoke-direct {v0, p1}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>(Lanetwork/channel/IBodyHandler;)V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    .line 97
    :cond_2
    new-instance v0, Lanetwork/channel/entity/BasicHeader;

    invoke-direct {v0, p1, p2}, Lanetwork/channel/entity/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/net/URI;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URI;

    .line 72
    return-void
.end method

.method public a(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/net/URL;

    .line 207
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    .line 88
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;)[Lanetwork/channel/Header;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return-object v2

    .line 134
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 137
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    invoke-interface {v0}, Lanetwork/channel/Header;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    invoke-interface {v0}, Lanetwork/channel/Header;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 142
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lanetwork/channel/Header;

    .line 143
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_2
    move-object v2, v0

    .line 147
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public b()Ljava/net/URL;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/net/URL;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 220
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->k:I

    .line 221
    return-void
.end method

.method public b(Lanetwork/channel/Header;)V
    .locals 4

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    .line 114
    :cond_2
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 116
    :goto_1
    if-ge v1, v2, :cond_3

    .line 117
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Header;

    invoke-interface {v0}, Lanetwork/channel/Header;->a()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-interface {p1}, Lanetwork/channel/Header;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    .line 285
    :cond_1
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->g:Ljava/util/List;

    .line 180
    return-void
.end method

.method public b(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    const-string v1, "EnableCookie"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lanetwork/channel/entity/RequestImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 262
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->l:I

    .line 225
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public c(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    const-string v1, "EnableSchemeReplace"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lanetwork/channel/entity/RequestImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 270
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    return-object v0
.end method

.method public d(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->m:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->m:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->n:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    return v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->g:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lanetwork/channel/IBodyHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lanet/channel/request/BodyEntry;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->k:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->l:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    const-string v0, "false"

    const-string v1, "EnableCookie"

    invoke-virtual {p0, v1}, Lanetwork/channel/entity/RequestImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    const-string v0, "false"

    const-string v1, "EnableSchemeReplace"

    invoke-virtual {p0, v1}, Lanetwork/channel/entity/RequestImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    return-object v0
.end method
