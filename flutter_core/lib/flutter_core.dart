library flutter_core;

abstract class CoreRouter {
  void handledInitRouterFlutter1(String initialRoute);

  void handledInitRouterFlutter2(String initialRoute);

  void handledInitRouterFlutter3(String initialRoute);
}

class CoreRouterImpl implements CoreRouter {
  static String initialRouteApp;

  CoreRouterImpl();

  @override
  void handledInitRouterFlutter1(String initialRoute) {
    initialRouteApp = initialRoute;
  }

  @override
  void handledInitRouterFlutter2(String initialRoute) {
    initialRouteApp = initialRoute;
  }

  @override
  void handledInitRouterFlutter3(String initialRoute) {
    initialRouteApp = initialRoute;
  }
}
