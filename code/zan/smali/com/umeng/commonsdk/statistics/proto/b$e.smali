.class public final enum Lcom/umeng/commonsdk/statistics/proto/b$e;
.super Ljava/lang/Enum;
.source "IdSnapshot.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/commonsdk/statistics/proto/b$e;",
        ">;",
        "Lcom/umeng/commonsdk/proguard/s;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/statistics/proto/b$e;

.field public static final enum b:Lcom/umeng/commonsdk/statistics/proto/b$e;

.field public static final enum c:Lcom/umeng/commonsdk/statistics/proto/b$e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/umeng/commonsdk/statistics/proto/b$e;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 67
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/b$e;

    const-string v1, "IDENTITY"

    const-string v2, "identity"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/umeng/commonsdk/statistics/proto/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->a:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/b$e;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/umeng/commonsdk/statistics/proto/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->b:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/b$e;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/umeng/commonsdk/statistics/proto/b$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->c:Lcom/umeng/commonsdk/statistics/proto/b$e;

    .line 66
    new-array v0, v6, [Lcom/umeng/commonsdk/statistics/proto/b$e;

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->a:Lcom/umeng/commonsdk/statistics/proto/b$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->b:Lcom/umeng/commonsdk/statistics/proto/b$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->c:Lcom/umeng/commonsdk/statistics/proto/b$e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->g:[Lcom/umeng/commonsdk/statistics/proto/b$e;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->d:Ljava/util/Map;

    .line 72
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/b$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/b$e;

    .line 73
    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/b$e;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/b$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-short p3, p0, Lcom/umeng/commonsdk/statistics/proto/b$e;->e:S

    .line 118
    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/proto/b$e;->f:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static a(I)Lcom/umeng/commonsdk/statistics/proto/b$e;
    .locals 1

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->a:Lcom/umeng/commonsdk/statistics/proto/b$e;

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->b:Lcom/umeng/commonsdk/statistics/proto/b$e;

    goto :goto_0

    .line 88
    :pswitch_2
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->c:Lcom/umeng/commonsdk/statistics/proto/b$e;

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/b$e;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/b$e;

    return-object v0
.end method

.method public static b(I)Lcom/umeng/commonsdk/statistics/proto/b$e;
    .locals 3

    .prologue
    .line 99
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/proto/b$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/b$e;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/b$e;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/umeng/commonsdk/statistics/proto/b$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/b$e;

    return-object v0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/proto/b$e;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b$e;->g:[Lcom/umeng/commonsdk/statistics/proto/b$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/proto/b$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/proto/b$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 122
    iget-short v0, p0, Lcom/umeng/commonsdk/statistics/proto/b$e;->e:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b$e;->f:Ljava/lang/String;

    return-object v0
.end method
