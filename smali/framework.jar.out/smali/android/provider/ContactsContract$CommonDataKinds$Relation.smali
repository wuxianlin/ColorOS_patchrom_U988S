.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6313
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6372
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6376
    .end local p2
    :goto_0
    return-object p2

    .line 6375
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 6376
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6344
    packed-switch p0, :pswitch_data_0

    .line 6361
    const v0, 0x10402de

    :goto_0
    return v0

    .line 6345
    :pswitch_0
    const v0, 0x10402e0

    goto :goto_0

    .line 6346
    :pswitch_1
    const v0, 0x10402e1

    goto :goto_0

    .line 6347
    :pswitch_2
    const v0, 0x10402e2

    goto :goto_0

    .line 6349
    :pswitch_3
    const v0, 0x10402e3

    goto :goto_0

    .line 6350
    :pswitch_4
    const v0, 0x10402e4

    goto :goto_0

    .line 6351
    :pswitch_5
    const v0, 0x10402e5

    goto :goto_0

    .line 6352
    :pswitch_6
    const v0, 0x10402e6

    goto :goto_0

    .line 6353
    :pswitch_7
    const v0, 0x10402e7

    goto :goto_0

    .line 6354
    :pswitch_8
    const v0, 0x10402e8

    goto :goto_0

    .line 6355
    :pswitch_9
    const v0, 0x10402e9

    goto :goto_0

    .line 6357
    :pswitch_a
    const v0, 0x10402ea

    goto :goto_0

    .line 6358
    :pswitch_b
    const v0, 0x10402eb

    goto :goto_0

    .line 6359
    :pswitch_c
    const v0, 0x10402ec

    goto :goto_0

    .line 6360
    :pswitch_d
    const v0, 0x10402ed

    goto :goto_0

    .line 6344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
