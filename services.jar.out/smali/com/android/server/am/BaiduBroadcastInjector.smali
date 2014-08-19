.class public Lcom/android/server/am/BaiduBroadcastInjector;
.super Ljava/lang/Object;
.source "BaiduBroadcastInjector.java"


# static fields
.field static final SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

.field static final SPECIAL_SMS_PACKAGE_LEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.security"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V
    .locals 11
    .parameter "context"
    .parameter "record"

    .prologue
    const/4 v10, 0x0

    iget-object v9, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_0
    sget v9, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    new-array v8, v9, [Ljava/util/ArrayList;

    .local v8, specialPackageIndex:[Ljava/util/ArrayList;
    iget-object v9, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .local v4, len:I
    const/4 v2, -0x1

    .local v2, index:I
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_6

    const/4 v2, -0x1

    iget-object v9, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .local v7, r:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_4

    move-object v3, v7

    check-cast v3, Lcom/android/server/am/BroadcastFilter;

    .local v3, info:Lcom/android/server/am/BroadcastFilter;
    iget-object v9, v3, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Ljava/lang/String;)I

    move-result v2

    .end local v3           #info:Lcom/android/server/am/BroadcastFilter;
    :cond_1
    :goto_1
    const/4 v9, -0x1

    if-le v2, v9, :cond_3

    iget-object v9, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    aget-object v5, v8, v2

    .local v5, list:Ljava/util/ArrayList;
    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #list:Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5       #list:Ljava/util/ArrayList;
    aput-object v5, v8, v2

    :cond_2
    aget-object v9, v8, v2

    invoke-virtual {v9, v10, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v5           #list:Ljava/util/ArrayList;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    instance-of v9, v7, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_1

    move-object v3, v7

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_5

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .local v6, packageName:Ljava/lang/String;
    :goto_2
    invoke-static {v6}, Lcom/android/server/am/BaiduBroadcastInjector;->isSpecialPackage(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .end local v6           #packageName:Ljava/lang/String;
    :cond_5
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v7           #r:Ljava/lang/Object;
    :cond_6
    sget v4, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    add-int/lit8 v1, v4, -0x1

    :goto_3
    if-ltz v1, :cond_8

    aget-object v5, v8, v1

    .restart local v5       #list:Ljava/util/ArrayList;
    if-eqz v5, :cond_7

    iget-object v9, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v9, v10, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v1           #i:I
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v5           #list:Ljava/util/ArrayList;
    .end local v8           #specialPackageIndex:[Ljava/util/ArrayList;
    :cond_8
    return-void
.end method

.method static isSpecialPackage(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"

    .prologue
    sget v1, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE_LEN:I

    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    sget-object v2, Lcom/android/server/am/BaiduBroadcastInjector;->SPECIAL_SMS_PACKAGE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static tryHookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V
    .locals 3
    .parameter "context"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system.mms"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .local v0, hookEnabled:Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/am/BaiduBroadcastInjector;->hookMessageBroadcast(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V

    :cond_1
    return-void
.end method
