.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSimPinView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# instance fields
.field private mHeaderText:Landroid/widget/TextView;

.field private volatile mSimCheckInProgress:Z

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    return p1
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x1040548

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x10202c5

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 96
    const v2, 0x10202ed

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHeaderText:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHeaderText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    const v2, 0x10202d1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, ok:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 102
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    const v2, 0x10202c6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, pinDelete:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 138
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 139
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 152
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 7

    .prologue
    const v6, 0x10402f2

    .line 64
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v0

    .line 67
    .local v0, attemptsRemaining:I
    if-ltz v0, :cond_0

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402f2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, displayMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0           #attemptsRemaining:I
    .end local v1           #displayMessage:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    return-void

    .line 72
    .restart local v0       #attemptsRemaining:I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHeaderText:Landroid/widget/TextView;

    const v4, 0x10402f2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v0           #attemptsRemaining:I
    :catch_0
    move-exception v2

    .line 75
    .local v2, ex:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHeaderText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x1040090

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 219
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_0

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    .line 221
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$4;->start()V

    goto :goto_0
.end method