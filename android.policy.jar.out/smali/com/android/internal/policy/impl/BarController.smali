.class public Lcom/android/internal/policy/impl/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TRANSIENT_BAR_HIDING:I = 0x2

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mState:I

.field private final mStatusBarManagerId:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 2
    .parameter "tag"
    .parameter "transientFlag"
    .parameter "unhideFlag"
    .parameter "translucentFlag"
    .parameter "statusBarManagerId"
    .parameter "translucentWmFlag"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    .line 65
    iput p3, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    .line 66
    iput p4, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    .line 67
    iput p5, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I

    .line 68
    iput p6, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentWmFlag:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BarController;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BarController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/BarController;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p1
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .locals 4
    .parameter "wasVis"
    .parameter "wasAnim"
    .parameter "win"
    .parameter "change"

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 139
    .local v1, vis:Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 140
    .local v0, anim:Z
    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    if-ne v3, v2, :cond_1

    if-nez p4, :cond_1

    if-nez v1, :cond_1

    .line 141
    const/4 v2, 0x2

    .line 150
    .end local v0           #anim:Z
    .end local v1           #vis:Z
    :cond_0
    :goto_0
    return v2

    .line 142
    .restart local v0       #anim:Z
    .restart local v1       #vis:Z
    :cond_1
    if-eqz p4, :cond_3

    .line 143
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    if-nez v0, :cond_0

    .line 146
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 150
    .end local v0           #anim:Z
    .end local v1           #vis:Z
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    goto :goto_0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 243
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTransientBarState(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_2

    .line 232
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 233
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    .line 235
    :cond_1
    iput p1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 238
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 251
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string v0, "TRANSIENT_BAR_HIDING"

    .line 253
    :goto_0
    return-object v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_0

    .line 253
    :cond_1
    if-nez p0, :cond_2

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_0

    .line 254
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 154
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    if-eq p1, v0, :cond_0

    .line 155
    iput p1, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/BarController$1;-><init>(Lcom/android/internal/policy/impl/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 2
    .parameter "oldVis"
    .parameter "vis"

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    goto :goto_0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 2
    .parameter "win"
    .parameter "vis"
    .parameter "oldVis"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 108
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    .line 110
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentWmFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 111
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v0

    .line 119
    :cond_0
    :goto_0
    return p2

    .line 113
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p2, v0

    goto :goto_0

    .line 116
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    or-int p2, v0, v1

    goto :goto_0
.end method

.method public checkHiddenLw()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(I)V

    .line 180
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 183
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 185
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    .line 190
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public checkShowTransientBarLw()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v2, v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 204
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const/16 v1, 0x3d

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 261
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 263
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/internal/policy/impl/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransientShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarShowingLw(Z)Z
    .locals 7
    .parameter "show"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 123
    iget-object v4, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_0

    .line 133
    :goto_0
    return v0

    .line 124
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 125
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    goto :goto_0

    .line 128
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    .line 129
    .local v3, wasVis:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    .line 130
    .local v2, wasAnim:Z
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 131
    .local v0, change:Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v3, v2, v4, v0}, Lcom/android/internal/policy/impl/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v1

    .line 132
    .local v1, state:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(I)V

    goto :goto_0

    .line 130
    .end local v0           #change:Z
    .end local v1           #state:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_1
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .parameter "win"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 74
    return-void
.end method

.method public showTransient()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public updateVisibilityLw(ZII)I
    .locals 3
    .parameter "transientAllowed"
    .parameter "oldVis"
    .parameter "vis"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    move v0, p3

    .line 227
    .end local p3
    .local v0, vis:I
    :goto_0
    return v0

    .line 210
    .end local v0           #vis:I
    .restart local p3
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 211
    if-eqz p1, :cond_5

    .line 212
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 213
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_1

    .line 214
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    .line 220
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-eqz v1, :cond_2

    .line 221
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 222
    and-int/lit8 p3, p3, -0x2

    .line 224
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_4

    .line 225
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    :cond_4
    move v0, p3

    .line 227
    .end local p3
    .restart local v0       #vis:I
    goto :goto_0

    .line 217
    .end local v0           #vis:I
    .restart local p3
    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(I)V

    goto :goto_1
.end method

.method public wasRecentlyTranslucent()Z
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
