.class public Landroid/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:[Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public H:Landroid/database/Cursor;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public M:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public N:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:Landroid/content/DialogInterface$OnCancelListener;

.field public q:Landroid/content/DialogInterface$OnDismissListener;

.field public r:Landroid/content/DialogInterface$OnKeyListener;

.field public s:[Ljava/lang/CharSequence;

.field public t:Landroid/widget/ListAdapter;

.field public u:Landroid/content/DialogInterface$OnClickListener;

.field public v:I

.field public w:Landroid/view/View;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->c:I

    .line 851
    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->e:I

    .line 874
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->B:Z

    .line 878
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->F:I

    .line 886
    iput-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->N:Z

    .line 902
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    .line 903
    iput-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->o:Z

    .line 904
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    .line 905
    return-void
.end method

.method private b(Landroid/support/v7/app/AlertController;)V
    .locals 10

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 965
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    iget v1, p1, Landroid/support/v7/app/AlertController;->l:I

    const/4 v2, 0x0

    .line 966
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/app/AlertController$RecycleListView;

    .line 969
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->D:Z

    if-eqz v0, :cond_5

    .line 970
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 971
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$1;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget v3, p1, Landroid/support/v7/app/AlertController;->m:I

    iget-object v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->s:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/AlertController$AlertParams$1;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    .line 1031
    :goto_0
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->M:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 1032
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->M:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->a(Landroid/widget/ListView;)V

    .line 1038
    :cond_0
    iput-object v0, p1, Landroid/support/v7/app/AlertController;->j:Landroid/widget/ListAdapter;

    .line 1039
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->F:I

    iput v0, p1, Landroid/support/v7/app/AlertController;->k:I

    .line 1041
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_9

    .line 1042
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$3;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AlertController$AlertParams$3;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1065
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 1066
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1069
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->E:Z

    if-eqz v0, :cond_a

    .line 1070
    invoke-virtual {v6, v9}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1074
    :cond_3
    :goto_2
    iput-object v6, p1, Landroid/support/v7/app/AlertController;->b:Landroid/widget/ListView;

    .line 1075
    return-void

    .line 986
    :cond_4
    new-instance v1, Landroid/support/v7/app/AlertController$AlertParams$2;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/AlertController$AlertParams$2;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    move-object v0, v1

    goto :goto_0

    .line 1015
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->E:Z

    if-eqz v0, :cond_6

    .line 1016
    iget v2, p1, Landroid/support/v7/app/AlertController;->n:I

    .line 1021
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    .line 1022
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Landroid/support/v7/app/AlertController$AlertParams;->I:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_0

    .line 1018
    :cond_6
    iget v2, p1, Landroid/support/v7/app/AlertController;->o:I

    goto :goto_3

    .line 1024
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_8

    .line 1025
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->t:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 1027
    :cond_8
    new-instance v0, Landroid/support/v7/app/AlertController$CheckedItemAdapter;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->s:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1051
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_1

    .line 1052
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$4;

    invoke-direct {v0, p0, v6, p1}, Landroid/support/v7/app/AlertController$AlertParams$4;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1071
    :cond_a
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->D:Z

    if-eqz v0, :cond_3

    .line 1072
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/support/v7/app/AlertController;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 908
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->g:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 909
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->b(Landroid/view/View;)V

    .line 924
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 927
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 928
    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->i:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 931
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 932
    const/4 v0, -0x2

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->k:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 935
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 936
    const/4 v0, -0x3

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->m:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 941
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->s:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->H:Landroid/database/Cursor;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->t:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    .line 942
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertController$AlertParams;->b(Landroid/support/v7/app/AlertController;)V

    .line 944
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->w:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 945
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->B:Z

    if-eqz v0, :cond_c

    .line 946
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->w:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->x:I

    iget v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->y:I

    iget v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->z:I

    iget v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->A:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;IIII)V

    .line 962
    :cond_7
    :goto_1
    return-void

    .line 911
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 912
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 914
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 915
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->a(Landroid/graphics/drawable/Drawable;)V

    .line 917
    :cond_a
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->c:I

    if-eqz v0, :cond_b

    .line 918
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->c:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->c(I)V

    .line 920
    :cond_b
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->e:I

    if-eqz v0, :cond_0

    .line 921
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->e:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->c(I)V

    goto :goto_0

    .line 949
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->w:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->c(Landroid/view/View;)V

    goto :goto_1

    .line 951
    :cond_d
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->v:I

    if-eqz v0, :cond_7

    .line 952
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->v:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->a(I)V

    goto :goto_1
.end method
