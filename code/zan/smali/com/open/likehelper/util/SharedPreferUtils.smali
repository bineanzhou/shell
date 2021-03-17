.class public Lcom/open/likehelper/util/SharedPreferUtils;
.super Ljava/lang/Object;
.source "SharedPreferUtils.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/util/SharedPreferUtils;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->b:Landroid/content/SharedPreferences;

    .line 17
    iput-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    .line 46
    iput-object p1, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/open/likehelper/util/SharedPreferUtils;->b:Landroid/content/SharedPreferences;

    .line 48
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/open/likehelper/util/SharedPreferUtils;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public a(IF)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/open/likehelper/util/SharedPreferUtils;->a(Ljava/lang/String;F)V

    .line 74
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/open/likehelper/util/SharedPreferUtils;->a(Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/open/likehelper/util/SharedPreferUtils;->a(Ljava/lang/String;J)V

    .line 94
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/open/likehelper/util/SharedPreferUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/open/likehelper/util/SharedPreferUtils;->a(Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method

.method public b(IF)F
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/open/likehelper/util/SharedPreferUtils;->b(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public b(II)I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/open/likehelper/util/SharedPreferUtils;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(IJ)J
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/open/likehelper/util/SharedPreferUtils;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/open/likehelper/util/SharedPreferUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 161
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method

.method public b(IZ)Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/open/likehelper/util/SharedPreferUtils;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/open/likehelper/util/SharedPreferUtils;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
