.class Lcom/android/server/pm/PackageManagerService$BaiduInjector;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$invoke-reportInstallOrMoveStatus-ca0a1d(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 829
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerService$BaiduInjector;->reportInstallOrMoveStatus(Lcom/android/server/pm/PackageManagerService;I)V

    return-void
.end method

.method private static reportInstallOrMoveStatus(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 6
    .parameter "service"
    .parameter "ret"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 832
    if-eq p1, v0, :cond_0

    .line 833
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 834
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "ret"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 835
    const-string v0, "com.android.server.pm.PakageManagerService.install_fail"

    const/4 v5, -0x1

    move-object v3, v1

    move-object v4, v1

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 838
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
