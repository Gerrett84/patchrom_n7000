.class public Lcom/android/OriginalSettings/CryptKeeper$FadeToBlack;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FadeToBlack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper$FadeToBlack;->setContentView(I)V

    .line 150
    return-void
.end method
