.class public Lcom/android/systemui/recent/RemotePluginView;
.super Landroid/widget/FrameLayout;
.source "RemotePluginView.java"


# instance fields
.field private mInitialHeight:I

.field private mLookupKey:Ljava/lang/String;

.field private mPluginView:Landroid/view/View;

.field private mPluginViewPackage:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RemotePluginView;->setupPluginView(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/RemotePluginView;->readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RemotePluginView;->setupPluginView(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/RemotePluginView;->readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RemotePluginView;->setupPluginView(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method private static createPluginViewContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 122
    .local v0, newContext:Landroid/content/Context;
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPluginView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter "context"

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, pluginView:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RemotePluginView;->getPluginViewPackage(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 246
    .local v3, pluginViewInfo:Landroid/content/ComponentName;
    invoke-static {p1, v3}, Lcom/android/systemui/recent/RemotePluginView;->validatePluginView(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    .line 250
    .local v4, validationOk:Z
    if-eqz v4, :cond_0

    .line 251
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/systemui/recent/RemotePluginView;->createPluginViewContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 253
    .local v2, pluginViewContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 255
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-static {v0, v3, v2}, Lcom/android/systemui/recent/RemotePluginView;->instantiatePluginView(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 260
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v2           #pluginViewContext:Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method private getPluginViewPackage(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 8
    .parameter "context"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 141
    .local v2, info:Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginViewPackage:Landroid/content/ComponentName;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recent/RemotePluginView;->mLookupKey:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 143
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 145
    .local v3, packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 146
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 148
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/systemui/recent/RemotePluginView;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 151
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #info:Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    .restart local v2       #info:Landroid/content/ComponentName;
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginViewPackage:Landroid/content/ComponentName;

    .line 160
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginViewPackage:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static instantiatePluginView(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 194
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 195
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 231
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 205
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 209
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 214
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 219
    :catch_5
    move-exception v0

    move-object v0, v1

    .line 229
    goto :goto_0

    .line 224
    :catch_6
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    sget-object v1, Lcom/android/systemui/R$styleable;->RemotePluginView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RemotePluginView;->mLookupKey:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method private setupPluginView(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RemotePluginView;->getPluginView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RemotePluginView;->addView(Landroid/view/View;)V

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, initialHeight:I
    iget-object v2, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mInitialHeight:I

    .line 104
    .end local v0           #initialHeight:I
    .end local v1           #tag:Ljava/lang/Object;
    :goto_1
    return-void

    .line 102
    :cond_1
    const/16 v2, 0x8

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 98
    .restart local v0       #initialHeight:I
    .restart local v1       #tag:Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static validatePluginView(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 169
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "com.sonymobile.permission.TASK_SWITCHER_PLUGIN_VIEW"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 171
    const/4 v1, 0x1

    .line 177
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getInitialHeight()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mInitialHeight:I

    return v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/recent/RemotePluginView;->mPluginView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 109
    const/16 p1, 0x8

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 112
    return-void
.end method
