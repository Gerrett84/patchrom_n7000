.class Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$1;
.super Landroid/database/ContentObserver;
.source "DormantmodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 98
    const-string v0, "DormantModeSettings"

    const-string v1, "onChange() DORMANTMODE_SWITCH_CHANGED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    .line 100
    return-void
.end method
