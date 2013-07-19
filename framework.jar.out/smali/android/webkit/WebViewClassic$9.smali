.class Landroid/webkit/WebViewClassic$9;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->drawFocus(Landroid/graphics/Canvas;Landroid/graphics/Rect;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 4523
    iput-object p1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3
    .parameter "r1"
    .parameter "r2"

    .prologue
    .line 4525
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 4526
    .local v0, diff:I
    if-eqz v0, :cond_0

    .end local v0           #diff:I
    :goto_0
    return v0

    .restart local v0       #diff:I
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4523
    check-cast p1, Landroid/graphics/Rect;

    .end local p1
    check-cast p2, Landroid/graphics/Rect;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClassic$9;->compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method
