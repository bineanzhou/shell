.class final Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;
.super Ljava/lang/Object;
.source "ScalarResponseBodyConverters.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/converter/scalars/ScalarResponseBodyConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongResponseBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<",
        "Lokhttp3/ResponseBody;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;

    invoke-direct {v0}, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;-><init>()V

    sput-object v0, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;->a:Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/converter/scalars/ScalarResponseBodyConverters$LongResponseBodyConverter;->a(Lokhttp3/ResponseBody;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
