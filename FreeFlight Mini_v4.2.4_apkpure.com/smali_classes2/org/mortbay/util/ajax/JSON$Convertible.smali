.class public interface abstract Lorg/mortbay/util/ajax/JSON$Convertible;
.super Ljava/lang/Object;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Convertible"
.end annotation


# virtual methods
.method public abstract fromJSON(Ljava/util/Map;)V
.end method

.method public abstract toJSON(Lorg/mortbay/util/ajax/JSON$Output;)V
.end method