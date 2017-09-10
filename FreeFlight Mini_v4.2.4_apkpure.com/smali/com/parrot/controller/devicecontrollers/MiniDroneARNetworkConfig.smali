.class public final Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;
.super Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;
.source "MiniDroneARNetworkConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;-><init>()V

    return-void
.end method


# virtual methods
.method protected updateParams()V
    .locals 12

    .prologue
    .line 13
    const/16 v0, 0xa

    sput v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferC2dNack:I

    .line 14
    const/16 v0, 0xb

    sput v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferC2dAck:I

    .line 15
    const/16 v0, 0xc

    sput v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferC2dEmergency:I

    .line 16
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_BLE_ID_MAX:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferD2cNavdata:I

    .line 17
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_BLE_ID_MAX:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferD2cEvents:I

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->hasVideo:Z

    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->videoMaxAckInterval:I

    .line 22
    sget v0, Lcom/parrot/arsdk/arnetworkal/ARNetworkALManager;->ARNETWORKAL_MANAGER_BLE_ID_MAX:I

    div-int/lit8 v9, v0, 0x2

    .line 23
    .local v9, "ackOffset":I
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferD2cNavdata:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferD2cEvents:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferC2dAck:I

    add-int/2addr v2, v9

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferC2dEmergency:I

    add-int/2addr v2, v9

    aput v2, v0, v1

    sput-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->bleNotificationIDs:[I

    .line 25
    sget-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->c2dParams:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 29
    .local v10, "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v10}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    goto :goto_0

    .line 33
    .end local v10    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_0
    sget-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->c2dParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    sget-object v11, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->c2dParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferC2dNack:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/16 v3, 0x14

    sget v4, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/4 v6, 0x1

    sget v7, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_DATACOPYMAXSIZE_USE_MAX:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v11, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->c2dParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferC2dAck:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/16 v3, 0x14

    const/16 v4, 0x1f4

    const/4 v5, 0x3

    const/16 v6, 0x14

    sget v7, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_DATACOPYMAXSIZE_USE_MAX:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v11, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->c2dParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferC2dEmergency:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/4 v3, 0x1

    const/16 v4, 0x64

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/4 v6, 0x1

    sget v7, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_DATACOPYMAXSIZE_USE_MAX:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->d2cParams:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    .line 63
    .restart local v10    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    invoke-virtual {v10}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->dispose()V

    goto :goto_1

    .line 66
    .end local v10    # "param":Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;
    :cond_1
    sget-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->d2cParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    sget-object v11, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->d2cParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferD2cNavdata:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/16 v3, 0x14

    sget v4, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    sget v5, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_INFINITE_NUMBER:I

    const/16 v6, 0x14

    sget v7, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_DATACOPYMAXSIZE_USE_MAX:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v11, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->d2cParams:Ljava/util/List;

    new-instance v0, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;

    sget v1, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferD2cEvents:I

    sget-object v2, Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;->ARNETWORKAL_FRAME_TYPE_DATA_WITH_ACK:Lcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;

    const/16 v3, 0x14

    const/16 v4, 0x1f4

    const/4 v5, 0x3

    const/16 v6, 0x14

    sget v7, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;->ARNETWORK_IOBUFFERPARAM_DATACOPYMAXSIZE_USE_MAX:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/parrot/arsdk/arnetwork/ARNetworkIOBufferParam;-><init>(ILcom/parrot/arsdk/arnetworkal/ARNETWORKAL_FRAME_TYPE_ENUM;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferD2cNavdata:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->iobufferD2cEvents:I

    aput v2, v0, v1

    sput-object v0, Lcom/parrot/controller/devicecontrollers/MiniDroneARNetworkConfig;->commandsBuffers:[I

    .line 88
    return-void
.end method