.class public Lcom/umeng/message/provider/a$a;
.super Ljava/lang/Object;
.source "MessageConstants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/provider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "/MessageStores/"

.field public static final b:Ljava/lang/String; = "/MsgTemps/"

.field public static final c:Ljava/lang/String; = "/MsgAlias/"

.field public static final d:Ljava/lang/String; = "/MsgAliasDeleteAll/"

.field public static final e:Ljava/lang/String; = "/MsgLogStores/"

.field public static final f:Ljava/lang/String; = "/MsgLogIdTypeStores/"

.field public static final g:Ljava/lang/String; = "/MsgLogStoreForAgoos/"

.field public static final h:Ljava/lang/String; = "/MsgLogIdTypeStoreForAgoos/"

.field public static final i:Ljava/lang/String; = "/MsgConfigInfos/"

.field public static final j:Ljava/lang/String; = "/InAppLogStores/"

.field public static final k:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.umeng.message"

.field public static final l:Ljava/lang/String; = "vnd.android.cursor.item/vnd.umeng.message"

.field private static final m:Ljava/lang/String; = "content://"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method
