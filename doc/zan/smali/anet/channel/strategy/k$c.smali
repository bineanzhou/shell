.class public Lanet/channel/strategy/k$c;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Lanet/channel/strategy/k$b;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string v0, "ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/k$c;->a:Ljava/lang/String;

    .line 128
    const-string v0, "unit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/k$c;->b:Ljava/lang/String;

    .line 129
    const-string v0, "uid"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/k$c;->d:Ljava/lang/String;

    .line 130
    const-string v0, "utdid"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/k$c;->e:Ljava/lang/String;

    .line 131
    const-string v0, "cv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/k$c;->f:I

    .line 132
    const-string v0, "fcl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/k$c;->g:I

    .line 133
    const-string v0, "fct"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lanet/channel/strategy/k$c;->h:I

    .line 134
    const-string v0, "dns"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 137
    new-array v0, v2, [Lanet/channel/strategy/k$b;

    iput-object v0, p0, Lanet/channel/strategy/k$c;->c:[Lanet/channel/strategy/k$b;

    .line 138
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 139
    iget-object v3, p0, Lanet/channel/strategy/k$c;->c:[Lanet/channel/strategy/k$b;

    new-instance v4, Lanet/channel/strategy/k$b;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lanet/channel/strategy/k$b;-><init>(Lorg/json/JSONObject;)V

    aput-object v4, v3, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iput-object v2, p0, Lanet/channel/strategy/k$c;->c:[Lanet/channel/strategy/k$b;

    .line 144
    :cond_1
    return-void
.end method
