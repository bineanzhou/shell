.class final Lcom/mcxiaoke/packer/support/walle/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->a:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->b:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mcxiaoke/packer/support/walle/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/mcxiaoke/packer/support/walle/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/mcxiaoke/packer/support/walle/Pair;

    invoke-direct {v0, p0, p1}, Lcom/mcxiaoke/packer/support/walle/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 48
    :cond_3
    check-cast p1, Lcom/mcxiaoke/packer/support/walle/Pair;

    .line 50
    iget-object v2, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->a:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/mcxiaoke/packer/support/walle/Pair;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/mcxiaoke/packer/support/walle/Pair;->a:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 51
    :cond_6
    iget-object v2, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->b:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->b:Ljava/lang/Object;

    iget-object v1, p1, Lcom/mcxiaoke/packer/support/walle/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/mcxiaoke/packer/support/walle/Pair;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 57
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/mcxiaoke/packer/support/walle/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 58
    return v0

    :cond_1
    move v0, v1

    .line 56
    goto :goto_0
.end method
