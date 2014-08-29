.class public final Landroid/provider/LenovoSecure;
.super Ljava/lang/Object;
.source "LenovoSecure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/LenovoSecure$ListTable;,
        Landroid/provider/LenovoSecure$BaseFilterListColumns;
    }
.end annotation


# static fields
.field private static final FEAUTRE_LENOVOSERVURE:Z = true

.field public static final TAG:Ljava/lang/String; = "LENOVOSECURE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static addToList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "listType"
    .parameter "filterType"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 209
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:listType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:filterType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz p1, :cond_0

    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToList:name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    if-nez p0, :cond_2

    move v0, v1

    .line 235
    :cond_1
    :goto_0
    return v0

    .line 215
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 216
    goto :goto_0

    .line 217
    :cond_4
    if-eq p3, v5, :cond_5

    if-eq p3, v6, :cond_5

    if-eq p3, v7, :cond_5

    move v0, v1

    .line 218
    goto :goto_0

    .line 219
    :cond_5
    if-gt p4, v7, :cond_6

    if-gez p4, :cond_7

    :cond_6
    move v0, v1

    .line 220
    goto :goto_0

    .line 222
    :cond_7
    const/4 v0, 0x0

    .line 223
    .local v0, bResult:Z
    if-ne p3, v6, :cond_a

    .line 224
    and-int/lit8 v2, p4, 0x3

    if-ne v2, v7, :cond_8

    .line 225
    invoke-static {p0, v6, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 226
    :cond_8
    and-int/lit8 v2, p4, 0x1

    if-ne v2, v5, :cond_9

    .line 227
    invoke-static {p0, v1, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 228
    :cond_9
    and-int/lit8 v1, p4, 0x2

    if-ne v1, v6, :cond_1

    .line 229
    invoke-static {p0, v5, p2}, Landroid/provider/LenovoSecure;->insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 231
    :cond_a
    if-ne p3, v5, :cond_1

    .line 232
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->insertWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static delLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 79
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v6, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 80
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v4, values:Landroid/content/ContentValues;
    const-string/jumbo v6, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string/jumbo v6, "phonenumber"

    invoke-virtual {v4, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    .local v1, i:I
    if-gtz v1, :cond_0

    .line 92
    .end local v1           #i:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    return v5

    .line 88
    .restart local v1       #i:I
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 89
    .end local v1           #i:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static delWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 127
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',0) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    .local v1, i:I
    if-gtz v1, :cond_0

    .line 135
    .end local v1           #i:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return v4

    .line 133
    .restart local v1       #i:I
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 134
    .end local v1           #i:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static inList(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 8
    .parameter "context"
    .parameter "number"
    .parameter "listType"
    .parameter "filterType"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 179
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inList:number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inList:listType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v2, "LENOVOSECURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inList:filterType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-nez p0, :cond_1

    move v0, v1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 185
    goto :goto_0

    .line 186
    :cond_3
    if-eq p2, v5, :cond_4

    if-eq p2, v6, :cond_4

    if-eq p2, v7, :cond_4

    move v0, v1

    .line 187
    goto :goto_0

    .line 188
    :cond_4
    if-gt p3, v7, :cond_5

    const/4 v2, -0x1

    if-ge p3, v2, :cond_6

    :cond_5
    move v0, v1

    .line 189
    goto :goto_0

    .line 191
    :cond_6
    const/4 v0, 0x0

    .line 192
    .local v0, bResult:Z
    if-ne p2, v6, :cond_9

    .line 193
    and-int/lit8 v2, p3, 0x3

    if-ne v2, v7, :cond_7

    .line 194
    invoke-static {p0, v6, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 195
    :cond_7
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v5, :cond_8

    .line 196
    invoke-static {p0, v1, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 197
    :cond_8
    and-int/lit8 v1, p3, 0x2

    if-ne v1, v6, :cond_0

    .line 198
    invoke-static {p0, v5, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 200
    :cond_9
    if-ne p2, v5, :cond_0

    .line 201
    invoke-static {p0, p1}, Landroid/provider/LenovoSecure;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static insertLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "type"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 53
    :try_start_0
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-static {p0, p2}, Landroid/provider/LenovoSecure;->delWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 58
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v5, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 59
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string/jumbo v5, "phonenumber"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    if-nez v2, :cond_1

    .line 72
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 67
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 69
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static insertWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    .line 101
    const/4 v5, 0x2

    :try_start_0
    invoke-static {p0, v5, p1}, Landroid/provider/LenovoSecure;->isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    const/4 v5, 0x2

    invoke-static {p0, v5, p1}, Landroid/provider/LenovoSecure;->delLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 106
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v5, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 107
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "phonenumber"

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 110
    if-nez v2, :cond_1

    .line 116
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 114
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 115
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isLocalBlack(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.LocalBlackProvider/localblack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 147
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 148
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 149
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    if-lez v6, :cond_0

    .line 152
    const/4 v2, 0x1

    .line 156
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return v2

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    move v2, v9

    .line 154
    goto :goto_0

    .line 155
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v2, v9

    .line 156
    goto :goto_0
.end method

.method public static isWhitePerson(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.safecenter.WhitePersonProvider/whiteperson"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 165
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 167
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    if-lez v6, :cond_0

    .line 170
    const/4 v2, 0x1

    .line 174
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return v2

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #count:I
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    move v2, v9

    .line 172
    goto :goto_0

    .line 173
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v2, v9

    .line 174
    goto :goto_0
.end method
