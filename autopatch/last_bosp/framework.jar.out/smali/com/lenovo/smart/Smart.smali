.class public Lcom/lenovo/smart/Smart;
.super Ljava/lang/Object;
.source "Smart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/smart/Smart$ConductionProvider;,
        Lcom/lenovo/smart/Smart$HabitProvider;,
        Lcom/lenovo/smart/Smart$ConductionIntent;,
        Lcom/lenovo/smart/Smart$HabitIntent;,
        Lcom/lenovo/smart/Smart$Extra;
    }
.end annotation


# static fields
.field public static final MO_ENTRANCE_CALL_LOG:I = 0x14

.field public static final MO_ENTRANCE_DIALER_PAD:I = 0xa

.field public static final MO_ENTRANCE_END:I = 0x3c

.field public static final MO_ENTRANCE_PHONE_BOOK:I = 0x1e

.field public static final MO_ENTRANCE_SMS:I = 0x28

.field public static final MO_ENTRANCE_STARRED:I = 0x32

.field public static final SUPPORT_SMART:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    return-void
.end method

.method public static addCallLog(Landroid/content/Context;Ljava/lang/String;IJIII)V
    .locals 0
    .parameter "context"
    .parameter "number"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "simId"
    .parameter "vtCall"

    .prologue
    .line 30
    return-void
.end method

.method public static addMoMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 89
    return-void
.end method

.method public static addMoSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 53
    return-void
.end method

.method public static addMtMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 107
    return-void
.end method

.method public static addMtSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 71
    return-void
.end method

.method public static addRunApplicationLog(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0
    .parameter "context"
    .parameter "packageName"
    .parameter "duration"

    .prologue
    .line 125
    return-void
.end method

.method public static addStatics_ImportPhoneBook(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "importFrom"

    .prologue
    .line 475
    return-void
.end method

.method public static addStatics_InstallingThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 531
    const-string/jumbo v0, "package:"

    .line 533
    .local v0, PACKAGE_INTENT_PREFIX:Ljava/lang/String;
    return-void
.end method

.method public static addStatics_MoCall(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "entrance"

    .prologue
    .line 340
    return-void
.end method

.method public static addStatics_MoCallMistake(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 416
    return-void
.end method

.method public static addStatics_SwitchMasterCard(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "entrance"

    .prologue
    .line 431
    return-void
.end method

.method public static addStatus_CallMasterCardSetting(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 255
    return-void
.end method

.method public static addStatus_ContactsNumber(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "storageType"
    .parameter "number"

    .prologue
    .line 272
    return-void
.end method

.method public static addStatus_DataMasterCardSetting(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 322
    return-void
.end method

.method public static addStatus_HaveDualSim(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "haveDualSim"

    .prologue
    .line 143
    return-void
.end method

.method public static addStatus_IMEI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "imei"

    .prologue
    .line 159
    return-void
.end method

.method public static addStatus_InstalledThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 175
    return-void
.end method

.method public static addStatus_ShowContactsFilter(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "showFilter"

    .prologue
    .line 207
    return-void
.end method

.method public static addStatus_Slot1SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "simType"

    .prologue
    .line 223
    return-void
.end method

.method public static addStatus_Slot2SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "simType"

    .prologue
    .line 239
    return-void
.end method

.method public static addStatus_SmsMasterCardSetting(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 305
    return-void
.end method

.method public static addStatus_SwVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "swVersion"

    .prologue
    .line 191
    return-void
.end method
