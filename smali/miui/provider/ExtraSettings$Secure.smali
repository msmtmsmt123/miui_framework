.class public Lmiui/provider/ExtraSettings$Secure;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESS_CONTROL_LOCK_ENABLED:Ljava/lang/String; = "access_control_lock_enabled"

.field public static APP_ENCRYPT_PASSWORD:Ljava/lang/String; = null

.field public static final DATA_USAGE_ADJUSTING_TIME:Ljava/lang/String; = "data_usage_adjusting_time"

.field public static final DATA_USAGE_ADJUSTMENT:Ljava/lang/String; = "data_usage_adjustment"

.field public static final DATA_USAGE_LIMIT_BYTES:Ljava/lang/String; = "data_usage_limit_bytes"

.field public static final DEFAULT_INPUT_METHOD_CHOOSED:Ljava/lang/String; = "default_input_method_choosed"

.field public static DEFAULT_SHOW_MAGNIFIER_WHEN_INPUT:I = 0x0

.field public static FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String; = null

.field public static MOBILE_DOWNLOAD_FILE_SIZE_PROMPT_POPUP_ENABLED:Ljava/lang/String; = null

.field public static final MOBILE_POLICY:Ljava/lang/String; = "mobile_policy"

.field public static final PASSWORD_FOR_PRIVACYMODE:Ljava/lang/String; = "password_for_privacymode"

.field public static final PRIVACY_MODE_ENABLED:Ljava/lang/String; = "privacy_mode_enabled"

.field public static final SCREEN_BUTTONS_HAS_BEEN_DISABLED:Ljava/lang/String; = "screen_buttons_has_been_disabled"

.field public static final SCREEN_BUTTONS_STATE:Ljava/lang/String; = "screen_buttons_state"

.field public static final SCREEN_BUTTONS_TURN_ON:Ljava/lang/String; = "screen_buttons_turn_on"

.field public static SHOW_MAGNIFIER_WHEN_INPUT:Ljava/lang/String; = null

.field public static final UPLOAD_LOG:Ljava/lang/String; = "upload_log_pref"

.field public static final USB_MODE:Ljava/lang/String; = "usb_mode"

.field public static final USB_MODE_ASK_USER:I = 0x0

.field public static final USB_MODE_CHARGE_ONLY:I = 0x1

.field public static final USB_MODE_MOUNT_STORAGE:I = 0x2

.field private static sStorageThreshold:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 746
    const-string/jumbo v0, "mobile_download_file_size_prompt_popup_enabled"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->MOBILE_DOWNLOAD_FILE_SIZE_PROMPT_POPUP_ENABLED:Ljava/lang/String;

    .line 748
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    .line 766
    const-string v0, "force_close_dialog_enabled"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    .line 779
    const-string/jumbo v0, "show_magnifier_when_input"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->SHOW_MAGNIFIER_WHEN_INPUT:Ljava/lang/String;

    .line 780
    const/4 v0, 0x1

    sput v0, Lmiui/provider/ExtraSettings$Secure;->DEFAULT_SHOW_MAGNIFIER_WHEN_INPUT:I

    .line 792
    const-string v0, "app_encrypt_password"

    sput-object v0, Lmiui/provider/ExtraSettings$Secure;->APP_ENCRYPT_PASSWORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 663
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "privacy_mode_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_1e

    move v0, v2

    .line 717
    .local v0, enabled:Z
    :goto_10
    if-eqz v0, :cond_20

    .line 718
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 722
    :goto_1d
    return-object v1

    .end local v0           #enabled:Z
    :cond_1e
    move v0, v3

    .line 715
    goto :goto_10

    .line 722
    .restart local v0       #enabled:Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public static getStorageThreshold(Landroid/content/ContentResolver;)J
    .registers 7
    .parameter "resolver"

    .prologue
    .line 751
    sget-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_30

    .line 752
    const-string/jumbo v2, "sys_storage_threshold_percentage"

    const/16 v3, 0xa

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 757
    .local v1, value:I
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 758
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    int-to-long v4, v1

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    sput-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    .line 760
    .end local v0           #stats:Landroid/os/StatFs;
    .end local v1           #value:I
    :cond_30
    sget-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    return-wide v2
.end method

.method public static isForceCloseDialogEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 769
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraSettings$Secure;->FORCE_CLOCE_DIALOG_ENABLED:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_11

    move-result v2

    if-ne v0, v2, :cond_f

    .line 773
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 769
    goto :goto_e

    .line 771
    :catch_11
    move-exception v2

    .line 773
    const-string/jumbo v2, "user"

    sget-object v3, Lmiui/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {}, Lmiui/os/Build;->isDevelopmentVersion()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    move v1, v0

    :cond_24
    move v0, v1

    goto :goto_e
.end method

.method public static showMagnifierWhenInput(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 782
    sget-boolean v1, Lmiui/os/Build;->SHOW_MAGNIFIER_WHEN_INPUT:Z

    if-nez v1, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraSettings$Secure;->SHOW_MAGNIFIER_WHEN_INPUT:Ljava/lang/String;

    sget v3, Lmiui/provider/ExtraSettings$Secure;->DEFAULT_SHOW_MAGNIFIER_WHEN_INPUT:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_21

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method