.class public Lcom/google/gdata/client/projecthosting/ProjectHostingService;
.super Lcom/google/gdata/client/GoogleService;
.source "ProjectHostingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/projecthosting/ProjectHostingService$Versions;
    }
.end annotation


# static fields
.field public static final DEFAULT_VERSION:Lcom/google/gdata/util/Version;

.field public static final PROJECTHOSTING_SERVICE:Ljava/lang/String; = "code"

.field public static final PROJECTHOSTING_SERVICE_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GProjectHosting-Java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/projecthosting/ProjectHostingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->PROJECTHOSTING_SERVICE_VERSION:Ljava/lang/String;

    .line 62
    const-class v0, Lcom/google/gdata/client/projecthosting/ProjectHostingService;

    sget-object v1, Lcom/google/gdata/client/projecthosting/ProjectHostingService$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-static {v0, v1}, Lcom/google/gdata/client/Service;->initServiceVersion(Ljava/lang/Class;Lcom/google/gdata/util/Version;)Lcom/google/gdata/util/Version;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->DEFAULT_VERSION:Lcom/google/gdata/util/Version;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "code"

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->declareExtensions()V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "requestFactory"    # Lcom/google/gdata/client/Service$GDataRequestFactory;
    .param p3, "authTokenFactory"    # Lcom/google/gdata/client/AuthTokenFactory;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Lcom/google/gdata/client/Service$GDataRequestFactory;Lcom/google/gdata/client/AuthTokenFactory;)V

    .line 97
    invoke-direct {p0}, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->declareExtensions()V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "code"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->declareExtensions()V

    .line 118
    return-void
.end method

.method private declareExtensions()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/google/gdata/data/projecthosting/IssueCommentsFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/IssueCommentsFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/projecthosting/IssueCommentsFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 137
    new-instance v0, Lcom/google/gdata/data/projecthosting/IssuesFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/IssuesFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/projecthosting/IssuesFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 138
    new-instance v0, Lcom/google/gdata/data/projecthosting/ProjectsFeed;

    invoke-direct {v0}, Lcom/google/gdata/data/projecthosting/ProjectsFeed;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/projecthosting/ProjectsFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 139
    return-void
.end method

.method public static getVersion()Lcom/google/gdata/util/Version;
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/google/gdata/util/VersionRegistry;->get()Lcom/google/gdata/util/VersionRegistry;

    move-result-object v0

    const-class v1, Lcom/google/gdata/client/projecthosting/ProjectHostingService;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/VersionRegistry;->getVersion(Ljava/lang/Class;)Lcom/google/gdata/util/Version;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getServiceVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/gdata/client/projecthosting/ProjectHostingService;->PROJECTHOSTING_SERVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/client/GoogleService;->getServiceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
