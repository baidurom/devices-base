.class Lcom/android/internal/app/AlertController$AlertParams$1;
.super Lcom/android/internal/app/AlertController$ArrayAdapterEx;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/app/AlertController$ArrayAdapterEx",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic val$listView:Lcom/android/internal/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p6, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/app/AlertController$ArrayAdapterEx;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 940
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController$ArrayAdapterEx;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 941
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_0

    .line 942
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    .line 943
    .local v0, isItemChecked:Z
    if-eqz v0, :cond_0

    .line 944
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$1;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 947
    .end local v0           #isItemChecked:Z
    :cond_0
    return-object v1
.end method
