.class final Landroid/app/ContextImpl$18;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 361
    new-instance v0, Landroid/app/KeyguardManager;

    invoke-direct {v0}, Landroid/app/KeyguardManager;-><init>()V

    return-object v0
.end method