.class public Lcom/umeng/analytics/pro/b;
.super Ljava/lang/Object;
.source "UContent.java"


# static fields
.field public static final A:Ljava/lang/String; = "traffic"

.field public static final B:Ljava/lang/String; = "upload_traffic"

.field public static final C:Ljava/lang/String; = "download_traffic"

.field public static final D:Ljava/lang/String; = "activate_msg"

.field public static final E:Ljava/lang/String; = "ts"

.field public static final F:Ljava/lang/String; = "group_info"

.field public static final G:Ljava/lang/String; = "active_user"

.field public static final H:Ljava/lang/String; = "provider"

.field public static final I:Ljava/lang/String; = "puid"

.field public static final J:Ljava/lang/String; = "error"

.field public static final K:Ljava/lang/String; = "ts"

.field public static final L:Ljava/lang/String; = "error_source"

.field public static final M:Ljava/lang/String; = "context"

.field public static final N:Ljava/lang/String; = "ekv"

.field public static final O:Ljava/lang/String; = "gkv"

.field public static final P:Ljava/lang/String; = "id"

.field public static final Q:Ljava/lang/String; = "ts"

.field public static final R:Ljava/lang/String; = "du"

.field public static final S:Ljava/lang/String; = "userlevel"

.field public static final T:Ljava/lang/String; = "$st_fl"

.field public static final U:Ljava/lang/String; = "dplus"

.field public static final V:Ljava/lang/String; = "analytics"

.field public static final W:Ljava/lang/String; = "content"

.field public static final X:Ljava/lang/String; = "header"

.field public static final Y:Ljava/lang/String; = "events"

.field public static final Z:Ljava/lang/String; = "_$!ts"

.field public static final a:Ljava/lang/String; = "appkey"

.field public static final aa:Ljava/lang/String; = "_$!id"

.field public static final ab:Ljava/lang/String; = "_$!sp"

.field public static final ac:Ljava/lang/String; = "session"

.field public static final ad:Ljava/lang/String; = "_$!s_b"

.field public static final ae:Ljava/lang/String; = "_$!ts_b"

.field public static final af:Ljava/lang/String; = "_$!s_e"

.field public static final ag:Ljava/lang/String; = "_$!ts_e"

.field public static final ah:Ljava/lang/String; = "pageview"

.field public static final ai:Ljava/lang/String; = "_$!pv_b"

.field public static final aj:Ljava/lang/String; = "_$!ts"

.field public static final ak:Ljava/lang/String; = "versioncode"

.field public static final al:Ljava/lang/String; = "versionname"

.field public static final am:Ljava/lang/String; = "userlevel"

.field public static final an:Ljava/lang/String; = "eof"

.field public static final ao:Ljava/lang/String; = "exception"

.field public static final ap:Ljava/lang/String; = "_$!deep_link"

.field public static final aq:Ljava/lang/String; = "_$!link"

.field public static final ar:[Ljava/lang/String;

.field public static final as:[Ljava/lang/String;

.field public static final at:[Ljava/lang/String;

.field public static final au:[Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "channel"

.field public static final c:Ljava/lang/String; = "secret"

.field public static final d:Ljava/lang/String; = "app_version"

.field public static final e:Ljava/lang/String; = "version_code"

.field public static final f:Ljava/lang/String; = "wrapper_type"

.field public static final g:Ljava/lang/String; = "wrapper_version"

.field public static final h:Ljava/lang/String; = "sdk_version"

.field public static final i:Ljava/lang/String; = "vertical_type"

.field public static final j:Ljava/lang/String; = "device_id"

.field public static final k:Ljava/lang/String; = "device_model"

.field public static final l:Ljava/lang/String; = "$pr_ve"

.field public static final m:Ljava/lang/String; = "$ud_da"

.field public static final n:Ljava/lang/String; = "sessions"

.field public static final o:Ljava/lang/String; = "id"

.field public static final p:Ljava/lang/String; = "start_time"

.field public static final q:Ljava/lang/String; = "end_time"

.field public static final r:Ljava/lang/String; = "duration"

.field public static final s:Ljava/lang/String; = "pages"

.field public static final t:Ljava/lang/String; = "autopages"

.field public static final u:Ljava/lang/String; = "page_name"

.field public static final v:Ljava/lang/String; = "duration"

.field public static final w:Ljava/lang/String; = "locations"

.field public static final x:Ljava/lang/String; = "lat"

.field public static final y:Ljava/lang/String; = "lng"

.field public static final z:Ljava/lang/String; = "ts"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_$!deep_link"

    aput-object v1, v0, v3

    const-string v1, "_$!link"

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/analytics/pro/b;->ar:[Ljava/lang/String;

    .line 123
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    const-string v1, "ts"

    aput-object v1, v0, v4

    const-string v1, "du"

    aput-object v1, v0, v5

    const-string v1, "$st_fl"

    aput-object v1, v0, v6

    sput-object v0, Lcom/umeng/analytics/pro/b;->as:[Ljava/lang/String;

    .line 124
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_$!ts"

    aput-object v1, v0, v3

    const-string v1, "_$!id"

    aput-object v1, v0, v4

    const-string v1, "_$!du"

    aput-object v1, v0, v5

    const-string v1, "_$!c"

    aput-object v1, v0, v6

    const-string v1, "$st_fl"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_$!sp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "token"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "country"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "region"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "city"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "browser"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "os"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "device_brand"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "device_version"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "device_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "screen_width"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "screen_height"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "referrer"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "referrer_domain"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "initial_referrer"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "initial_referrer_domain"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "initial_view_time"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "search_engine"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "keyword"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ali_lib"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "utm_source"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "utm_medium"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "utm_term"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "utm_content"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "utm_campaign"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "minute"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "app_version"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/analytics/pro/b;->at:[Ljava/lang/String;

    .line 132
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_$!s_b"

    aput-object v1, v0, v3

    const-string v1, "_$!sp"

    aput-object v1, v0, v4

    const-string v1, "_$!ts_b"

    aput-object v1, v0, v5

    const-string v1, "_$!s_e"

    aput-object v1, v0, v6

    const-string v1, "_$!ts_e"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_$!pv_b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_$!ts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
