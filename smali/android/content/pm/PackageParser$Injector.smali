.class Landroid/content/pm/PackageParser$Injector;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPriority(II)I
    .registers 3
    .parameter "flags"
    .parameter "priority"

    .prologue
    .line 88
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_a

    .line 89
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_b

    .line 90
    const/16 p1, 0x3e7

    .line 95
    :cond_a
    :goto_a
    return p1

    .line 91
    :cond_b
    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_a

    .line 92
    const/16 p1, -0x3e7

    goto :goto_a
.end method

.method static filterNameError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "pkgName"
    .parameter "nameError"

    .prologue
    .line 81
    const-string/jumbo v0, "miui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    const/4 p1, 0x0

    .line 84
    .end local p1
    :cond_a
    return-object p1
.end method
