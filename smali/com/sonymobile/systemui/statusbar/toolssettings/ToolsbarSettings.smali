.class public Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;
.super Landroid/app/ListActivity;
.source "ToolsbarSettings.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMaxNumberOfSelectedItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->mMaxNumberOfSelectedItems:I

    return v0
.end method

.method private callerHasWritePermission()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 146
    .local v0, caller:Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static createHashmap([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .parameter "itemsString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v3, Ljava/util/HashMap;

    array-length v6, p0

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 293
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 294
    .local v4, s:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, stringArray:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 296
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #stringArray:[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getAvailableToolsFromResources(I)Ljava/util/List;
    .locals 11
    .parameter "stringArrayResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 222
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v7, tools:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    .line 224
    .local v3, isRestricted:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 226
    .local v5, restrictedToolsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v6, v0, v2

    .line 227
    .local v6, s:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 228
    :cond_0
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #isRestricted:Z
    .end local v4           #len$:I
    .end local v5           #restrictedToolsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #s:Ljava/lang/String;
    :cond_2
    move v3, v8

    .line 223
    goto :goto_0

    .line 232
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #isRestricted:Z
    .restart local v4       #len$:I
    .restart local v5       #restrictedToolsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->isLteNetworkAvailable()Z

    move-result v9

    if-nez v9, :cond_4

    .line 233
    const-string v9, "lte"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    :cond_4
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 239
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v9

    if-nez v9, :cond_5

    .line 240
    const-string v9, "tethering"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    :cond_5
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 245
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v6, v0, v2

    .line 247
    .restart local v6       #s:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 250
    .end local v6           #s:Ljava/lang/String;
    :cond_6
    return-object v7
.end method

.method private getPreferredNetworks()Ljava/lang/String;
    .locals 8

    .prologue
    .line 274
    const-string v2, ""

    .line 276
    .local v2, preferredNetworks:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 277
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const-string v5, "com.android.phone"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 280
    .local v3, res:Landroid/content/res/Resources;
    const-string v5, "preferred_network_mode_marshal"

    const-string v6, "string"

    const-string v7, "com.android.phone"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 282
    .local v4, resourceId:I
    if-eqz v4, :cond_0

    .line 283
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #resourceId:I
    :cond_0
    :goto_0
    return-object v2

    .line 285
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private getToolItemByName(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    .locals 5
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;>;"
    const/4 v3, 0x0

    .line 153
    if-nez p2, :cond_1

    move-object v1, v3

    .line 158
    :cond_0
    :goto_0
    return-object v1

    .line 154
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 155
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 156
    .local v1, item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    :cond_2
    move-object v1, v3

    .line 158
    goto :goto_0
.end method

.method private getToolsItems()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v14, itemsList:Ljava/util/List;,"Ljava/util/List<Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "toolsbar_settings"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 167
    .local v18, settingsFromDB:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060006

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->createHashmap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    .line 170
    .local v13, iconMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060007

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->createHashmap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    .line 173
    .local v21, textMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const v22, 0x7f060004

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getAvailableToolsFromResources(I)Ljava/util/List;

    move-result-object v5

    .line 175
    .local v5, allButtons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_2

    .line 177
    const-string v10, ";"

    .line 178
    .local v10, divider1:Ljava/lang/String;
    const-string v11, ","

    .line 180
    .local v11, divider2:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 181
    .local v17, settings:[Ljava/lang/String;
    move-object/from16 v7, v17

    .local v7, arr$:[Ljava/lang/String;
    array-length v15, v7

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v15, :cond_1

    aget-object v16, v7, v12

    .line 182
    .local v16, setting:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 184
    .local v19, settingsItem:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    const/16 v22, 0x0

    aget-object v22, v19, v22

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 185
    new-instance v24, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    const/16 v22, 0x0

    aget-object v25, v19, v22

    const/16 v22, 0x1

    aget-object v22, v19, v22

    const-string v23, "true"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v26

    const/16 v22, 0x0

    aget-object v22, v19, v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v23, v19, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 190
    .end local v16           #setting:Ljava/lang/String;
    .end local v19           #settingsItem:[Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 191
    .local v20, str:Ljava/lang/String;
    new-instance v24, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    const/16 v25, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #divider1:Ljava/lang/String;
    .end local v11           #divider2:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #len$:I
    .end local v17           #settings:[Ljava/lang/String;
    .end local v20           #str:Ljava/lang/String;
    :cond_2
    const v22, 0x7f060003

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getAvailableToolsFromResources(I)Ljava/util/List;

    move-result-object v8

    .line 198
    .local v8, configButtons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 199
    .local v9, configStr:Ljava/lang/String;
    new-instance v24, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    const/16 v25, 0x1

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .end local v9           #configStr:Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 204
    .local v6, allStr:Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 205
    new-instance v24, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    const/16 v25, 0x0

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 210
    .end local v6           #allStr:Ljava/lang/String;
    .end local v8           #configButtons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    return-object v14
.end method

.method private isLteNetworkAvailable()Z
    .locals 8

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getPreferredNetworks()Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, preferredNetworks:Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, networks:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 262
    .local v4, network:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 263
    .local v3, net:I
    const/4 v7, 0x7

    if-le v3, v7, :cond_0

    .line 264
    const/4 v7, 0x1

    .line 270
    .end local v3           #net:I
    .end local v4           #network:Ljava/lang/String;
    :goto_1
    return v7

    .line 266
    .restart local v4       #network:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 260
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v4           #network:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private scrollToCallersItem(Ljava/util/List;Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;)V
    .locals 7
    .parameter
    .parameter "listView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;",
            ">;",
            "Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, toolItemsList:Ljava/util/List;,"Ljava/util/List<Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;>;"
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 112
    .local v2, launchIntent:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 117
    const-string v6, "scrollToItem"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, scrollToItemName:Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getToolItemByName(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    move-result-object v1

    .line 119
    .local v1, item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;

    invoke-virtual {v6, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    .line 122
    .local v3, position:I
    invoke-virtual {p2, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setSelection(I)V

    .line 124
    const-string v6, "setItem"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, setItem:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->callerHasWritePermission()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    invoke-direct {p0, v1, v5}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->setItemSelection(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setItemSelection(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Ljava/lang/String;)V
    .locals 3
    .parameter "item"
    .parameter "setItem"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    const-string v2, "on"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->onItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string v2, "off"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->onItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V

    goto :goto_0

    .line 139
    :cond_2
    const-string v2, "toggle"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->onItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public countSelectedItems()I
    .locals 6

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 354
    .local v0, adapt:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 355
    .local v4, length:I
    const/4 v3, 0x0

    .line 356
    .local v3, item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    const/4 v1, 0x0

    .line 357
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 358
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    check-cast v3, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 359
    .restart local v3       #item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    add-int/lit8 v1, v1, 0x1

    .line 357
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 385
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 386
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 387
    .local v1, pos:I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 388
    .local v2, y:I
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 390
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v5, 0x7f040024

    invoke-virtual {p0, v5}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->mMaxNumberOfSelectedItems:I

    .line 68
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;

    .line 70
    .local v2, listView:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;
    new-instance v3, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings$1;-><init>(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;)V

    .line 91
    .local v3, listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getToolsItems()Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, toolItemsList:Ljava/util/List;,"Ljava/util/List<Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;>;"
    new-instance v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;

    const v5, 0x7f040006

    invoke-direct {v1, p0, v5, v4, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;>;"
    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->updateDataBase()V

    .line 99
    invoke-virtual {v2, v7}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setMovingItemEnabled(Z)V

    .line 100
    const v5, 0x7f070017

    invoke-virtual {v2, v5}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setMovingHandleViewId(I)V

    .line 101
    invoke-virtual {v2, p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setItemMovedListener(Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;)V

    .line 103
    invoke-direct {p0, v4, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->scrollToCallersItem(Ljava/util/List;Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;)V

    .line 104
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;

    .line 317
    .local v0, listview:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;
    if-eqz v0, :cond_0

    .line 318
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setItemMovedListener(Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;)V

    .line 320
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 321
    return-void
.end method

.method public onItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V
    .locals 3
    .parameter "element"
    .parameter "isChecked"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->countSelectedItems()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->mMaxNumberOfSelectedItems:I

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a000c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->setSelected(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->updateDataBase()V

    goto :goto_0
.end method

.method public onItemCollapsed(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 338
    const v0, 0x7f070016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    return-void
.end method

.method public onItemExpanded(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "top"

    .prologue
    .line 334
    const v0, 0x7f070016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    return-void
.end method

.method public onItemMoved(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;

    .line 325
    .local v0, adapter:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;
    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getCount()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 327
    .local v1, toolsItem:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->remove(Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->insert(Ljava/lang/Object;I)V

    .line 329
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->updateDataBase()V

    .line 331
    .end local v1           #toolsItem:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 307
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->finish()V

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public updateDataBase()V
    .locals 8

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 368
    .local v0, adapt:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 369
    .local v4, length:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 371
    .local v3, item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 372
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    check-cast v3, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 373
    .restart local v3       #item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 376
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toolsbar_settings"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    return-void
.end method
