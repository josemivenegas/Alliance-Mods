.class Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryControllerNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;

    .line 204
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 205
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->access$100(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "statusbar_battery_icon"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    const-string v1, "notification_battery_display"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 214
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;

    #calls: Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->updateSettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)V

    .line 219
    return-void
.end method
