.class Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrinterDiscoverySessionMediator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;
    }
.end annotation


# instance fields
.field private final mDiscoveryObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/print/IPrinterDiscoveryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private final mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartedPrinterDiscoveryTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    .line 899
    new-instance v1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;-><init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V

    iput-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 912
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    .line 919
    new-instance v1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$SessionHandler;-><init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    #getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {p1}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 923
    .local v0, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 926
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersRemoved(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStopPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 895
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    return-void
.end method

.method private handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1314
    .local p1, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1315
    .local v2, serviceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1316
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 1317
    .local v1, service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1319
    .end local v1           #service:Lcom/android/server/print/RemotePrintService;
    :cond_0
    return-void
.end method

.method private handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1323
    .local p1, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1324
    .local v2, serviceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1325
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 1326
    .local v1, service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    .line 1324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1328
    .end local v1           #service:Lcom/android/server/print/RemotePrintService;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onDestroyed()V

    .line 1329
    return-void
.end method

.method private handleDispatchPrintersAdded(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, addedPrinters:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1296
    .local v2, observerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1297
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/print/IPrinterDiscoveryObserver;

    .line 1298
    .local v1, observer:Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1300
    .end local v1           #observer:Landroid/print/IPrinterDiscoveryObserver;
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1301
    return-void
.end method

.method private handleDispatchPrintersRemoved(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1304
    .local p1, removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1305
    .local v2, observerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1306
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/print/IPrinterDiscoveryObserver;

    .line 1307
    .local v1, observer:Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, v1, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1309
    .end local v1           #observer:Landroid/print/IPrinterDiscoveryObserver;
    :cond_0
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1310
    return-void
.end method

.method private handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1333
    .local p1, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    .local p2, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1334
    .local v2, serviceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1335
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 1336
    .local v1, service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v1, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    .end local v1           #service:Lcom/android/server/print/RemotePrintService;
    :cond_0
    return-void
.end method

.method private handleDispatchStopPrinterDiscovery(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1341
    .local p1, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1342
    .local v2, serviceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1343
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 1344
    .local v1, service:Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    .line 1342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1346
    .end local v1           #service:Lcom/android/server/print/RemotePrintService;
    :cond_0
    return-void
.end method

.method private handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 3
    .parameter "observer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1366
    .local p2, printers:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :try_start_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    :goto_0
    return-void

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "UserState"

    const-string v2, "Error sending added printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 3
    .parameter "observer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1375
    .local p2, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    :try_start_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :goto_0
    return-void

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "UserState"

    const-string v2, "Error sending removed printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .parameter "service"
    .parameter "printerId"

    .prologue
    .line 1355
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1356
    return-void
.end method

.method private handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .parameter "service"
    .parameter "printerId"

    .prologue
    .line 1360
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1361
    return-void
.end method

.method private handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/print/RemotePrintService;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1350
    .local p2, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->validatePrinters(Ljava/util/List;)V

    .line 1351
    return-void
.end method

.method private removePrintersForServiceLocked(Landroid/content/ComponentName;)V
    .locals 7
    .parameter "serviceName"

    .prologue
    .line 1268
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    const/4 v4, 0x0

    .line 1273
    .local v4, removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1274
    .local v1, printerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1275
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 1276
    .local v2, printerId:Landroid/print/PrinterId;
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1277
    if-nez v4, :cond_2

    .line 1278
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .restart local v4       #removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1283
    .end local v2           #printerId:Landroid/print/PrinterId;
    :cond_4
    if-eqz v4, :cond_0

    .line 1284
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1285
    .local v3, removedPrinterCount:I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_5

    .line 1286
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1288
    :cond_5
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 4
    .parameter "observer"

    .prologue
    .line 930
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 933
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 934
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 935
    .local v1, printers:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 936
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 937
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 938
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 941
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    .end local v1           #printers:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :cond_0
    return-void
.end method

.method public destroyLocked()V
    .locals 8

    .prologue
    .line 1104
    iget-boolean v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v6, :cond_0

    .line 1105
    const-string v6, "UserState"

    const-string v7, "Not destroying - session destroyed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 1110
    .local v2, printerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1111
    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 1112
    .local v3, printerId:Landroid/print/PrinterId;
    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-virtual {v6, v3}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1115
    .end local v3           #printerId:Landroid/print/PrinterId;
    :cond_1
    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 1116
    .local v1, observerCount:I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 1117
    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 1118
    .local v5, token:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1121
    .end local v5           #token:Landroid/os/IBinder;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v6}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1123
    .local v4, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 1226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    const-string v10, "destroyed="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mDestroyed:Z
    invoke-static {v10}, Lcom/android/server/print/UserState;->access$800(Lcom/android/server/print/UserState;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1229
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    const-string v10, "printDiscoveryInProgress="

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v10

    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1232
    const-string v5, "  "

    .line 1234
    .local v5, tab:Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    const-string v10, "printer discovery observers:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1235
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1236
    .local v2, observerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1237
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/print/IPrinterDiscoveryObserver;

    .line 1238
    .local v1, observer:Landroid/print/IPrinterDiscoveryObserver;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1239
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1229
    .end local v0           #i:I
    .end local v1           #observer:Landroid/print/IPrinterDiscoveryObserver;
    .end local v2           #observerCount:I
    .end local v5           #tab:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1241
    .restart local v0       #i:I
    .restart local v2       #observerCount:I
    .restart local v5       #tab:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    const-string v10, "start discovery requests:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1244
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 1245
    .local v7, tokenCount:I
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_2

    .line 1246
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    .line 1247
    .local v6, token:Landroid/os/IBinder;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1250
    .end local v6           #token:Landroid/os/IBinder;
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    const-string v10, "tracked printer requests:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1251
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 1252
    .local v8, trackedPrinters:I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_3

    .line 1253
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 1254
    .local v3, printer:Landroid/print/PrinterId;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v3}, Landroid/print/PrinterId;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1252
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1257
    .end local v3           #printer:Landroid/print/PrinterId;
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    const-string v10, "printers:"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1258
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1259
    .local v4, pritnerCount:I
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v4, :cond_4

    .line 1260
    iget-object v9, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 1261
    .local v3, printer:Landroid/print/PrinterInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1264
    .end local v3           #printer:Landroid/print/PrinterInfo;
    :cond_4
    return-void
.end method

.method public onDestroyed()V
    .locals 0

    .prologue
    .line 1101
    return-void
.end method

.method public onPrintersAddedLocked(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, printers:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-boolean v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v5, :cond_1

    .line 1133
    const-string v5, "UserState"

    const-string v6, "Not adding printers - session destroyed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    const/4 v1, 0x0

    .line 1137
    .local v1, addedPrinters:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1138
    .local v0, addedPrinterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1139
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 1140
    .local v4, printer:Landroid/print/PrinterInfo;
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 1141
    .local v3, oldPrinter:Landroid/print/PrinterInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1142
    :cond_2
    if-nez v1, :cond_3

    .line 1143
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #addedPrinters:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .restart local v1       #addedPrinters:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1148
    .end local v3           #oldPrinter:Landroid/print/PrinterInfo;
    .end local v4           #printer:Landroid/print/PrinterInfo;
    :cond_5
    if-eqz v1, :cond_0

    .line 1149
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onPrintersRemovedLocked(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1158
    .local p1, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v4, :cond_1

    .line 1159
    const-string v4, "UserState"

    const-string v5, "Not removing printers - session destroyed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    const/4 v3, 0x0

    .line 1163
    .local v3, removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1164
    .local v1, removedPrinterCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1165
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 1166
    .local v2, removedPrinterId:Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1167
    if-nez v3, :cond_2

    .line 1168
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    .restart local v3       #removedPrinterIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1173
    .end local v2           #removedPrinterId:Landroid/print/PrinterId;
    :cond_4
    if-eqz v3, :cond_0

    .line 1174
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 6
    .parameter "service"

    .prologue
    .line 1196
    iget-boolean v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v4, :cond_1

    .line 1197
    const-string v4, "UserState"

    const-string v5, "Not updating added service - session destroyed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_0
    return-void

    .line 1201
    :cond_1
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1205
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1206
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1211
    :cond_2
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1212
    .local v3, trackedPrinterCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1213
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 1214
    .local v2, printerId:Landroid/print/PrinterId;
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1215
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1216
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1217
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1218
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1212
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1192
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removePrintersForServiceLocked(Landroid/content/ComponentName;)V

    .line 1193
    return-void
.end method

.method public onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 1180
    iget-boolean v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    .line 1181
    const-string v1, "UserState"

    const-string v2, "Not updating removed service - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :goto_0
    return-void

    .line 1185
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1186
    .local v0, serviceName:Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removePrintersForServiceLocked(Landroid/content/ComponentName;)V

    .line 1187
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_0
.end method

.method public removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 947
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 950
    :cond_0
    return-void
.end method

.method public final startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .locals 6
    .parameter "observer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, priorityList:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    const/4 v3, 0x1

    .line 954
    iget-boolean v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v4, :cond_1

    .line 955
    const-string v3, "UserState"

    const-string v4, "Not starting dicovery - session destroyed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v3

    .line 962
    .local v1, discoveryStarted:Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 967
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-virtual {v3, p2}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V

    goto :goto_0

    .line 959
    .end local v1           #discoveryStarted:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 972
    .restart local v1       #discoveryStarted:Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    .line 976
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 978
    .local v2, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 979
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 980
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 981
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .locals 5
    .parameter "printerId"

    .prologue
    .line 1043
    iget-boolean v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v3, :cond_1

    .line 1044
    const-string v3, "UserState"

    const-string v4, "Not starting printer state tracking - session destroyed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1051
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1053
    .local v1, containedPrinterId:Z
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    if-nez v1, :cond_0

    .line 1059
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1060
    .local v2, service:Lcom/android/server/print/RemotePrintService;
    if-eqz v2, :cond_0

    .line 1064
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1065
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1066
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1067
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 987
    iget-boolean v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v1, :cond_1

    .line 988
    const-string v1, "UserState"

    const-string v2, "Not stopping dicovery - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1001
    .local v0, services:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .locals 4
    .parameter "printerId"

    .prologue
    .line 1073
    iget-boolean v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v2, :cond_1

    .line 1074
    const-string v2, "UserState"

    const-string v3, "Not stopping printer state tracking - session destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1086
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 1087
    .local v1, service:Lcom/android/server/print/RemotePrintService;
    if-eqz v1, :cond_0

    .line 1091
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1092
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1093
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1094
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public validatePrintersLocked(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1007
    .local p1, printerIds:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v7, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v7, :cond_1

    .line 1008
    const-string v7, "UserState"

    const-string v8, "Not validating pritners - session destroyed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_0
    return-void

    .line 1012
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1013
    .local v3, remainingList:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1014
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1016
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/print/PrinterId;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v6, updateList:Ljava/util/List;,"Ljava/util/List<Landroid/print/PrinterId;>;"
    const/4 v5, 0x0

    .line 1018
    .local v5, serviceName:Landroid/content/ComponentName;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1019
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 1020
    .local v2, printerId:Landroid/print/PrinterId;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1021
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v5

    .line 1023
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1024
    :cond_4
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1025
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1030
    .end local v2           #printerId:Landroid/print/PrinterId;
    :cond_5
    iget-object v7, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    #getter for: Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;
    invoke-static {v7}, Lcom/android/server/print/UserState;->access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/RemotePrintService;

    .line 1031
    .local v4, service:Lcom/android/server/print/RemotePrintService;
    if-eqz v4, :cond_2

    .line 1032
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1033
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1034
    iput-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1035
    iget-object v7, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xd

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
