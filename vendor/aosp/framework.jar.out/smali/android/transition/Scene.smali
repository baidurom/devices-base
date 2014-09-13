.class public final Landroid/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# static fields
.field private static sScenes:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/transition/Scene;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mEnterAction:Ljava/lang/Runnable;

.field mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/ViewGroup;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/transition/Scene;->sScenes:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "sceneRoot"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 82
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1
    .parameter "sceneRoot"
    .parameter "layoutId"
    .parameter "context"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 101
    iput-object p3, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    .line 102
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 103
    iput p2, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "sceneRoot"
    .parameter "layout"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    .line 117
    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 118
    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/ViewGroup;

    .line 119
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;
    .locals 1
    .parameter "view"

    .prologue
    .line 199
    const v0, 0x1020262

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;
    .locals 4
    .parameter "sceneRoot"
    .parameter "layoutId"
    .parameter "context"

    .prologue
    .line 56
    sget-object v3, Landroid/transition/Scene;->sScenes:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 57
    .local v2, scenes:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    if-nez v2, :cond_0

    .line 58
    new-instance v2, Landroid/util/SparseArray;

    .end local v2           #scenes:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 59
    .restart local v2       #scenes:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/transition/Scene;>;"
    sget-object v3, Landroid/transition/Scene;->sScenes:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    .line 62
    .local v0, scene:Landroid/transition/Scene;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 67
    .end local v0           #scene:Landroid/transition/Scene;
    .local v1, scene:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 65
    .end local v1           #scene:Ljava/lang/Object;
    .restart local v0       #scene:Landroid/transition/Scene;
    :cond_1
    new-instance v0, Landroid/transition/Scene;

    .end local v0           #scene:Landroid/transition/Scene;
    invoke-direct {v0, p0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    .line 66
    .restart local v0       #scene:Landroid/transition/Scene;
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 67
    .restart local v1       #scene:Ljava/lang/Object;
    goto :goto_0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V
    .locals 1
    .parameter "view"
    .parameter "scene"

    .prologue
    .line 188
    const v0, 0x1020262

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 189
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 160
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Scene;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_3

    .line 165
    iget-object v0, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 176
    :cond_2
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V

    .line 177
    return-void

    .line 167
    :cond_3
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/transition/Scene;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 145
    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 221
    iput-object p1, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    .line 222
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 242
    iput-object p1, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 243
    return-void
.end method
