.class public Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;
.super Ljava/lang/Object;
.source "FtpNetworkHandler.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/FtpNetworkHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/FtpNetworkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BLEFtpHandler"
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mBleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

.field private final mDestPort:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/arsdk/arsal/ARSALBLEManager;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "manager"    # Lcom/parrot/arsdk/arsal/ARSALBLEManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "devicePort"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;->mApplicationContext:Landroid/content/Context;

    .line 109
    iput p3, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;->mDestPort:I

    .line 110
    iput-object p2, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;->mBleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    .line 111
    return-void
.end method


# virtual methods
.method public varargs close([Lcom/parrot/arsdk/arutils/ARUtilsManager;)V
    .locals 4
    .param p1, "managers"    # [Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 129
    .local v0, "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    iget-object v3, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->closeBLEFtp(Landroid/content/Context;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_0
    return-void
.end method

.method public varargs init([Lcom/parrot/arsdk/arutils/ARUtilsManager;)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    .locals 7
    .param p1, "managers"    # [Lcom/parrot/arsdk/arutils/ARUtilsManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    sget-object v2, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    .line 116
    .local v2, "result":Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;
    iget-object v3, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;->mBleManager:Lcom/parrot/arsdk/arsal/ARSALBLEManager;

    invoke-virtual {v3}, Lcom/parrot/arsdk/arsal/ARSALBLEManager;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 117
    .local v0, "gatt":Landroid/bluetooth/BluetoothGatt;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p1, v3

    .line 118
    .local v1, "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    iget-object v5, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;->mApplicationContext:Landroid/content/Context;

    iget v6, p0, Lcom/parrot/freeflight/media/task/FtpNetworkHandler$BLEFtpHandler;->mDestPort:I

    invoke-virtual {v1, v5, v0, v6}, Lcom/parrot/arsdk/arutils/ARUtilsManager;->initBLEFtp(Landroid/content/Context;Landroid/bluetooth/BluetoothGatt;I)Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    move-result-object v2

    .line 119
    sget-object v5, Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;->ARUTILS_OK:Lcom/parrot/arsdk/arutils/ARUTILS_ERROR_ENUM;

    if-eq v2, v5, :cond_1

    .line 123
    .end local v1    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_0
    return-object v2

    .line 117
    .restart local v1    # "manager":Lcom/parrot/arsdk/arutils/ARUtilsManager;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
