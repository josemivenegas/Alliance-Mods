.class Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->startAnimation(Z)V

    .line 267
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->startScrollAnimation()V

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0
.end method