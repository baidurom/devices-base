.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 15
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 248
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 249
    .local v10, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    if-nez v11, :cond_1

    .line 251
    const/4 v1, 0x0

    .line 331
    :cond_0
    :goto_0
    return-object v1

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 257
    .local v2, applications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sms_default_application"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, defaultApplication:Ljava/lang/String;
    const/4 v1, 0x0

    .line 261
    .local v1, applicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_2

    .line 262
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 266
    :cond_2
    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 269
    .local v9, r:Landroid/content/res/Resources;
    const v11, 0x1040023

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, defaultPackage:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 273
    if-nez v1, :cond_3

    .line 275
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_3

    .line 276
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v1, v11, v12

    .end local v1           #applicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    check-cast v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 281
    .restart local v1       #applicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    if-eqz v1, :cond_4

    .line 282
    iget-object v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v11, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 287
    .end local v4           #defaultPackage:Ljava/lang/String;
    .end local v9           #r:Landroid/content/res/Resources;
    :cond_4
    if-eqz v1, :cond_0

    .line 288
    const-string v11, "appops"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 294
    .local v0, appOps:Landroid/app/AppOpsManager;
    if-nez p1, :cond_5

    iget v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    if-ne v11, v12, :cond_6

    .line 296
    :cond_5
    const/16 v11, 0xf

    iget v12, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v13, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v7

    .line 298
    .local v7, mode:I
    if-eqz v7, :cond_6

    .line 299
    const-string v12, "SmsApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " lost OP_WRITE_SMS: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz p1, :cond_7

    const-string v11, " (fixing)"

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz p1, :cond_8

    .line 302
    const/16 v11, 0xf

    iget v12, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v13, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 312
    .end local v7           #mode:I
    :cond_6
    :goto_2
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 316
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v11, "com.android.phone"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 317
    .local v6, info:Landroid/content/pm/PackageInfo;
    const/16 v11, 0xf

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "com.android.phone"

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v7

    .line 319
    .restart local v7       #mode:I
    if-eqz v7, :cond_0

    .line 320
    const-string v11, "SmsApplication"

    const-string v12, "com.android.phone lost OP_WRITE_SMS:  (fixing)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/16 v11, 0xf

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "com.android.phone"

    const/4 v14, 0x0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 324
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #mode:I
    :catch_0
    move-exception v5

    .line 326
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SmsApplication"

    const-string v12, "Phone package not found: com.android.phone"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 299
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .restart local v7       #mode:I
    :cond_7
    const-string v11, " (no permission to fix)"

    goto :goto_1

    .line 306
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .locals 18
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 125
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v14, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v3, intent:Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 128
    .local v13, smsReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v7, receivers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 132
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 133
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 136
    const-string v14, "android.permission.BROADCAST_SMS"

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 139
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 140
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 141
    invoke-virtual {v8, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, applicationName:Ljava/lang/String;
    new-instance v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v14, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v12, v1, v6, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    .local v12, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v14, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    .line 145
    invoke-virtual {v7, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v14, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v14, 0x0

    const-string v15, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 153
    .local v4, mmsReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 154
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 155
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_2

    .line 158
    const-string v14, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 161
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 162
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 163
    .restart local v12       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_2

    .line 164
    iget-object v14, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    goto :goto_1

    .line 169
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v14, "android.intent.action.RESPOND_VIA_MESSAGE"

    const-string v15, "smsto"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 172
    .local v9, respondServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 173
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 174
    .local v11, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-eqz v11, :cond_4

    .line 177
    const-string v14, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 180
    iget-object v6, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 181
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 182
    .restart local v12       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_4

    .line 183
    iget-object v14, v11, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    goto :goto_2

    .line 188
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v11           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v14, "android.intent.action.SENDTO"

    const-string v15, "smsto"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 191
    .local v10, sendToActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 192
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 193
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_6

    .line 196
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 197
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 198
    .restart local v12       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_6

    .line 199
    iget-object v14, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    goto :goto_3

    .line 204
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 205
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 206
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_8

    .line 209
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 210
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 211
    .restart local v12       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_8

    .line 212
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v14

    if-nez v14, :cond_8

    .line 213
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 217
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_9
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    return-object v14
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 4
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    .prologue
    .local p0, applications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    const/4 v2, 0x0

    .line 226
    if-nez p1, :cond_0

    move-object v0, v2

    .line 235
    :goto_0
    return-object v0

    .line 230
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 231
    .local v0, application:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0           #application:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_2
    move-object v0, v2

    .line 235
    goto :goto_0
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 426
    .local v1, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 427
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .restart local v0       #component:Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 443
    .local v1, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 444
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .restart local v0       #component:Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 460
    .local v1, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 461
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .restart local v0       #component:Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 4
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 410
    .local v1, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 411
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .restart local v0       #component:Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 2
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 397
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 398
    .local v0, applications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 13
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/16 v12, 0xf

    const/4 v11, 0x0

    .line 339
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 340
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    if-nez v8, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sms_default_application"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, oldPackageName:Ljava/lang/String;
    if-eqz p0, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 355
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 356
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 357
    .local v2, applications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 358
    .local v1, applicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_0

    .line 360
    const-string v8, "appops"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 361
    .local v0, appOps:Landroid/app/AppOpsManager;
    if-eqz v5, :cond_3

    .line 363
    const/16 v8, 0x2000

    :try_start_0
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 365
    .local v4, info:Landroid/content/pm/PackageInfo;
    const/16 v8, 0xf

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v9, v5, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sms_default_application"

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 377
    iget v8, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v12, v8, v9, v11}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 382
    :try_start_1
    const-string v8, "com.android.phone"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 383
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    const/16 v8, 0xf

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v10, "com.android.phone"

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 385
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 387
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SmsApplication"

    const-string v9, "Phone package not found: com.android.phone"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 368
    .restart local v3       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SmsApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Old SMS package not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
