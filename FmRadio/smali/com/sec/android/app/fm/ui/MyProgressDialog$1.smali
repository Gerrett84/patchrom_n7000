.class Lcom/sec/android/app/fm/ui/MyProgressDialog$1;
.super Ljava/lang/Object;
.source "MyProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/MyProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/MyProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog$1;->this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/MyProgressDialog$1;->this$0:Lcom/sec/android/app/fm/ui/MyProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->finish()V

    .line 37
    return-void
.end method
