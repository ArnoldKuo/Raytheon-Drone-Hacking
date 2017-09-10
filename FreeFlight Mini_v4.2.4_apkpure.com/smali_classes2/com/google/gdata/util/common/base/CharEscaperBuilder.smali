.class public Lcom/google/gdata/util/common/base/CharEscaperBuilder;
.super Ljava/lang/Object;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->max:I

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    .line 79
    return-void
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;
    .locals 2
    .param p1, "c"    # C
    .param p2, "r"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget v0, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->max:I

    if-le p1, v0, :cond_0

    .line 87
    iput p1, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->max:I

    .line 89
    :cond_0
    return-object p0
.end method

.method public addEscapes([CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;
    .locals 4
    .param p1, "cs"    # [C
    .param p2, "r"    # Ljava/lang/String;

    .prologue
    .line 96
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 97
    .local v1, "c":C
    invoke-virtual {p0, v1, p2}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "c":C
    :cond_0
    return-object p0
.end method

.method public toArray()[[C
    .locals 5

    .prologue
    .line 110
    iget v3, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->max:I

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [[C

    .line 111
    .local v2, "result":[[C
    iget-object v3, p0, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    .line 114
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method public toEscaper()Lcom/google/gdata/util/common/base/CharEscaper;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;

    invoke-virtual {p0}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/base/CharEscaperBuilder$CharArrayDecorator;-><init>([[C)V

    return-object v0
.end method
