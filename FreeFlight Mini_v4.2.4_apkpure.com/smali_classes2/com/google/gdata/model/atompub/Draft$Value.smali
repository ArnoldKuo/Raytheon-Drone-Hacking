.class public final enum Lcom/google/gdata/model/atompub/Draft$Value;
.super Ljava/lang/Enum;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/atompub/Draft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/model/atompub/Draft$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/model/atompub/Draft$Value;

.field public static final enum NO:Lcom/google/gdata/model/atompub/Draft$Value;

.field private static final VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/atompub/Draft$Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum YES:Lcom/google/gdata/model/atompub/Draft$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    new-instance v4, Lcom/google/gdata/model/atompub/Draft$Value;

    const-string v5, "NO"

    invoke-direct {v4, v5, v6}, Lcom/google/gdata/model/atompub/Draft$Value;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/gdata/model/atompub/Draft$Value;->NO:Lcom/google/gdata/model/atompub/Draft$Value;

    .line 43
    new-instance v4, Lcom/google/gdata/model/atompub/Draft$Value;

    const-string v5, "YES"

    invoke-direct {v4, v5, v7}, Lcom/google/gdata/model/atompub/Draft$Value;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/gdata/model/atompub/Draft$Value;->YES:Lcom/google/gdata/model/atompub/Draft$Value;

    .line 37
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/gdata/model/atompub/Draft$Value;

    sget-object v5, Lcom/google/gdata/model/atompub/Draft$Value;->NO:Lcom/google/gdata/model/atompub/Draft$Value;

    aput-object v5, v4, v6

    sget-object v5, Lcom/google/gdata/model/atompub/Draft$Value;->YES:Lcom/google/gdata/model/atompub/Draft$Value;

    aput-object v5, v4, v7

    sput-object v4, Lcom/google/gdata/model/atompub/Draft$Value;->$VALUES:[Lcom/google/gdata/model/atompub/Draft$Value;

    .line 54
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/google/gdata/model/atompub/Draft$Value;->VALUE_MAP:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/google/gdata/model/atompub/Draft$Value;->values()[Lcom/google/gdata/model/atompub/Draft$Value;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/model/atompub/Draft$Value;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 57
    .local v3, "value":Lcom/google/gdata/model/atompub/Draft$Value;
    sget-object v4, Lcom/google/gdata/model/atompub/Draft$Value;->VALUE_MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/gdata/model/atompub/Draft$Value;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "value":Lcom/google/gdata/model/atompub/Draft$Value;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Draft$Value;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lcom/google/gdata/model/atompub/Draft$Value;->VALUE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Draft$Value;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Draft$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/model/atompub/Draft$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Draft$Value;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/model/atompub/Draft$Value;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/gdata/model/atompub/Draft$Value;->$VALUES:[Lcom/google/gdata/model/atompub/Draft$Value;

    invoke-virtual {v0}, [Lcom/google/gdata/model/atompub/Draft$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/model/atompub/Draft$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Draft$Value;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
