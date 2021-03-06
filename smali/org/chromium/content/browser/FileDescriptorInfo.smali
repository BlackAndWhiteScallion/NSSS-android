.class public final Lorg/chromium/content/browser/FileDescriptorInfo;
.super Ljava/lang/Object;
.source "FileDescriptorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/chromium/content/browser/FileDescriptorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mFd:Landroid/os/ParcelFileDescriptor;

.field public final mId:I

.field public final mOffset:J

.field public final mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/content/browser/FileDescriptorInfo$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/FileDescriptorInfo$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/FileDescriptorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;JJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "offset"    # J
    .param p5, "size"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    .line 23
    iput-object p2, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 24
    iput-wide p3, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mOffset:J

    .line 25
    iput-wide p5, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mSize:J

    .line 26
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mOffset:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mSize:J

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 42
    iget v0, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mFd:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    iget-wide v0, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v0, p0, Lorg/chromium/content/browser/FileDescriptorInfo;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    return-void
.end method
