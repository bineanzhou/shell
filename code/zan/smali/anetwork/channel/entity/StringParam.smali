.class public Lanetwork/channel/entity/StringParam;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/Param;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lanetwork/channel/entity/StringParam;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lanetwork/channel/entity/StringParam;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lanetwork/channel/entity/StringParam;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lanetwork/channel/entity/StringParam;->b:Ljava/lang/String;

    return-object v0
.end method
