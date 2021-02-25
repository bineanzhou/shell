.class public final Landroid/support/v7/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static F:Ljava/lang/String; = null

.field private static G:Ljava/lang/String; = null

.field private static H:Ljava/lang/String; = null

.field private static I:Ljava/lang/String; = null

.field static final b:I = 0x0

.field private static final c:Ljava/lang/String; = "MenuItemImpl"

.field private static final d:I = 0x3

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:I = 0x4

.field private static final w:I = 0x8

.field private static final x:I = 0x10

.field private static final y:I = 0x20


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/support/v4/view/ActionProvider;

.field private C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private D:Z

.field private E:Landroid/view/ContextMenu$ContextMenuInfo;

.field a:Landroid/support/v7/view/menu/MenuBuilder;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Landroid/content/Intent;

.field private l:C

.field private m:C

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:Landroid/support/v7/view/menu/SubMenuBuilder;

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private s:I

.field private z:I


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:I

    .line 80
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 88
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->z:I

    .line 93
    iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->D:Z

    .line 137
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    .line 138
    iput p3, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:I

    .line 139
    iput p2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->f:I

    .line 140
    iput p4, p0, Landroid/support/v7/view/menu/MenuItemImpl;->g:I

    .line 141
    iput p5, p0, Landroid/support/v7/view/menu/MenuItemImpl;->h:I

    .line 142
    iput-object p6, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:Ljava/lang/CharSequence;

    .line 143
    iput p7, p0, Landroid/support/v7/view/menu/MenuItemImpl;->z:I

    .line 144
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->f()Landroid/content/Context;

    move-result-object v0

    .line 623
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 624
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    .line 625
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2

    .prologue
    .line 611
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    .line 613
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:I

    if-lez v0, :cond_0

    .line 614
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->b(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 617
    return-object p0
.end method

.method public a(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:Ljava/lang/Runnable;

    .line 236
    return-object p0
.end method

.method a(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 366
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .locals 1

    .prologue
    .line 348
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:Landroid/support/v7/view/menu/SubMenuBuilder;

    .line 350
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 351
    return-void
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 549
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 471
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 472
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 152
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->q()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/view/menu/MenuBuilder;->a(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :cond_3
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->h:I

    return v0
.end method

.method public b(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 679
    return-object p0
.end method

.method b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 497
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 498
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 499
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    if-eq v2, v0, :cond_0

    .line 500
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 502
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 498
    goto :goto_0
.end method

.method c()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method c(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 521
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 522
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 523
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 522
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 698
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->z:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v0

    .line 701
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    if-nez v1, :cond_2

    .line 703
    const/4 v0, 0x1

    goto :goto_0

    .line 706
    :cond_2
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 707
    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    :cond_3
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->d(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method d()C
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:C

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    goto :goto_0
.end method

.method e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->d()C

    move-result v0

    .line 300
    if-nez v0, :cond_0

    .line 301
    const-string v0, ""

    .line 324
    :goto_0
    return-object v0

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/view/menu/MenuItemImpl;->F:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    sparse-switch v0, :sswitch_data_0

    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :sswitch_0
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->G:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :sswitch_1
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->H:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 316
    :sswitch_2
    sget-object v0, Landroid/support/v7/view/menu/MenuItemImpl;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 732
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->D:Z

    .line 733
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 734
    return-void
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v0

    .line 688
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 689
    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->c(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuItemImpl;->d()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    .line 636
    :goto_0
    return-object v0

    .line 632
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    .line 634
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    goto :goto_0

    .line 636
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 241
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->f:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->n:Landroid/graphics/drawable/Drawable;

    .line 431
    :goto_0
    return-object v0

    .line 424
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:I

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->f()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:I

    invoke-static {v0, v1}, Landroid/support/v7/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:I

    .line 427
    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 431
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->e:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 259
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->g:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:Landroid/support/v7/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->j:Ljava/lang/CharSequence;

    .line 393
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 397
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_0
    return-object v0

    .line 391
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->b(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 558
    return-void
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->r()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 738
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->D:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 456
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 480
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 506
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 507
    goto :goto_0

    .line 509
    :cond_2
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 572
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->z:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 576
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->z:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 588
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->z:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 722
    iget v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->z:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 723
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    .line 726
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 728
    :cond_1
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 642
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->a(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 246
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:C

    if-ne v0, p1, :cond_0

    .line 254
    :goto_0
    return-object p0

    .line 250
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:C

    .line 252
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    goto :goto_0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 461
    iget v2, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 462
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 463
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    if-eq v2, v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 467
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 462
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->a(Landroid/view/MenuItem;)V

    .line 493
    :goto_0
    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->b(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    .line 194
    :goto_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 196
    return-object p0

    .line 191
    :cond_0
    iget v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->s:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->n:Landroid/graphics/drawable/Drawable;

    .line 446
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:I

    .line 449
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 451
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    iput v1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->o:I

    .line 437
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->n:Landroid/graphics/drawable/Drawable;

    .line 438
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 440
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->k:Landroid/content/Intent;

    .line 227
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 264
    iget-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:C

    if-ne v0, p1, :cond_0

    .line 272
    :goto_0
    return-object p0

    .line 268
    :cond_0
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:C

    .line 270
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 743
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.setOnActionExpandListener()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->r:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 539
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 277
    iput-char p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->l:C

    .line 278
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->m:C

    .line 280
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 282
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    .prologue
    .line 593
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :pswitch_0
    iput p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->z:I

    .line 606
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->b(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 607
    return-void

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->b(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->reset()V

    .line 662
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->A:Landroid/view/View;

    .line 663
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    .line 664
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 665
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->B:Landroid/support/v4/view/ActionProvider;

    new-instance v1, Landroid/support/v7/view/menu/MenuItemImpl$1;

    invoke-direct {v1, p0}, Landroid/support/v7/view/menu/MenuItemImpl$1;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    .line 673
    :cond_1
    return-object p0
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    .line 718
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 373
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:Ljava/lang/CharSequence;

    .line 375
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 377
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->p:Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 381
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 406
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl;->j:Ljava/lang/CharSequence;

    .line 409
    if-nez p1, :cond_0

    .line 410
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:Ljava/lang/CharSequence;

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->c(Z)V

    .line 415
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->a:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder;->a(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 533
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl;->i:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
