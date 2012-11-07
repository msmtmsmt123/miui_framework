.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$ConstantState;,
        Landroid/graphics/drawable/Drawable$Callback2;,
        Landroid/graphics/drawable/Drawable$Callback;,
        Landroid/graphics/drawable/Drawable$Injector;
    }
.end annotation


# static fields
.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingConfigurations:I

.field private mLevel:I

.field private mStateSet:[I
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    sget-object v0, Landroid/R$styleable;->DrawableStates:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 167
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 168
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 169
    sget-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 992
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/Drawable;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/Drawable;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object p1
.end method

.method public static createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "pathName"

    .prologue
    const/4 v0, 0x0

    .line 942
    if-nez p0, :cond_4

    .line 951
    :cond_3
    :goto_3
    return-object v0

    .line 946
    :cond_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 947
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, p0

    .line 948
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "srcName"

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .registers 14
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "srcName"
    .parameter "opts"

    .prologue
    const/4 v0, 0x0

    .line 812
    if-nez p2, :cond_4

    .line 848
    :cond_3
    :goto_3
    return-object v0

    .line 822
    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 831
    .local v3, pad:Landroid/graphics/Rect;
    if-nez p4, :cond_10

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 832
    .restart local p4
    :cond_10
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 833
    invoke-static {p0, p1, p2, v3, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 834
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 835
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 836
    .local v2, np:[B
    if-eqz v2, :cond_26

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-nez v0, :cond_28

    .line 837
    :cond_26
    const/4 v2, 0x0

    .line 838
    const/4 v3, 0x0

    .line 840
    :cond_28
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getLayoutBounds()[I

    move-result-object v6

    .line 841
    .local v6, layoutBounds:[I
    const/4 v4, 0x0

    .line 842
    .local v4, layoutBoundsRect:Landroid/graphics/Rect;
    if-eqz v6, :cond_40

    .line 843
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #layoutBoundsRect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v5, 0x1

    aget v5, v6, v5

    const/4 v7, 0x2

    aget v7, v6, v7

    const/4 v8, 0x3

    aget v8, v6, v8

    invoke-direct {v4, v0, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4       #layoutBoundsRect:Landroid/graphics/Rect;
    :cond_40
    move-object v0, p0

    move-object v5, p3

    .line 846
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public static createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "is"
    .parameter "srcName"

    .prologue
    const/4 v0, 0x0

    .line 793
    invoke-static {v0, v0, p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "r"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 858
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 862
    .local v0, attrs:Landroid/util/AttributeSet;
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    if-eq v2, v4, :cond_e

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 866
    :cond_e
    if-eq v2, v4, :cond_18

    .line 867
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 870
    :cond_18
    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 872
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3b

    .line 873
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 876
    :cond_3b
    return-object v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 891
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 933
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :cond_12
    :goto_12
    invoke-virtual {v0, p0, p1, p2}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 934
    return-object v0

    .line 892
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_16
    const-string v2, "level-list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 893
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 898
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_24
    const-string v2, "layer-list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 899
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 900
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_32
    const-string/jumbo v2, "transition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 901
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 902
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_41
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 903
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 904
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4f
    const-string/jumbo v2, "shape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 905
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 906
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5e
    const-string/jumbo v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 907
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 908
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_6d
    const-string v2, "clip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 909
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 910
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_7b
    const-string/jumbo v2, "rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 911
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 912
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_8a
    const-string v2, "animated-rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 913
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_12

    .line 914
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_99
    const-string v2, "animation-list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 915
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_12

    .line 916
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_a8
    const-string v2, "inset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 917
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_12

    .line 918
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_b7
    const-string v2, "bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 919
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 920
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_12

    move-object v2, v0

    .line 921
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_12

    .line 923
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_d2
    const-string/jumbo v2, "nine-patch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 924
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    .line 925
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_12

    move-object v2, v0

    .line 926
    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_12

    .line 929
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_ee
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invalid drawable tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 13
    .parameter "res"
    .parameter "bm"
    .parameter "np"
    .parameter "pad"
    .parameter "layoutBounds"
    .parameter "srcName"

    .prologue
    .line 1031
    if-eqz p2, :cond_e

    .line 1032
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 1035
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_d
.end method

.method public static resolveOpacity(II)I
    .registers 4
    .parameter "op1"
    .parameter "op2"

    .prologue
    const/4 v0, -0x2

    const/4 v1, -0x3

    .line 649
    if-ne p0, p1, :cond_5

    .line 661
    .end local p0
    :goto_4
    return p0

    .line 652
    .restart local p0
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    .line 653
    :cond_9
    const/4 p0, 0x0

    goto :goto_4

    .line 655
    :cond_b
    if-eq p0, v1, :cond_f

    if-ne p1, v1, :cond_11

    :cond_f
    move p0, v1

    .line 656
    goto :goto_4

    .line 658
    :cond_11
    if-eq p0, v0, :cond_15

    if-ne p1, v0, :cond_17

    :cond_15
    move p0, v0

    .line 659
    goto :goto_4

    .line 661
    :cond_17
    const/4 p0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public clearColorFilter()V
    .registers 2

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    return-void
.end method

.method public final copyBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 228
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final copyBounds(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "bounds"

    .prologue
    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 217
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_d

    .line 248
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 251
    :cond_d
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 379
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 381
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 281
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .prologue
    .line 1025
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 544
    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 718
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 710
    const/4 v0, -0x1

    return v0
.end method

.method public getLayoutInsets()Landroid/graphics/Insets;
    .registers 2

    .prologue
    .line 768
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public final getLevel()I
    .registers 2

    .prologue
    .line 577
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 746
    .local v0, intrinsicHeight:I
    if-lez v0, :cond_7

    .end local v0           #intrinsicHeight:I
    :goto_6
    return v0

    .restart local v0       #intrinsicHeight:I
    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 732
    .local v0, intrinsicWidth:I
    if-lez v0, :cond_7

    .end local v0           #intrinsicWidth:I
    :goto_6
    return v0

    .restart local v0       #intrinsicWidth:I
    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public abstract getOpacity()I
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "padding"

    .prologue
    const/4 v0, 0x0

    .line 757
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 758
    return v0
.end method

.method public getResolvedLayoutDirectionSelf()I
    .registers 3

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 439
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/graphics/drawable/Drawable$Callback2;

    if-nez v1, :cond_c

    .line 440
    :cond_a
    const/4 v1, 0x0

    .line 442
    .end local v0           #callback:Landroid/graphics/drawable/Drawable$Callback;
    :goto_b
    return v1

    .restart local v0       #callback:Landroid/graphics/drawable/Drawable$Callback;
    :cond_c
    check-cast v0, Landroid/graphics/drawable/Drawable$Callback2;

    .end local v0           #callback:Landroid/graphics/drawable/Drawable$Callback;
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback2;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    goto :goto_b
.end method

.method public getState()[I
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .prologue
    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 961
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 962
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 963
    return-void
.end method

.method inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .registers 6
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .parameter "visibleAttr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 976
    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 395
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 396
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_9
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .prologue
    .line 604
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 1

    .prologue
    .line 535
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 1

    .prologue
    .line 786
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "bounds"

    .prologue
    .line 703
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .parameter "level"

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 3
    .parameter "state"

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5
    .parameter "what"
    .parameter "when"

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 412
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 413
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 415
    :cond_9
    return-void
.end method

.method public abstract setAlpha(I)V
.end method

.method public setBounds(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 188
    .local v0, oldBounds:Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_d

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #oldBounds:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 192
    .restart local v0       #oldBounds:Landroid/graphics/Rect;
    :cond_d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_27

    .line 194
    :cond_1d
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 197
    :cond_27
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "bounds"

    .prologue
    .line 204
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 205
    return-void
.end method

.method public final setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 366
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 367
    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 2
    .parameter "configs"

    .prologue
    .line 264
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 265
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 462
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 463
    return-void
.end method

.method public abstract setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public setDither(Z)V
    .registers 2
    .parameter "dither"

    .prologue
    .line 289
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 297
    return-void
.end method

.method public final setLevel(I)Z
    .registers 3
    .parameter "level"

    .prologue
    .line 564
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_b

    .line 565
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 566
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 568
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setState([I)Z
    .registers 3
    .parameter "stateSet"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 509
    invoke-static {p0, p1}, Landroid/graphics/drawable/Drawable$Injector;->miuiSetState(Landroid/graphics/drawable/Drawable;[I)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .registers 5
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 595
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq v1, p1, :cond_d

    const/4 v0, 0x1

    .line 596
    .local v0, changed:Z
    :goto_5
    if-eqz v0, :cond_c

    .line 597
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 598
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 600
    :cond_c
    return v0

    .line 595
    .end local v0           #changed:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "what"

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 428
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_9

    .line 429
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 431
    :cond_9
    return-void
.end method
