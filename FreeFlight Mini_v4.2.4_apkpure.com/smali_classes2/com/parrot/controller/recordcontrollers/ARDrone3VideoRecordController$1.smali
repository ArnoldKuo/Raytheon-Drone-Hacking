.class synthetic Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;
.super Ljava/lang/Object;
.source "ARDrone3VideoRecordController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

.field static final synthetic $SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_LOW_BATTERY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_CRITICAL_BATTERY:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_PILOTINGSTATE_ALERTSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    .line 246
    :goto_1
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM:[I

    :try_start_2
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_STARTED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_STOPPED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$arsdk$arcommands$ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_FAILED:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_ARDRONE3_MEDIARECORDSTATE_VIDEOSTATECHANGED_STATE_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 81
    :goto_4
    invoke-static {}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->values()[Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    :try_start_5
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_AVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_UNAVAILABLE:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_BUSY:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/parrot/controller/recordcontrollers/ARDrone3VideoRecordController$1;->$SwitchMap$com$parrot$controller$recordcontrollers$ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE:[I

    sget-object v1, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ARMEDIARECORDCONTROLLER_STATE_RECORDING:Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;

    invoke-virtual {v1}, Lcom/parrot/controller/recordcontrollers/ARMediaRecordController$eARMEDIARECORDCONTROLLER_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    .line 246
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    .line 384
    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
