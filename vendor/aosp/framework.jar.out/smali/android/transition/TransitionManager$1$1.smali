.class Landroid/transition/TransitionManager$1$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionManager$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/TransitionManager$1;

.field final synthetic val$runningTransitions:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/transition/TransitionManager$1;Landroid/util/ArrayMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Landroid/transition/TransitionManager$1$1;->this$0:Landroid/transition/TransitionManager$1;

    iput-object p2, p0, Landroid/transition/TransitionManager$1$1;->val$runningTransitions:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .parameter "transition"

    .prologue
    .line 230
    iget-object v1, p0, Landroid/transition/TransitionManager$1$1;->val$runningTransitions:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/transition/TransitionManager$1$1;->this$0:Landroid/transition/TransitionManager$1;

    iget-object v2, v2, Landroid/transition/TransitionManager$1;->val$sceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 232
    .local v0, currentTransitions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method
