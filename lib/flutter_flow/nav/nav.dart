import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomePageWidget() : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const HomePageWidget() : const LoginWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'EsqueciSenha',
          path: '/esqueciSenha',
          builder: (context, params) => const EsqueciSenhaWidget(),
        ),
        FFRoute(
          name: 'Categorias',
          path: '/categorias',
          builder: (context, params) => CategoriasWidget(
            header: params.getParam('header', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'formContatos',
          path: '/formContatos',
          builder: (context, params) => const FormContatosWidget(),
        ),
        FFRoute(
          name: 'Pasta_2',
          path: '/pasta2',
          builder: (context, params) => Pasta2Widget(
            texto: params.getParam('texto', ParamType.String),
            id: params.getParam('id', ParamType.String),
            imagem: params.getParam('imagem', ParamType.String),
            descricao: params.getParam('descricao', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Opinioes_Pastas',
          path: '/opinioesPastas',
          builder: (context, params) => OpinioesPastasWidget(
            id: params.getParam('id', ParamType.String),
            testo: params.getParam('testo', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'texto',
          path: '/texto',
          builder: (context, params) => TextoWidget(
            titulo: params.getParam('titulo', ParamType.String),
            texto: params.getParam('texto', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Menu',
          path: '/menu',
          builder: (context, params) => const MenuWidget(),
        ),
        FFRoute(
          name: 'PerfilUsuario',
          path: '/perfilUsuario',
          builder: (context, params) => const PerfilUsuarioWidget(),
        ),
        FFRoute(
          name: 'Idiomas',
          path: '/idiomas',
          builder: (context, params) => const IdiomasWidget(),
        ),
        FFRoute(
          name: 'RedeSocial',
          path: '/redeSocial',
          builder: (context, params) => const RedeSocialWidget(),
        ),
        FFRoute(
          name: 'Evento',
          path: '/evento',
          builder: (context, params) => const EventoWidget(),
        ),
        FFRoute(
          name: 'Notificacoes',
          path: '/notificacoes',
          builder: (context, params) => const NotificacoesWidget(),
        ),
        FFRoute(
          name: 'Pesquisas',
          path: '/pesquisas',
          builder: (context, params) => const PesquisasWidget(),
        ),
        FFRoute(
          name: 'Amigos',
          path: '/amigos',
          builder: (context, params) => const AmigosWidget(),
        ),
        FFRoute(
          name: 'Faq',
          path: '/faq',
          builder: (context, params) => const FaqWidget(),
        ),
        FFRoute(
          name: 'ProblemPage',
          path: '/problemPage',
          builder: (context, params) => const ProblemPageWidget(),
        ),
        FFRoute(
          name: 'Contatos',
          path: '/contatos',
          builder: (context, params) => const ContatosWidget(),
        ),
        FFRoute(
          name: 'GoogleMap',
          path: '/googleMap',
          builder: (context, params) => const GoogleMapWidget(),
        ),
        FFRoute(
          name: 'Social',
          path: '/social',
          builder: (context, params) => const SocialWidget(),
        ),
        FFRoute(
          name: 'Banco',
          path: '/banco',
          builder: (context, params) => const BancoWidget(),
        ),
        FFRoute(
          name: 'Aniversarios',
          path: '/aniversarios',
          builder: (context, params) => const AniversariosWidget(),
        ),
        FFRoute(
          name: 'VisitPerfil',
          path: '/visitPerfil',
          builder: (context, params) => VisitPerfilWidget(
            visitId: params.getParam('visitId', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'imagem',
          path: '/imagem',
          builder: (context, params) => ImagemWidget(
            imagem: params.getParam('imagem', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Likes',
          path: '/likes',
          builder: (context, params) => LikesWidget(
            qtdLike: params.getParam('qtdLike', ParamType.int),
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Menu2',
          path: '/menu2',
          builder: (context, params) => const Menu2Widget(),
        ),
        FFRoute(
          name: 'Form_Pesquisar',
          path: '/formPesquisar',
          builder: (context, params) => const FormPesquisarWidget(),
        ),
        FFRoute(
          name: 'quizResp',
          path: '/quizResp',
          builder: (context, params) => QuizRespWidget(
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Forum',
          path: '/forum',
          builder: (context, params) => ForumWidget(
            titulo: params.getParam('titulo', ParamType.String),
            id: params.getParam('id', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Cursos',
          path: '/cursos',
          builder: (context, params) => CursosWidget(
            url: params.getParam('url', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'video',
          path: '/video',
          builder: (context, params) => VideoWidget(
            video: params.getParam('video', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Ambiente_lugares',
          path: '/ambienteLugares',
          builder: (context, params) => const AmbienteLugaresWidget(),
        ),
        FFRoute(
          name: 'Form_SubCategoria',
          path: '/formSubCategoria',
          builder: (context, params) => FormSubCategoriaWidget(
            texto: params.getParam('texto', ParamType.String),
            id: params.getParam('id', ParamType.String),
            imagem: params.getParam('imagem', ParamType.String),
            descricao: params.getParam('descricao', ParamType.String),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: const Color(0xFF281C4A),
                  child: Image.asset(
                    'assets/images/WhatsApp-Image-2023-03-14-at-13.05.33_(1).jpg',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
