.class public final Landroid/provider/ContactsContract$LenovoDialerSearch;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LenovoDialerSearch"
.end annotation


# static fields
.field public static final CHAR_SEPARATOR:Ljava/lang/String; = "#"

.field public static final CN_QUANPIN_FLAG:Ljava/lang/String; = "|"

.field public static final COLUMN_MATCH_TYPE:Ljava/lang/String; = "match_type"

.field public static final COLUMN_NAME_OFFSET:Ljava/lang/String; = "name_offset"

.field public static final COLUMN_NUM_OFFSET:Ljava/lang/String; = "num_offset"

.field public static final COLUMN_RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final COLUMN_SORT_KEY:Ljava/lang/String; = "sort_key"

.field public static final COLUMN_SORT_KEY_NAME:Ljava/lang/String; = "sort_key_name"

.field public static final COLUMN_SORT_KEY_NUM:Ljava/lang/String; = "sort_key_num"

.field public static final ITCODE_SORT_KEY:Ljava/lang/String; = "11"

.field public static final MAIN_SEPARATOR:Ljava/lang/String; = "^"

.field public static final MIXSTRING_FLAG:Ljava/lang/String; = "*"

.field public static final NUM_SORT_KEY:Ljava/lang/String; = "13"

.field public static final QUANPIN_SORT_KEY:Ljava/lang/String; = "12"

.field public static final SHOUZIMU_SORT_KEY:Ljava/lang/String; = "10"

.field public static final TEMP_RAW_CONTACT_TABLE:Ljava/lang/String; = "temp_raw_contact_table"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
