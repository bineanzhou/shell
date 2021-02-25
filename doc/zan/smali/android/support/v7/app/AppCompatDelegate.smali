.class public abstract Landroid/support/v7/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegate$NightMode;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "AppCompatDelegate"

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x0

.field public static final e:I = -0x1

.field static final f:I = -0x64

.field public static final g:I = 0x6c

.field public static final h:I = 0x6d

.field public static final i:I = 0xa

.field private static j:I

.field private static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, -0x1

    sput v0, Landroid/support/v7/app/AppCompatDelegate;->j:I

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->k:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
    .locals 2

    .prologue
    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 200
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplN;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplN;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 209
    :goto_0
    return-object v0

    .line 202
    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 203
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV23;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    goto :goto_0

    .line 204
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 205
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    goto :goto_0

    .line 206
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 207
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV11;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    goto :goto_0

    .line 209
    :cond_3
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 529
    sput-boolean p0, Landroid/support/v7/app/AppCompatDelegate;->k:Z

    .line 530
    return-void
.end method

.method public static f(I)V
    .locals 2

    .prologue
    .line 472
    packed-switch p0, :pswitch_data_0

    .line 480
    const-string v0, "AppCompatDelegate"

    const-string v1, "setDefaultNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_0
    return-void

    .line 477
    :pswitch_0
    sput p0, Landroid/support/v7/app/AppCompatDelegate;->j:I

    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 492
    sget v0, Landroid/support/v7/app/AppCompatDelegate;->j:I

    return v0
.end method

.method public static m()Z
    .locals 1

    .prologue
    .line 539
    sget-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->k:Z

    return v0
.end method


# virtual methods
.method public abstract a()Landroid/support/v7/app/ActionBar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .param p1    # Landroid/support/v7/view/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(I)Landroid/view/View;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/support/v7/widget/Toolbar;)V
    .param p1    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract b(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract c(I)Z
.end method

.method public abstract d()V
.end method

.method public abstract d(I)Z
.end method

.method public abstract e()V
.end method

.method public abstract e(I)V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract i()V
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method
