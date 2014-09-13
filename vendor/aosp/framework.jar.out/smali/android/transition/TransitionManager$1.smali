.class final Landroid/transition/TransitionManager$1;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$transition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/transition/Transition;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Landroid/transition/TransitionManager$1;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/transition/TransitionManager$1;->val$transition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .prologue
    .line 213
    iget-object v5, p0, Landroid/transition/TransitionManager$1;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 214
    invoke-static {}, Landroid/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Landroid/transition/TransitionManager$1;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    #calls: Landroid/transition/TransitionManager;->getRunningTransitions()Landroid/util/ArrayMap;
    invoke-static {}, Landroid/transition/TransitionManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v4

    .line 218
    .local v4, runningTransitions:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    iget-object v5, p0, Landroid/transition/TransitionManager$1;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 219
    .local v0, currentTransitions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    const/4 v2, 0x0

    .line 220
    .local v2, previousRunningTransitions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-nez v0, :cond_1

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #currentTransitions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .restart local v0       #currentTransitions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    iget-object v5, p0, Landroid/transition/TransitionManager$1;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/transition/TransitionManager$1;->val$transition:Landroid/transition/Transition;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v5, p0, Landroid/transition/TransitionManager$1;->val$transition:Landroid/transition/Transition;

    new-instance v6, Landroid/transition/TransitionManager$1$1;

    invoke-direct {v6, p0, v4}, Landroid/transition/TransitionManager$1$1;-><init>(Landroid/transition/TransitionManager$1;Landroid/util/ArrayMap;)V

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 235
    iget-object v5, p0, Landroid/transition/TransitionManager$1;->val$transition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/transition/TransitionManager$1;->val$sceneRoot:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 236
    if-eqz v2, :cond_2

    .line 237
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition;

    .line 238
    .local v3, runningTransition:Landroid/transition/Transition;
    invoke-virtual {v3}, Landroid/transition/Transition;->resume()V

    goto :goto_1

    .line 223
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #runningTransition:Landroid/transition/Transition;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #previousRunningTransitions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v2       #previousRunningTransitions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    goto :goto_0

    .line 241
    :cond_2
    iget-object v5, p0, Landroid/transition/TransitionManager$1;->val$transition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/transition/TransitionManager$1;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    .line 243
    const/4 v5, 0x1

    return v5
.end method
