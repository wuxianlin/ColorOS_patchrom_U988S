.class public Lcom/zte/zteConfig;
.super Ljava/lang/Object;
.source "zteConfig.java"


# static fields
.field public static final CMCC_TEST_VER:I = 0x3

.field public static final CMCC_VER:I = 0x1

.field public static final NETWORK_VER:I = 0x2

.field public static final NORMAL_VER:I = 0x0

.field public static final TELECOM_CMCC:I = 0x1

.field public static final TELECOM_CTCC:I = 0x3

.field public static final TELECOM_CUCC:I = 0x2

.field public static final TELECOM_UNKNOW:I

.field public static productName:Ljava/lang/String;

.field public static versionTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/zte/zteConfig;->productName:Ljava/lang/String;

    .line 13
    sput-object v0, Lcom/zte/zteConfig;->versionTypeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/zte/zteConfig;->productName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/zte/zteConfig;->productName:Ljava/lang/String;

    .line 23
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/zteConfig;->productName:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/zte/zteConfig;->productName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTeleOperator()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 27
    invoke-static {}, Lcom/zte/zteConfig;->getProductName()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, name:Ljava/lang/String;
    const-string v3, "enterprise_U985"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    const-string v3, "enterprise_U950"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    const-string v1, "enterprise_V985"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string/jumbo v1, "pluto_P040T30"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 35
    goto :goto_0

    .line 37
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVersionType()I
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/zte/zteConfig;->getVersionTypeName()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, type:Ljava/lang/String;
    const-string v1, "CMCC_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 56
    :goto_0
    return v1

    .line 51
    :cond_0
    const-string v1, "NETWORK_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const/4 v1, 0x2

    goto :goto_0

    .line 53
    :cond_1
    const-string v1, "CMCC_TEST_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    const/4 v1, 0x3

    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVersionTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/zte/zteConfig;->versionTypeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/zte/zteConfig;->versionTypeName:Ljava/lang/String;

    .line 44
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-string/jumbo v0, "ro.product.versiontype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/zteConfig;->versionTypeName:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/zte/zteConfig;->versionTypeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isZteBlockType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-static {}, Lcom/zte/zteConfig;->getVersionType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
