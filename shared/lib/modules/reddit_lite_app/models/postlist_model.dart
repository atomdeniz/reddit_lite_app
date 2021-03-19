// To parse this JSON data, do
//
//     final postList = postListFromJson(jsonString);

import 'dart:convert';

PostList postListFromJson(String str) => PostList.fromJson(json.decode(str));

String postListToJson(PostList data) => json.encode(data.toJson());

class PostList {
  PostList({
    this.kind,
    this.data,
  });

  String kind;
  PostListData data;

  factory PostList.fromJson(Map<String, dynamic> json) => PostList(
        kind: json["kind"],
        data: PostListData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "data": data.toJson(),
      };
}

class PostListData {
  PostListData({
    this.modhash,
    this.dist,
    this.children,
    this.after,
    this.before,
  });

  String modhash;
  int dist;
  List<Child> children;
  String after;
  dynamic before;

  factory PostListData.fromJson(Map<String, dynamic> json) => PostListData(
        modhash: json["modhash"],
        dist: json["dist"],
        children:
            List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
        after: json["after"],
        before: json["before"],
      );

  Map<String, dynamic> toJson() => {
        "modhash": modhash,
        "dist": dist,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "after": after,
        "before": before,
      };
}

class Child {
  Child({
    this.kind,
    this.data,
  });

  Kind kind;
  ChildData data;

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        kind: kindValues.map[json["kind"]],
        data: ChildData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kindValues.reverse[kind],
        "data": data.toJson(),
      };
}

class ChildData {
  ChildData({
    this.approvedAtUtc,
    this.subreddit,
    this.selftext,
    this.authorFullname,
    this.saved,
    this.modReasonTitle,
    this.gilded,
    this.clicked,
    this.title,
    this.linkFlairRichtext,
    this.subredditNamePrefixed,
    this.hidden,
    this.pwls,
    this.linkFlairCssClass,
    this.downs,
    this.topAwardedType,
    this.hideScore,
    this.name,
    this.quarantine,
    this.linkFlairTextColor,
    this.upvoteRatio,
    this.authorFlairBackgroundColor,
    this.subredditType,
    this.ups,
    this.totalAwardsReceived,
    this.mediaEmbed,
    this.authorFlairTemplateId,
    this.isOriginalContent,
    this.userReports,
    this.secureMedia,
    this.isRedditMediaDomain,
    this.isMeta,
    this.category,
    this.secureMediaEmbed,
    this.linkFlairText,
    this.canModPost,
    this.score,
    this.approvedBy,
    this.authorPremium,
    this.thumbnail,
    this.edited,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.gildings,
    this.contentCategories,
    this.isSelf,
    this.modNote,
    this.created,
    this.linkFlairType,
    this.wls,
    this.removedByCategory,
    this.bannedBy,
    this.authorFlairType,
    this.domain,
    this.allowLiveComments,
    this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    this.urlOverriddenByDest,
    this.viewCount,
    this.archived,
    this.noFollow,
    this.isCrosspostable,
    this.pinned,
    this.over18,
    this.allAwardings,
    this.awarders,
    this.mediaOnly,
    this.canGild,
    this.spoiler,
    this.locked,
    this.authorFlairText,
    this.treatmentTags,
    this.visited,
    this.removedBy,
    this.numReports,
    this.distinguished,
    this.subredditId,
    this.modReasonBy,
    this.removalReason,
    this.linkFlairBackgroundColor,
    this.id,
    this.isRobotIndexable,
    this.reportReasons,
    this.author,
    this.discussionType,
    this.numComments,
    this.sendReplies,
    this.whitelistStatus,
    this.contestMode,
    this.modReports,
    this.authorPatreonFlair,
    this.authorFlairTextColor,
    this.permalink,
    this.parentWhitelistStatus,
    this.stickied,
    this.url,
    this.subredditSubscribers,
    this.createdUtc,
    this.numCrossposts,
    this.media,
    this.isVideo,
    this.authorCakeday,
  });

  dynamic approvedAtUtc;
  Subreddit subreddit;
  String selftext;
  String authorFullname;
  bool saved;
  dynamic modReasonTitle;
  int gilded;
  bool clicked;
  String title;
  List<dynamic> linkFlairRichtext;
  SubredditNamePrefixed subredditNamePrefixed;
  bool hidden;
  int pwls;
  dynamic linkFlairCssClass;
  int downs;
  dynamic topAwardedType;
  bool hideScore;
  String name;
  bool quarantine;
  LinkFlairTextColor linkFlairTextColor;
  double upvoteRatio;
  dynamic authorFlairBackgroundColor;
  SubredditType subredditType;
  int ups;
  int totalAwardsReceived;
  MediaEmbed mediaEmbed;
  dynamic authorFlairTemplateId;
  bool isOriginalContent;
  List<dynamic> userReports;
  Media secureMedia;
  bool isRedditMediaDomain;
  bool isMeta;
  dynamic category;
  MediaEmbed secureMediaEmbed;
  dynamic linkFlairText;
  bool canModPost;
  int score;
  dynamic approvedBy;
  bool authorPremium;
  String thumbnail;
  bool edited;
  dynamic authorFlairCssClass;
  List<dynamic> authorFlairRichtext;
  Gildings gildings;
  dynamic contentCategories;
  bool isSelf;
  dynamic modNote;
  double created;
  FlairType linkFlairType;
  int wls;
  dynamic removedByCategory;
  dynamic bannedBy;
  FlairType authorFlairType;
  String domain;
  bool allowLiveComments;
  dynamic selftextHtml;
  dynamic likes;
  dynamic suggestedSort;
  dynamic bannedAtUtc;
  String urlOverriddenByDest;
  dynamic viewCount;
  bool archived;
  bool noFollow;
  bool isCrosspostable;
  bool pinned;
  bool over18;
  List<AllAwarding> allAwardings;
  List<dynamic> awarders;
  bool mediaOnly;
  bool canGild;
  bool spoiler;
  bool locked;
  dynamic authorFlairText;
  List<dynamic> treatmentTags;
  bool visited;
  dynamic removedBy;
  dynamic numReports;
  dynamic distinguished;
  SubredditId subredditId;
  dynamic modReasonBy;
  dynamic removalReason;
  String linkFlairBackgroundColor;
  String id;
  bool isRobotIndexable;
  dynamic reportReasons;
  String author;
  dynamic discussionType;
  int numComments;
  bool sendReplies;
  WhitelistStatus whitelistStatus;
  bool contestMode;
  List<dynamic> modReports;
  bool authorPatreonFlair;
  dynamic authorFlairTextColor;
  String permalink;
  WhitelistStatus parentWhitelistStatus;
  bool stickied;
  String url;
  int subredditSubscribers;
  double createdUtc;
  int numCrossposts;
  Media media;
  bool isVideo;
  bool authorCakeday;

  factory ChildData.fromJson(Map<String, dynamic> json) => ChildData(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: subredditValues.map[json["subreddit"]],
        selftext: json["selftext"],
        authorFullname: json["author_fullname"],
        saved: json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"],
        clicked: json["clicked"],
        title: json["title"],
        linkFlairRichtext:
            List<dynamic>.from(json["link_flair_richtext"].map((x) => x)),
        subredditNamePrefixed:
            subredditNamePrefixedValues.map[json["subreddit_name_prefixed"]],
        hidden: json["hidden"],
        pwls: json["pwls"],
        linkFlairCssClass: json["link_flair_css_class"],
        downs: json["downs"],
        topAwardedType: json["top_awarded_type"],
        hideScore: json["hide_score"],
        name: json["name"],
        quarantine: json["quarantine"],
        linkFlairTextColor:
            linkFlairTextColorValues.map[json["link_flair_text_color"]],
        upvoteRatio: json["upvote_ratio"].toDouble(),
        authorFlairBackgroundColor: json["author_flair_background_color"],
        subredditType: subredditTypeValues.map[json["subreddit_type"]],
        ups: json["ups"],
        totalAwardsReceived: json["total_awards_received"],
        mediaEmbed: MediaEmbed.fromJson(json["media_embed"]),
        authorFlairTemplateId: json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"],
        userReports: List<dynamic>.from(json["user_reports"].map((x) => x)),
        secureMedia: json["secure_media"] == null
            ? null
            : Media.fromJson(json["secure_media"]),
        isRedditMediaDomain: json["is_reddit_media_domain"],
        isMeta: json["is_meta"],
        category: json["category"],
        secureMediaEmbed: MediaEmbed.fromJson(json["secure_media_embed"]),
        linkFlairText: json["link_flair_text"],
        canModPost: json["can_mod_post"],
        score: json["score"],
        approvedBy: json["approved_by"],
        authorPremium: json["author_premium"],
        thumbnail: json["thumbnail"],
        edited: json["edited"],
        authorFlairCssClass: json["author_flair_css_class"],
        authorFlairRichtext:
            List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
        gildings: Gildings.fromJson(json["gildings"]),
        contentCategories: json["content_categories"],
        isSelf: json["is_self"],
        modNote: json["mod_note"],
        created: json["created"],
        linkFlairType: flairTypeValues.map[json["link_flair_type"]],
        wls: json["wls"],
        removedByCategory: json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: flairTypeValues.map[json["author_flair_type"]],
        domain: json["domain"],
        allowLiveComments: json["allow_live_comments"],
        selftextHtml: json["selftext_html"],
        likes: json["likes"],
        suggestedSort: json["suggested_sort"],
        bannedAtUtc: json["banned_at_utc"],
        urlOverriddenByDest: json["url_overridden_by_dest"],
        viewCount: json["view_count"],
        archived: json["archived"],
        noFollow: json["no_follow"],
        isCrosspostable: json["is_crosspostable"],
        pinned: json["pinned"],
        over18: json["over_18"],
        allAwardings: List<AllAwarding>.from(
            json["all_awardings"].map((x) => AllAwarding.fromJson(x))),
        awarders: List<dynamic>.from(json["awarders"].map((x) => x)),
        mediaOnly: json["media_only"],
        canGild: json["can_gild"],
        spoiler: json["spoiler"],
        locked: json["locked"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        visited: json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: subredditIdValues.map[json["subreddit_id"]],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        linkFlairBackgroundColor: json["link_flair_background_color"],
        id: json["id"],
        isRobotIndexable: json["is_robot_indexable"],
        reportReasons: json["report_reasons"],
        author: json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"],
        sendReplies: json["send_replies"],
        whitelistStatus: whitelistStatusValues.map[json["whitelist_status"]],
        contestMode: json["contest_mode"],
        modReports: List<dynamic>.from(json["mod_reports"].map((x) => x)),
        authorPatreonFlair: json["author_patreon_flair"],
        authorFlairTextColor: json["author_flair_text_color"],
        permalink: json["permalink"],
        parentWhitelistStatus:
            whitelistStatusValues.map[json["parent_whitelist_status"]],
        stickied: json["stickied"],
        url: json["url"],
        subredditSubscribers: json["subreddit_subscribers"],
        createdUtc: json["created_utc"],
        numCrossposts: json["num_crossposts"],
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
        isVideo: json["is_video"],
        authorCakeday:
            json["author_cakeday"] == null ? null : json["author_cakeday"],
      );

  Map<String, dynamic> toJson() => {
        "approved_at_utc": approvedAtUtc,
        "subreddit": subredditValues.reverse[subreddit],
        "selftext": selftext,
        "author_fullname": authorFullname,
        "saved": saved,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded,
        "clicked": clicked,
        "title": title,
        "link_flair_richtext":
            List<dynamic>.from(linkFlairRichtext.map((x) => x)),
        "subreddit_name_prefixed":
            subredditNamePrefixedValues.reverse[subredditNamePrefixed],
        "hidden": hidden,
        "pwls": pwls,
        "link_flair_css_class": linkFlairCssClass,
        "downs": downs,
        "top_awarded_type": topAwardedType,
        "hide_score": hideScore,
        "name": name,
        "quarantine": quarantine,
        "link_flair_text_color":
            linkFlairTextColorValues.reverse[linkFlairTextColor],
        "upvote_ratio": upvoteRatio,
        "author_flair_background_color": authorFlairBackgroundColor,
        "subreddit_type": subredditTypeValues.reverse[subredditType],
        "ups": ups,
        "total_awards_received": totalAwardsReceived,
        "media_embed": mediaEmbed.toJson(),
        "author_flair_template_id": authorFlairTemplateId,
        "is_original_content": isOriginalContent,
        "user_reports": List<dynamic>.from(userReports.map((x) => x)),
        "secure_media": secureMedia == null ? null : secureMedia.toJson(),
        "is_reddit_media_domain": isRedditMediaDomain,
        "is_meta": isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed.toJson(),
        "link_flair_text": linkFlairText,
        "can_mod_post": canModPost,
        "score": score,
        "approved_by": approvedBy,
        "author_premium": authorPremium,
        "thumbnail": thumbnail,
        "edited": edited,
        "author_flair_css_class": authorFlairCssClass,
        "author_flair_richtext":
            List<dynamic>.from(authorFlairRichtext.map((x) => x)),
        "gildings": gildings.toJson(),
        "content_categories": contentCategories,
        "is_self": isSelf,
        "mod_note": modNote,
        "created": created,
        "link_flair_type": flairTypeValues.reverse[linkFlairType],
        "wls": wls,
        "removed_by_category": removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type": flairTypeValues.reverse[authorFlairType],
        "domain": domain,
        "allow_live_comments": allowLiveComments,
        "selftext_html": selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort,
        "banned_at_utc": bannedAtUtc,
        "url_overridden_by_dest": urlOverriddenByDest,
        "view_count": viewCount,
        "archived": archived,
        "no_follow": noFollow,
        "is_crosspostable": isCrosspostable,
        "pinned": pinned,
        "over_18": over18,
        "all_awardings":
            List<dynamic>.from(allAwardings.map((x) => x.toJson())),
        "awarders": List<dynamic>.from(awarders.map((x) => x)),
        "media_only": mediaOnly,
        "can_gild": canGild,
        "spoiler": spoiler,
        "locked": locked,
        "author_flair_text": authorFlairText,
        "treatment_tags": List<dynamic>.from(treatmentTags.map((x) => x)),
        "visited": visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditIdValues.reverse[subredditId],
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "link_flair_background_color": linkFlairBackgroundColor,
        "id": id,
        "is_robot_indexable": isRobotIndexable,
        "report_reasons": reportReasons,
        "author": author,
        "discussion_type": discussionType,
        "num_comments": numComments,
        "send_replies": sendReplies,
        "whitelist_status": whitelistStatusValues.reverse[whitelistStatus],
        "contest_mode": contestMode,
        "mod_reports": List<dynamic>.from(modReports.map((x) => x)),
        "author_patreon_flair": authorPatreonFlair,
        "author_flair_text_color": authorFlairTextColor,
        "permalink": permalink,
        "parent_whitelist_status":
            whitelistStatusValues.reverse[parentWhitelistStatus],
        "stickied": stickied,
        "url": url,
        "subreddit_subscribers": subredditSubscribers,
        "created_utc": createdUtc,
        "num_crossposts": numCrossposts,
        "media": media == null ? null : media.toJson(),
        "is_video": isVideo,
        "author_cakeday": authorCakeday == null ? null : authorCakeday,
      };
}

class AllAwarding {
  AllAwarding({
    this.giverCoinReward,
    this.subredditId,
    this.isNew,
    this.daysOfDripExtension,
    this.coinPrice,
    this.id,
    this.pennyDonate,
    this.awardSubType,
    this.coinReward,
    this.iconUrl,
    this.daysOfPremium,
    this.tiersByRequiredAwardings,
    this.resizedIcons,
    this.iconWidth,
    this.staticIconWidth,
    this.startDate,
    this.isEnabled,
    this.awardingsRequiredToGrantBenefits,
    this.description,
    this.endDate,
    this.subredditCoinReward,
    this.count,
    this.staticIconHeight,
    this.name,
    this.resizedStaticIcons,
    this.iconFormat,
    this.iconHeight,
    this.pennyPrice,
    this.awardType,
    this.staticIconUrl,
  });

  int giverCoinReward;
  dynamic subredditId;
  bool isNew;
  int daysOfDripExtension;
  int coinPrice;
  String id;
  int pennyDonate;
  String awardSubType;
  int coinReward;
  String iconUrl;
  int daysOfPremium;
  dynamic tiersByRequiredAwardings;
  List<ResizedIcon> resizedIcons;
  int iconWidth;
  int staticIconWidth;
  dynamic startDate;
  bool isEnabled;
  dynamic awardingsRequiredToGrantBenefits;
  String description;
  dynamic endDate;
  int subredditCoinReward;
  int count;
  int staticIconHeight;
  String name;
  List<ResizedIcon> resizedStaticIcons;
  String iconFormat;
  int iconHeight;
  int pennyPrice;
  String awardType;
  String staticIconUrl;

  factory AllAwarding.fromJson(Map<String, dynamic> json) => AllAwarding(
        giverCoinReward: json["giver_coin_reward"],
        subredditId: json["subreddit_id"],
        isNew: json["is_new"],
        daysOfDripExtension: json["days_of_drip_extension"],
        coinPrice: json["coin_price"],
        id: json["id"],
        pennyDonate: json["penny_donate"],
        awardSubType: json["award_sub_type"],
        coinReward: json["coin_reward"],
        iconUrl: json["icon_url"],
        daysOfPremium: json["days_of_premium"],
        tiersByRequiredAwardings: json["tiers_by_required_awardings"],
        resizedIcons: List<ResizedIcon>.from(
            json["resized_icons"].map((x) => ResizedIcon.fromJson(x))),
        iconWidth: json["icon_width"],
        staticIconWidth: json["static_icon_width"],
        startDate: json["start_date"],
        isEnabled: json["is_enabled"],
        awardingsRequiredToGrantBenefits:
            json["awardings_required_to_grant_benefits"],
        description: json["description"],
        endDate: json["end_date"],
        subredditCoinReward: json["subreddit_coin_reward"],
        count: json["count"],
        staticIconHeight: json["static_icon_height"],
        name: json["name"],
        resizedStaticIcons: List<ResizedIcon>.from(
            json["resized_static_icons"].map((x) => ResizedIcon.fromJson(x))),
        iconFormat: json["icon_format"],
        iconHeight: json["icon_height"],
        pennyPrice: json["penny_price"],
        awardType: json["award_type"],
        staticIconUrl: json["static_icon_url"],
      );

  Map<String, dynamic> toJson() => {
        "giver_coin_reward": giverCoinReward,
        "subreddit_id": subredditId,
        "is_new": isNew,
        "days_of_drip_extension": daysOfDripExtension,
        "coin_price": coinPrice,
        "id": id,
        "penny_donate": pennyDonate,
        "award_sub_type": awardSubType,
        "coin_reward": coinReward,
        "icon_url": iconUrl,
        "days_of_premium": daysOfPremium,
        "tiers_by_required_awardings": tiersByRequiredAwardings,
        "resized_icons":
            List<dynamic>.from(resizedIcons.map((x) => x.toJson())),
        "icon_width": iconWidth,
        "static_icon_width": staticIconWidth,
        "start_date": startDate,
        "is_enabled": isEnabled,
        "awardings_required_to_grant_benefits":
            awardingsRequiredToGrantBenefits,
        "description": description,
        "end_date": endDate,
        "subreddit_coin_reward": subredditCoinReward,
        "count": count,
        "static_icon_height": staticIconHeight,
        "name": name,
        "resized_static_icons":
            List<dynamic>.from(resizedStaticIcons.map((x) => x.toJson())),
        "icon_format": iconFormat,
        "icon_height": iconHeight,
        "penny_price": pennyPrice,
        "award_type": awardType,
        "static_icon_url": staticIconUrl,
      };
}

class ResizedIcon {
  ResizedIcon({
    this.url,
    this.width,
    this.height,
  });

  String url;
  int width;
  int height;

  factory ResizedIcon.fromJson(Map<String, dynamic> json) => ResizedIcon(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
      };
}

enum FlairType { TEXT }

final flairTypeValues = EnumValues({"text": FlairType.TEXT});

class Gildings {
  Gildings();

  factory Gildings.fromJson(Map<String, dynamic> json) => Gildings();

  Map<String, dynamic> toJson() => {};
}

enum LinkFlairTextColor { DARK }

final linkFlairTextColorValues = EnumValues({"dark": LinkFlairTextColor.DARK});

class Media {
  Media({
    this.oembed,
    this.type,
  });

  Oembed oembed;
  String type;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        oembed: Oembed.fromJson(json["oembed"]),
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "oembed": oembed.toJson(),
        "type": type,
      };
}

class Oembed {
  Oembed({
    this.providerUrl,
    this.title,
    this.html,
    this.thumbnailWidth,
    this.height,
    this.width,
    this.version,
    this.authorName,
    this.providerName,
    this.thumbnailUrl,
    this.type,
    this.thumbnailHeight,
    this.authorUrl,
  });

  String providerUrl;
  String title;
  String html;
  int thumbnailWidth;
  int height;
  int width;
  String version;
  String authorName;
  String providerName;
  String thumbnailUrl;
  String type;
  int thumbnailHeight;
  String authorUrl;

  factory Oembed.fromJson(Map<String, dynamic> json) => Oembed(
        providerUrl: json["provider_url"],
        title: json["title"],
        html: json["html"],
        thumbnailWidth: json["thumbnail_width"],
        height: json["height"],
        width: json["width"],
        version: json["version"],
        authorName: json["author_name"],
        providerName: json["provider_name"],
        thumbnailUrl: json["thumbnail_url"],
        type: json["type"],
        thumbnailHeight: json["thumbnail_height"],
        authorUrl: json["author_url"],
      );

  Map<String, dynamic> toJson() => {
        "provider_url": providerUrl,
        "title": title,
        "html": html,
        "thumbnail_width": thumbnailWidth,
        "height": height,
        "width": width,
        "version": version,
        "author_name": authorName,
        "provider_name": providerName,
        "thumbnail_url": thumbnailUrl,
        "type": type,
        "thumbnail_height": thumbnailHeight,
        "author_url": authorUrl,
      };
}

class MediaEmbed {
  MediaEmbed({
    this.content,
    this.width,
    this.scrolling,
    this.height,
    this.mediaDomainUrl,
  });

  String content;
  int width;
  bool scrolling;
  int height;
  String mediaDomainUrl;

  factory MediaEmbed.fromJson(Map<String, dynamic> json) => MediaEmbed(
        content: json["content"] == null ? null : json["content"],
        width: json["width"] == null ? null : json["width"],
        scrolling: json["scrolling"] == null ? null : json["scrolling"],
        height: json["height"] == null ? null : json["height"],
        mediaDomainUrl:
            json["media_domain_url"] == null ? null : json["media_domain_url"],
      );

  Map<String, dynamic> toJson() => {
        "content": content == null ? null : content,
        "width": width == null ? null : width,
        "scrolling": scrolling == null ? null : scrolling,
        "height": height == null ? null : height,
        "media_domain_url": mediaDomainUrl == null ? null : mediaDomainUrl,
      };
}

enum WhitelistStatus { ALL_ADS }

final whitelistStatusValues = EnumValues({"all_ads": WhitelistStatus.ALL_ADS});

enum Subreddit { PROGRAMMING }

final subredditValues = EnumValues({"programming": Subreddit.PROGRAMMING});

enum SubredditId { T5_2_FWO }

final subredditIdValues = EnumValues({"t5_2fwo": SubredditId.T5_2_FWO});

enum SubredditNamePrefixed { R_PROGRAMMING }

final subredditNamePrefixedValues =
    EnumValues({"r/programming": SubredditNamePrefixed.R_PROGRAMMING});

enum SubredditType { PUBLIC }

final subredditTypeValues = EnumValues({"public": SubredditType.PUBLIC});

enum Kind { T3 }

final kindValues = EnumValues({"t3": Kind.T3});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
