import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Usuario Group Code

class UsuarioGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static AuthCall authCall = AuthCall();
  static UpdateProfilePhotoCall updateProfilePhotoCall =
      UpdateProfilePhotoCall();
  static UpdateBackgroundPhotoCall updateBackgroundPhotoCall =
      UpdateBackgroundPhotoCall();
  static RecoveryByUsernameCall recoveryByUsernameCall =
      RecoveryByUsernameCall();
  static RegisterUserCall registerUserCall = RegisterUserCall();
  static UpdateProfileCall updateProfileCall = UpdateProfileCall();
  static UpdatePasswordaCall updatePasswordaCall = UpdatePasswordaCall();
  static ExclusoDeDadosCall exclusoDeDadosCall = ExclusoDeDadosCall();
  static ValidateUserEmaiCall validateUserEmaiCall = ValidateUserEmaiCall();
  static UpdateLangCall updateLangCall = UpdateLangCall();
}

class AuthCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Auth',
      apiUrl:
          '${UsuarioGroup.baseUrl}/rest/user/authUser?username=$username&password=$password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProfilePhotoCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateProfilePhoto',
      apiUrl: '${UsuarioGroup.baseUrl}/rest/profile/updateProfilePhoto',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateBackgroundPhotoCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? file,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateBackgroundPhoto',
      apiUrl: '${UsuarioGroup.baseUrl}/rest/profile/updateBackgroundPhoto',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RecoveryByUsernameCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'recoveryByUsername',
      apiUrl:
          '${UsuarioGroup.baseUrl}/rest/user/recoveryByUsername?username=$username',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterUserCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? firstname = '',
    String? surname = '',
    String? email = '',
    String? password = '',
    String? hasAdditionalFields = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUser',
      apiUrl:
          '${UsuarioGroup.baseUrl}/rest/user/register?username=$username&firstname=$firstname&surname=$surname&email=$email&password=$password&hasAdditionalFields=$hasAdditionalFields&additionalFields',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProfileCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? birthdate = '',
    String? telephone = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateProfile',
      apiUrl: '${UsuarioGroup.baseUrl}/profile/updateProfile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {
        'email': email,
        'birthdate': birthdate,
        'telephone': telephone,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePasswordaCall {
  Future<ApiCallResponse> call({
    String? password = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePassworda',
      apiUrl:
          '${UsuarioGroup.baseUrl}/rest/profile/updatePassword?password=$password',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ExclusoDeDadosCall {
  Future<ApiCallResponse> call({
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ExclusoDeDados',
      apiUrl:
          '${UsuarioGroup.baseUrl}/rest/user/contact/send?department=7cd04fef-23ac-4093-9416-7a3c8bf4ae4c&mensagem=Em concordância com a RGPD, gostaria de solicitar a exclusão de todos os dados atrelados a minha conta do banco de dados dessa plataforma',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateUserEmaiCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'validateUserEmai',
      apiUrl:
          '${UsuarioGroup.baseUrl}/user/register/validateUserEmail?email=$email',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateLangCall {
  Future<ApiCallResponse> call({
    String? lang = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateLang',
      apiUrl: '${UsuarioGroup.baseUrl}/rest/user/updateLang?lang=$lang',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Usuario Group Code

/// Start Categorias Group Code

class CategoriasGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static ListContentCall listContentCall = ListContentCall();
  static ListCatByParentCall listCatByParentCall = ListCatByParentCall();
  static GetContentResourcesByContentIdCall getContentResourcesByContentIdCall =
      GetContentResourcesByContentIdCall();
  static GetGalleryByIdCall getGalleryByIdCall = GetGalleryByIdCall();
  static GetGalleryPhotosByIdCall getGalleryPhotosByIdCall =
      GetGalleryPhotosByIdCall();
  static GetDocumentByIdCall getDocumentByIdCall = GetDocumentByIdCall();
  static GetStorageFileByIdCall getStorageFileByIdCall =
      GetStorageFileByIdCall();
  static ListContentRatingsCall listContentRatingsCall =
      ListContentRatingsCall();
  static SaveRatingCall saveRatingCall = SaveRatingCall();
  static GetVideoOnlineByIdCall getVideoOnlineByIdCall =
      GetVideoOnlineByIdCall();
  static GetVideoByIdCall getVideoByIdCall = GetVideoByIdCall();
  static GetForumByIdCall getForumByIdCall = GetForumByIdCall();
  static ListAnswersCall listAnswersCall = ListAnswersCall();
  static SaveForumAnswerCall saveForumAnswerCall = SaveForumAnswerCall();
}

class ListContentCall {
  Future<ApiCallResponse> call({
    String? id = '',
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listContent',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/listContent/$id/first/$pg/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListCatByParentCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listCatByParent',
      apiUrl: '${CategoriasGroup.baseUrl}/rest/content/listCatByParent/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContentResourcesByContentIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getContentResourcesByContentId',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/getContentResourcesByContentId/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetGalleryByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getGalleryById',
      apiUrl: '${CategoriasGroup.baseUrl}/rest/content/getGalleryById/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetGalleryPhotosByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getGalleryPhotosById',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/getGalleryPhotosById/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDocumentByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDocumentById',
      apiUrl: '${CategoriasGroup.baseUrl}/rest/content/getDocumentById/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStorageFileByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getStorageFileById',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/getStorageFileById/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListContentRatingsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listContentRatings',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/listContentRatings/$id/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveRatingCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? text = '',
    String? reting = '',
    String? comments = '',
    bool? pending,
    String? contentId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'saveRating',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/saveRating?content_id=$contentId&text=$text&rating=$reting&comments=$comments&pending:=$pending',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVideoOnlineByIdCall {
  Future<ApiCallResponse> call({
    String? moduleResourceSourceId = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getVideoOnlineById',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/getVideoOnlineById/$moduleResourceSourceId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVideoByIdCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? moduleResourceSourceId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getVideoById',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/getVideoById/$moduleResourceSourceId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetForumByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getForumById',
      apiUrl: '${CategoriasGroup.baseUrl}/rest/content/getForumById/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAnswersCall {
  Future<ApiCallResponse> call({
    String? id = '',
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listAnswers',
      apiUrl: '${CategoriasGroup.baseUrl}/rest/content/listAnswers/$id/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveForumAnswerCall {
  Future<ApiCallResponse> call({
    String? answer = '',
    String? answers = '',
    String? parent = '',
    String? forumId = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'saveForumAnswer',
      apiUrl:
          '${CategoriasGroup.baseUrl}/rest/content/saveForumAnswer?answer=$answer&answers=$answers&parent=$parent&forum_id=$forumId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Categorias Group Code

/// Start contact Group Code

class ContactGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static ContactCategoriesPaiCall contactCategoriesPaiCall =
      ContactCategoriesPaiCall();
  static ContactCategoriesFilhoCall contactCategoriesFilhoCall =
      ContactCategoriesFilhoCall();
  static ContactCall contactCall = ContactCall();
}

class ContactCategoriesPaiCall {
  Future<ApiCallResponse> call({
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'contactCategoriesPai',
      apiUrl: '${ContactGroup.baseUrl}/rest/user/contact/category/list/null',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ContactCategoriesFilhoCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'contactCategoriesFilho',
      apiUrl: '${ContactGroup.baseUrl}/rest/user/contact/category/list/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ContactCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? department = '',
    String? mensagem = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Contact',
      apiUrl:
          '${ContactGroup.baseUrl}/rest/user/contact/send?department=$department&mensagem=$mensagem',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End contact Group Code

/// Start Diversos Group Code

class DiversosGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static FaqCall faqCall = FaqCall();
}

class FaqCall {
  Future<ApiCallResponse> call({
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'FAQ',
      apiUrl: '${DiversosGroup.baseUrl}/rest/faq/listFaq',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Diversos Group Code

/// Start RedeSocial Group Code

class RedeSocialGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static GetProfileByIdCall getProfileByIdCall = GetProfileByIdCall();
  static ListFeedCall listFeedCall = ListFeedCall();
  static GetProfileCall getProfileCall = GetProfileCall();
  static ListFeedCommentsCall listFeedCommentsCall = ListFeedCommentsCall();
  static ListTimelinesCall listTimelinesCall = ListTimelinesCall();
  static UpdateStatusMessageCall updateStatusMessageCall =
      UpdateStatusMessageCall();
  static SaveTimelinePostCall saveTimelinePostCall = SaveTimelinePostCall();
  static SaveFeedCommentCall saveFeedCommentCall = SaveFeedCommentCall();
  static UploadFileCall uploadFileCall = UploadFileCall();
  static DeleteTimelinePostCommentCall deleteTimelinePostCommentCall =
      DeleteTimelinePostCommentCall();
  static CountReactionCall countReactionCall = CountReactionCall();
  static ListReactionsCall listReactionsCall = ListReactionsCall();
  static DeleteTimelinePostCall deleteTimelinePostCall =
      DeleteTimelinePostCall();
  static SaveReactionCall saveReactionCall = SaveReactionCall();
  static IsFriendCall isFriendCall = IsFriendCall();
  static RemoveFriendCall removeFriendCall = RemoveFriendCall();
  static AcceptInvitationCall acceptInvitationCall = AcceptInvitationCall();
  static InvitationStatusCall invitationStatusCall = InvitationStatusCall();
  static LoadInvitationCall loadInvitationCall = LoadInvitationCall();
  static SendInvitationCall sendInvitationCall = SendInvitationCall();
  static RemoveInvitationCall removeInvitationCall = RemoveInvitationCall();
}

class GetProfileByIdCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? visitId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProfileById',
      apiUrl:
          '${RedeSocialGroup.baseUrl}/rest/social/getProfileById/$visitId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFeedCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? idUser = '',
    String? parametro = '',
    int? pg,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFeed',
      apiUrl:
          '${RedeSocialGroup.baseUrl}/rest/social/listFeed/$idUser/$parametro/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileCall {
  Future<ApiCallResponse> call({
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProfile',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/profile/getProfile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFeedCommentsCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id = '',
    int? pg,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFeedComments',
      apiUrl:
          '${RedeSocialGroup.baseUrl}/rest/social/listFeedComments/$id/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListTimelinesCall {
  Future<ApiCallResponse> call({
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listTimelines',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/group/listTimelines',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateStatusMessageCall {
  Future<ApiCallResponse> call({
    String? minha = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateStatusMessage',
      apiUrl:
          '${RedeSocialGroup.baseUrl}/rest/social/updateStatusMessage?statusmessage=$minha',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveTimelinePostCall {
  Future<ApiCallResponse> call({
    String? posttype = '',
    String? timeline = '',
    String? post = '',
    bool? hasimages,
    bool? hasvideo,
    String? multipleimage = '',
    String? videoid = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'saveTimelinePost',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/saveTimelinePost',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {
        'posttype': posttype,
        'timeline': timeline,
        'post': post,
        'hasimages': hasimages,
        'hasvideo': hasvideo,
        'multipleimage': multipleimage,
        'videoid': videoid,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveFeedCommentCall {
  Future<ApiCallResponse> call({
    String? trackLoad = '',
    String? feedId = '',
    String? post = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'saveFeedComment',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/saveFeedComment',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {
        'track_load_': trackLoad,
        'feed.id': feedId,
        'post': post,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadFileCall {
  Future<ApiCallResponse> call({
    String? filetype = '',
    FFUploadedFile? file,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadFile',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/uploadFile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {
        'filetype': filetype,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTimelinePostCommentCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteTimelinePostComment',
      apiUrl:
          '${RedeSocialGroup.baseUrl}/rest/social/deleteTimelinePostComment/$id',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CountReactionCall {
  Future<ApiCallResponse> call({
    String? feedId = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'countReaction',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/countReaction/$feedId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListReactionsCall {
  Future<ApiCallResponse> call({
    String? feedId = '',
    String? basic = '',
    int? pg,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listReactions',
      apiUrl:
          '${RedeSocialGroup.baseUrl}/rest/social/listReactions/$feedId/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTimelinePostCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteTimelinePost',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/deleteTimelinePost/$id',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveReactionCall {
  Future<ApiCallResponse> call({
    String? controlId = '',
    String? value = '',
    int? rating,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'saveReaction',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/saveReaction',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {
        'control_id': controlId,
        'value': value,
        'rating': rating,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class IsFriendCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'isFriend ',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/isFriend/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveFriendCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeFriend',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/removeFriend/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AcceptInvitationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'acceptInvitation',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/invitationStatus/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InvitationStatusCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'invitationStatus',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/invitationStatus/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoadInvitationCall {
  Future<ApiCallResponse> call({
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loadInvitation',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/loadInvitation',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SendInvitationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'sendInvitation',
      apiUrl: '${RedeSocialGroup.baseUrl}/rest/social/sendInvitation/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveInvitationCall {
  Future<ApiCallResponse> call({
    String? idSolicitacao = '',
    String? idUsuario = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removeInvitation ',
      apiUrl:
          '${RedeSocialGroup.baseUrl}/rest/social/removeInvitation/$idSolicitacao/$idUsuario',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End RedeSocial Group Code

/// Start Notificacoes Group Code

class NotificacoesGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static ListNotificationCall listNotificationCall = ListNotificationCall();
  static NotificationreadCall notificationreadCall = NotificationreadCall();
}

class ListNotificationCall {
  Future<ApiCallResponse> call({
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listNotification',
      apiUrl:
          '${NotificacoesGroup.baseUrl}/rest/social/notification/listNotification/all/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NotificationreadCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? notificationId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'notificationread',
      apiUrl:
          '${NotificacoesGroup.baseUrl}/rest/social/notification/read/$notificationId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Notificacoes Group Code

/// Start Amigos Group Code

class AmigosGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static ListProfileFriendsCall listProfileFriendsCall =
      ListProfileFriendsCall();
}

class ListProfileFriendsCall {
  Future<ApiCallResponse> call({
    int? pg,
    String? basic = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listProfileFriends',
      apiUrl:
          '${AmigosGroup.baseUrl}/rest/social/listProfileFriends/$id/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Amigos Group Code

/// Start Aniversariantes Group Code

class AniversariantesGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static ListWeeklyBirthdayCall listWeeklyBirthdayCall =
      ListWeeklyBirthdayCall();
}

class ListWeeklyBirthdayCall {
  Future<ApiCallResponse> call({
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listWeeklyBirthday',
      apiUrl:
          '${AniversariantesGroup.baseUrl}/rest/social/listWeeklyBirthday/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Aniversariantes Group Code

/// Start Evemtos Group Code

class EvemtosGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static LoadEventsCall loadEventsCall = LoadEventsCall();
}

class LoadEventsCall {
  Future<ApiCallResponse> call({
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loadEvents',
      apiUrl: '${EvemtosGroup.baseUrl}/rest/social/loadEvents/$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Evemtos Group Code

/// Start Quiz Group Code

class QuizGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static GetQuizByIdCall getQuizByIdCall = GetQuizByIdCall();
  static ListQuizAttemptsCall listQuizAttemptsCall = ListQuizAttemptsCall();
  static CanStartQuizAttemptCall canStartQuizAttemptCall =
      CanStartQuizAttemptCall();
  static StartQuizAttemptCall startQuizAttemptCall = StartQuizAttemptCall();
  static LoadAttemptCall loadAttemptCall = LoadAttemptCall();
  static LoadAttemptDetailsCall loadAttemptDetailsCall =
      LoadAttemptDetailsCall();
  static SubmitQuizAttemptDetailCall submitQuizAttemptDetailCall =
      SubmitQuizAttemptDetailCall();
  static CloseQuizAttemptCall closeQuizAttemptCall = CloseQuizAttemptCall();
  static LoadAttemptByIdCall loadAttemptByIdCall = LoadAttemptByIdCall();
  static LoadQuizAttemptReviewCall loadQuizAttemptReviewCall =
      LoadQuizAttemptReviewCall();
}

class GetQuizByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getQuizById',
      apiUrl: '${QuizGroup.baseUrl}/rest/content/getQuizById/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListQuizAttemptsCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listQuizAttempts',
      apiUrl: '${QuizGroup.baseUrl}/rest/content/listQuizAttempts/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CanStartQuizAttemptCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'canStartQuizAttempt',
      apiUrl: '${QuizGroup.baseUrl}/rest/content/canStartQuizAttempt/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StartQuizAttemptCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'startQuizAttempt',
      apiUrl: '${QuizGroup.baseUrl}/rest/content/startQuizAttempt/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoadAttemptCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id1 = '',
    String? id2 = '',
    String? p = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loadAttempt',
      apiUrl:
          '${QuizGroup.baseUrl}/rest/content/loadAttempt/$id1/$id2?p=$p',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoadAttemptDetailsCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loadAttemptDetails',
      apiUrl: '${QuizGroup.baseUrl}/rest/content/loadAttemptDetails/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitQuizAttemptDetailCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? tentativa = '',
    String? detalhes = '',
    String? resposta = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'submitQuizAttemptDetail',
      apiUrl:
          '${QuizGroup.baseUrl}/rest/content/submitQuizAttemptDetail/$tentativa/$detalhes/$resposta',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CloseQuizAttemptCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'closeQuizAttempt',
      apiUrl: '${QuizGroup.baseUrl}/rest/content/closeQuizAttempt/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoadAttemptByIdCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loadAttemptById',
      apiUrl: '${QuizGroup.baseUrl}/rest/content/loadAttemptById/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoadQuizAttemptReviewCall {
  Future<ApiCallResponse> call({
    String? basic = '',
    String? id1 = '',
    String? id2 = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loadQuizAttemptReview',
      apiUrl:
          '${QuizGroup.baseUrl}/rest/content/loadQuizAttemptReview/$id1/$id2',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Quiz Group Code

/// Start Search Group Code

class SearchGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static SerachByFolderCall serachByFolderCall = SerachByFolderCall();
  static SearchByUserCall searchByUserCall = SearchByUserCall();
  static SearchByContentCall searchByContentCall = SearchByContentCall();
}

class SerachByFolderCall {
  Future<ApiCallResponse> call({
    String? query = '',
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SerachByFolder',
      apiUrl:
          '${SearchGroup.baseUrl}/rest/content/findContent?query=$query&p=$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchByUserCall {
  Future<ApiCallResponse> call({
    String? query = '',
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchByUser',
      apiUrl:
          '${SearchGroup.baseUrl}/rest/social/findPeople?query=$query&p=$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchByContentCall {
  Future<ApiCallResponse> call({
    String? query = '',
    int? pg,
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchByContent',
      apiUrl:
          '${SearchGroup.baseUrl}/rest/content/findResource?query=$query&p=$pg',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Search Group Code

/// Start Propagandas Group Code

class PropagandasGroup {
  static String baseUrl = 'https://carusi.xphub.com.br';
  static Map<String, String> headers = {};
  static AdsCall adsCall = AdsCall();
}

class AdsCall {
  Future<ApiCallResponse> call({
    String? basic = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ads',
      apiUrl: '${PropagandasGroup.baseUrl}/rest/guided/ads/list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic $basic',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Propagandas Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
