.class public Lcom/google/gdata/data/calendar/SyncEventProperty;
.super Lcom/google/gdata/data/ValueConstruct;
.source "SyncEventProperty.java"


# static fields
.field public static final FALSE:Lcom/google/gdata/data/calendar/SyncEventProperty;

.field public static final TRUE:Lcom/google/gdata/data/calendar/SyncEventProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/gdata/data/calendar/SyncEventProperty;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/SyncEventProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/SyncEventProperty;->TRUE:Lcom/google/gdata/data/calendar/SyncEventProperty;

    .line 33
    new-instance v0, Lcom/google/gdata/data/calendar/SyncEventProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/SyncEventProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/SyncEventProperty;->FALSE:Lcom/google/gdata/data/calendar/SyncEventProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/calendar/SyncEventProperty;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "syncEvent"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/calendar/SyncEventProperty;

    sget-object v2, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "syncEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method
