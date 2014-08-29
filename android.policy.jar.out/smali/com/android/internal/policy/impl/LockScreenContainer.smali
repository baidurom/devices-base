.class Lcom/android/internal/policy/impl/LockScreenContainer;
.super Landroid/widget/FrameLayout;
.source "LockScreenContainer.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# static fields
.field private static final LOCK_SCREEN_PACKAGE_NAME:Ljava/lang/String; = "theme_lockscreen_packagename"

.field private static final LOCK_SETTING_PACKAGE_NAME:Ljava/lang/String; = "lock_setting_package_name"

.field private static final TAG:Ljava/lang/String; = "LockScreenContainer"


# instance fields
.field private final DEBUG_QZH:Z

.field private final TAGCLASS:Ljava/lang/String;

.field private final TAG_QZH:Ljava/lang/String;

.field private mBatteryFull:Z

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDefaultLockScreen:Z

.field private mKeyboardHidden:I

.field private mPluggedIn:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 13
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v10, "RK_QZH"

    iput-object v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->TAG_QZH:Ljava/lang/String;

    const-string v10, "LockScreenContainer"

    iput-object v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->TAGCLASS:Ljava/lang/String;

    .line 38
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->DEBUG_QZH:Z

    .line 39
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mDefaultLockScreen:Z

    .line 44
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mPluggedIn:Z

    .line 46
    const/16 v10, 0x64

    iput v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mBatteryLevel:I

    .line 47
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mBatteryFull:Z

    .line 64
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 65
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mContext:Landroid/content/Context;

    .line 67
    iget v10, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mKeyboardHidden:I

    .line 68
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mConfiguration:Landroid/content/res/Configuration;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenContainer;->isEnabledCustomLockScreen()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, packageName:Ljava/lang/String;
    const-string v10, "RK_QZH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ~ CLASS ~ LockScreenContainer ~ meth ~ get package name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz v8, :cond_0

    .line 75
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".LockScreen"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, className:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 77
    .local v1, apkName:Ljava/lang/String;
    const-string v10, "RK_QZH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ~ CLASS ~ LockScreenContainer ~ meth ~ get apk name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v7, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v7, v1, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 79
    .local v7, myClassLoader:Ldalvik/system/PathClassLoader;
    const/4 v10, 0x1

    invoke-static {v2, v10, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 84
    .local v3, classType:Ljava/lang/Class;
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Landroid/content/res/Configuration;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    aput-object v12, v10, v11

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 85
    .local v4, cons:Ljava/lang/reflect/Constructor;
    const/4 v10, 0x4

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 86
    .local v9, remoteContext:Landroid/content/Context;
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p5, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    .line 88
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1           #apkName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #classType:Ljava/lang/Class;
    .end local v4           #cons:Ljava/lang/reflect/Constructor;
    .end local v7           #myClassLoader:Ldalvik/system/PathClassLoader;
    .end local v9           #remoteContext:Landroid/content/Context;
    :goto_0
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v6, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    invoke-virtual {p0, v10, v6}, Lcom/android/internal/policy/impl/LockScreenContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/LockScreenContainer;->setFocusable(Z)V

    .line 103
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/LockScreenContainer;->setFocusableInTouchMode(Z)V

    .line 104
    const/high16 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/LockScreenContainer;->setDescendantFocusability(I)V

    .line 105
    return-void

    .line 89
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v5

    .line 90
    .local v5, e:Ljava/lang/Exception;
    const-string v10, "RK_QZH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ~ CLASS ~ LockScreenContainer ~ meth ~ create default lockscreen exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mDefaultLockScreen:Z

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/LockScreenContainer;->getDefaultLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    goto :goto_0

    .line 96
    .end local v5           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mDefaultLockScreen:Z

    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/LockScreenContainer;->getDefaultLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method private getDefaultLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 108
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    return-object v0
.end method

.method private isEnabledCustomLockScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_setting_package_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "LockScreenContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    const-string v0, "com.lenovo.lock"

    .line 124
    const-string v1, "LockScreenContainer"

    const-string v2, "Modify  packageName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    return-object v0

    .line 118
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mDefaultLockScreen:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->cleanUp()V

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mDefaultLockScreen:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->needsInput()Z

    move-result v0

    goto :goto_0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onDownloadCalibrationDataUpdate(Z)V
    .locals 0
    .parameter "calibrationData"

    .prologue
    .line 258
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 134
    return-void
.end method

.method public onLockScreenUpdate(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 253
    return-void
.end method

.method public onMissedCallChanged(I)V
    .locals 0
    .parameter "missedCall"

    .prologue
    .line 238
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mDefaultLockScreen:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onPause()V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 217
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onPhoneStateChanged(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onRefreshBatteryInfo(ZZI)V

    .line 139
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 223
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mDefaultLockScreen:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onResume()V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onRingerModeChanged(I)V

    .line 198
    return-void
.end method

.method public onSIMInfoChanged(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 233
    return-void
.end method

.method public onSearchNetworkUpdate(IZ)V
    .locals 0
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    .line 248
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onTimeChanged()V

    .line 148
    return-void
.end method

.method public onUnlockKeyguard()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onWallpaperSetComplete()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onWeatherChanged(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenContainer;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/LockScreenContainerInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/LockScreenContainerInterface;->onWeatherChanged(Landroid/content/Intent;)V

    .line 143
    return-void
.end method
