.class public Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;
    }
.end annotation


# static fields
.field private static mCurrentTaskDescription:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

.field public static mFlashlightReceiver:Landroid/content/BroadcastReceiver;

.field private static mHomePressOpenFlash:Z

.field private static mIsFlashlightOn:Z

.field private static mLastBackTime:J

.field public static mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private static sView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sWm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4734
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mLastBackTime:J

    .line 4735
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mCurrentTaskDescription:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    .line 4736
    sput-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mHomePressOpenFlash:Z

    .line 4737
    sput-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    .line 4841
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mFlashlightReceiver:Landroid/content/BroadcastReceiver;

    .line 4851
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$sget-mIsFlashlightOn-9f90c5()Z
    .locals 1

    .prologue
    .line 4732
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    return v0
.end method

.method static synthetic access$sput-mIsFlashlightOn-5ae3c1(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 4732
    sput-boolean p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    return p0
.end method

.method public static flashClose(Lcom/android/internal/policy/impl/PhoneWindowManager;I)Z
    .locals 2
    .parameter "phoneWindowManager"
    .parameter "keyCode"

    .prologue
    .line 4897
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 4898
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    if-eqz v1, :cond_0

    .line 4899
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.flashlight.ACTION_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4900
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.flashlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4901
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4902
    const/4 v1, 0x1

    .line 4905
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static flashCondition(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 2
    .parameter "phoneWindowManager"
    .parameter "homeWasLongPressed"

    .prologue
    const/4 v1, 0x0

    .line 4877
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mHomePressOpenFlash:Z

    .line 4878
    .local v0, homePressOpenFlash:Z
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mHomePressOpenFlash:Z

    .line 4879
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static flashOpen(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "phoneWindowManager"
    .parameter "event"

    .prologue
    .line 4883
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 4885
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.flashlight.ACTION_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4886
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.flashlight"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4887
    const-string v2, "open_flashlight"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4888
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4889
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4894
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 4890
    :catch_0
    move-exception v0

    .line 4891
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flashlight cann\'t start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static flashRegister(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .parameter "phoneWindowManager"

    .prologue
    .line 4866
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4867
    .local v0, flashFilter:Landroid/content/IntentFilter;
    const-string v2, "com.baidu.action.FLASHLIGHT_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4868
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mFlashlightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4869
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4870
    .local v1, packageFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4871
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4872
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4873
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4874
    return-void
.end method

.method private static getBackLongPressBehavior()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static hold(Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 1
    .parameter "wm"
    .parameter "view"

    .prologue
    .line 4925
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sWm:Ljava/lang/ref/WeakReference;

    .line 4926
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sView:Ljava/lang/ref/WeakReference;

    .line 4927
    return-void
.end method

.method private static isCurrentHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .parameter "intent"
    .parameter "homeInfo"

    .prologue
    .line 4817
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static killTask(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;)V
    .locals 9
    .parameter "phoneWindowManager"
    .parameter "task"

    .prologue
    .line 4821
    if-eqz p1, :cond_1

    .line 4822
    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;->intent:Landroid/content/Intent;

    iget-object v7, p1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const v8, -0x200001

    and-int/2addr v7, v8

    const/high16 v8, 0x1000

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4823
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4824
    .local v3, pm:Landroid/content/pm/PackageManager;
    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 4825
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    .line 4826
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4827
    .local v1, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4828
    .local v5, title:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.baidu.killme"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4829
    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v6, "title"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4830
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4832
    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v2           #notificationIntent:Landroid/content/Intent;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4833
    .local v0, am:Landroid/app/ActivityManager;
    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;->id:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 4835
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/security/sysop/YiProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4839
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_0
    return-void

    .line 4836
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    .restart local v4       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static loadFirstTask(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;
    .locals 8
    .parameter "phoneWindowManager"

    .prologue
    const/4 v5, 0x0

    .line 4790
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4791
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 4793
    .local v4, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .line 4794
    .local v1, description:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 4795
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    .end local v1           #description:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;
    invoke-direct {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;-><init>()V

    .line 4796
    .restart local v1       #description:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 4797
    .local v3, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4798
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 4799
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4802
    :cond_0
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->isCurrentHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4813
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    :goto_0
    return-object v5

    .line 4806
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.systemui"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4809
    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iput v5, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;->id:I

    .line 4810
    iput-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;->intent:Landroid/content/Intent;

    .line 4811
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;->packageName:Ljava/lang/String;

    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    move-object v5, v1

    .line 4813
    goto :goto_0
.end method

.method public static longPressKiller(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 10
    .parameter "phoneWindowManager"
    .parameter "event"

    .prologue
    const/4 v9, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v0, 0x1

    .local v0, down:Z
    :goto_0
    if-ne v1, v9, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .local v3, nowTime:J
    sget-wide v5, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mLastBackTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x384

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    const-string v5, "mafeifei"

    const-string v6, "send notification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.baidu.killme"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, notificationIntent:Landroid/content/Intent;
    const-string v5, "notification"

    const-string v6, "can_use_back_longpress"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v2           #notificationIntent:Landroid/content/Intent;
    :cond_0
    sput-wide v3, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mLastBackTime:J

    .end local v3           #nowTime:J
    :cond_1
    if-ne v1, v9, :cond_3

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->getBackLongPressBehavior()I

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->getBackLongPressBehavior()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->loadFirstTask(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mCurrentTaskDescription:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    :cond_2
    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mBaiduLongPressRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$iget-mBaiduLongPressRunnable-c9b5d2(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;

    move-result-object v5

    iput-object p0, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mBaiduLongPressRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$iget-mBaiduLongPressRunnable-c9b5d2(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;

    move-result-object v5

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mCurrentTaskDescription:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    iput-object v6, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;->mTask:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mBaiduLongPressRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$iget-mBaiduLongPressRunnable-c9b5d2(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;

    move-result-object v6

    const-wide/16 v7, 0x5dc

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void

    .end local v0           #down:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #down:Z
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mBaiduLongPressRunnable:Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$iget-mBaiduLongPressRunnable-c9b5d2(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$KillRunnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static removeViewImmediate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4930
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sWm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4931
    .local v1, wm:Landroid/view/WindowManager;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4933
    .local v0, view:Landroid/view/View;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 4944
    :cond_0
    :goto_0
    return-void

    .line 4937
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4938
    const-string v2, "WindowManager"

    const-string v3, "view not successfully added to wm, removing view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4942
    :cond_2
    sput-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sWm:Ljava/lang/ref/WeakReference;

    .line 4943
    sput-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static setSystemTop(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter "phoneWindowManager"

    .prologue
    .line 4909
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 4910
    return-void
.end method

.method public static wakeUpWithVolumeKey(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3
    .parameter "phoneWindowManager"

    .prologue
    .line 4913
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_revoke"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4914
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 4916
    :cond_0
    return-void
.end method

.method static synthetic access$invoke-getBackLongPressBehavior-0d9dab()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->getBackLongPressBehavior()I

    move-result v0

    return v0
.end method

.method static synthetic access$invoke-killTask-b88efb(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->killTask(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$TaskDescription;)V

    return-void
.end method

.method public static interceptKeyBeforeQueueingHook(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "phoneWindowManager"
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    return-void

    .end local v0           #down:Z
    .end local v1           #keyCode:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #down:Z
    .restart local v1       #keyCode:I
    :sswitch_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->wakeUpWithVolumeKey(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_1

    :sswitch_1
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->flashClose(Lcom/android/internal/policy/impl/PhoneWindowManager;I)Z

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method
