.class public interface abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# virtual methods
.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract doSimAuth(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract doUsimAuth(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getIccCardPin()Ljava/lang/String;
.end method

.method public abstract getIccCardType()I
.end method

.method public abstract getIccFdnAvailable()Z
.end method

.method public abstract getIccFdnEnabled()Z
.end method

.method public abstract getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
.end method

.method public abstract getIccLockEnabled()Z
.end method

.method public abstract getIccPin1RetryCount()I
.end method

.method public abstract getIccPin2Blocked()Z
.end method

.method public abstract getIccPin2RetryCount()I
.end method

.method public abstract getIccPuk1RetryCount()I
.end method

.method public abstract getIccPuk2Blocked()Z
.end method

.method public abstract getIccPuk2RetryCount()I
.end method

.method public abstract getIccRecords()Lcom/android/internal/telephony/IccRecords;
.end method

.method public abstract getLacCid(ILandroid/os/Message;)V
.end method

.method public abstract getPinPukRetries()V
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/android/internal/telephony/IccCardConstants$State;
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract unregisterForAbsent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkLocked(Landroid/os/Handler;)V
.end method
