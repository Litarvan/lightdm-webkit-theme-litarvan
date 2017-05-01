// @ignoreProblemForFile annotate_overrides
// @ignoreProblemForFile cancel_subscriptions
// @ignoreProblemForFile constant_identifier_names
// @ignoreProblemForFile non_constant_identifier_names
// @ignoreProblemForFile implementation_imports
// @ignoreProblemForFile library_prefixes
// @ignoreProblemForFile type_annotate_public_apis
// @ignoreProblemForFile STRONG_MODE_DOWN_CAST_COMPOSITE
// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
// @ignoreProblemForFile UNUSED_LOCAL_VARIABLE
import 'app_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/desktops/desktops_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/login/login_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/power_button/power_button_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/splash/splash_component.dart';
import 'package:lightdm_webkit_theme_litarvan/components/users/users_component.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/components/desktops/desktops_component.template.dart' as i1;
import 'package:lightdm_webkit_theme_litarvan/components/login/login_component.template.dart' as i2;
import 'package:lightdm_webkit_theme_litarvan/components/power_button/power_button_component.template.dart' as i3;
import 'package:lightdm_webkit_theme_litarvan/components/splash/splash_component.template.dart' as i4;
import 'package:lightdm_webkit_theme_litarvan/components/users/users_component.template.dart' as i5;
import 'package:lightdm_webkit_theme_litarvan/util.template.dart' as i6;
export 'app_component.dart';
import 'app_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import '../splash/splash_component.dart' as import2;
import '../login/login_component.dart' as import3;
import '../users/users_component.dart' as import4;
import '../desktops/desktops_component.dart' as import5;
import '../power_button/power_button_component.dart' as import6;
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'app_component.dart' as import9;
import 'dart:html';
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import13;
import 'package:angular2/src/core/linker/view_type.dart' as import14;
import '../splash/splash_component.template.dart' as import15;
import '../../translations.dart' as import16;
import '../login/login_component.template.dart' as import17;
import '../../greeter_service.dart' as import18;
import '../../lightdm.dart' as import19;
import '../users/users_component.template.dart' as import20;
import '../desktops/desktops_component.template.dart' as import21;
import '../power_button/power_button_component.template.dart' as import22;
import 'package:angular2/src/core/linker/app_view_utils.dart' as import23;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import25;
import 'package:angular2/src/core/linker/component_factory.dart' as import26;
const List<dynamic> styles_AppComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_AppComponent0 = const [
  const StaticNodeDebugInfo(const [import2.SplashComponent],import2.SplashComponent,const <String, dynamic>{}),
  null,const StaticNodeDebugInfo(const [import3.LoginComponent],import3.LoginComponent,const <String, dynamic>{}),
  null,const StaticNodeDebugInfo(const [import4.UsersComponent],import4.UsersComponent,const <String, dynamic>{}),
  null,const StaticNodeDebugInfo(const [import5.DesktopsComponent],import5.DesktopsComponent,const <String, dynamic>{}),
  null,const StaticNodeDebugInfo(const [import6.PowerButtonComponent],import6.PowerButtonComponent,const <String, dynamic>{}),
  null,const StaticNodeDebugInfo(const [import6.PowerButtonComponent],import6.PowerButtonComponent,const <String, dynamic>{})
]
;
RenderComponentType renderType_AppComponent;
class ViewAppComponent0 extends DebugAppView<import9.AppComponent> {
  Element _el_0;
  ViewContainer _appEl_0;
  import2.SplashComponent _SplashComponent_0_3;
  Element _el_2;
  ViewContainer _appEl_2;
  import3.LoginComponent _LoginComponent_2_3;
  Element _el_4;
  ViewContainer _appEl_4;
  import4.UsersComponent _UsersComponent_4_3;
  Element _el_6;
  ViewContainer _appEl_6;
  import5.DesktopsComponent _DesktopsComponent_6_3;
  Element _el_8;
  ViewContainer _appEl_8;
  import6.PowerButtonComponent _PowerButtonComponent_8_3;
  Element _el_10;
  ViewContainer _appEl_10;
  import6.PowerButtonComponent _PowerButtonComponent_10_3;
  var _expr_0 = uninitialized;
  var _expr_1 = uninitialized;
  var _expr_2 = uninitialized;
  var _expr_3 = uninitialized;
  ViewAppComponent0(import13.Injector parentInjector,ViewContainer declarationEl): super(ViewAppComponent0,renderType_AppComponent,import14.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_AppComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('splash');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    _el_0.className = 'fade';
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = import15.viewFactory_SplashComponent0(this.injector(0),_appEl_0);
    _SplashComponent_0_3 = new import2.SplashComponent(this.parentInjector.get(import16.Translations));
    _appEl_0.initComponent(_SplashComponent_0_3,compView_0);
    compView_0.createComp([],null);
    Text _text_1 = new Text('\n');
    parentRenderNode.append(_text_1);
    dbgElm(_text_1,1,0,30);
    _el_2 = doc.createElement('login');
    _el_2.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_2);
    dbgElm(_el_2,2,1,0);
    _el_2.className = 'fade hidden';
    _appEl_2 = new ViewContainer(2,null,this,_el_2);
    var compView_2 = import17.viewFactory_LoginComponent0(this.injector(2),_appEl_2);
    _LoginComponent_2_3 = new import3.LoginComponent(this.parentInjector.get(import18.GreeterService),this.parentInjector.get(import19.LightDM),this.parentInjector.get(import16.Translations));
    _appEl_2.initComponent(_LoginComponent_2_3,compView_2);
    compView_2.createComp([],null);
    Text _text_3 = new Text('\n');
    parentRenderNode.append(_text_3);
    dbgElm(_text_3,3,1,35);
    _el_4 = doc.createElement('users');
    _el_4.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_4);
    dbgElm(_el_4,4,2,0);
    _el_4.className = 'fade hidden';
    _appEl_4 = new ViewContainer(4,null,this,_el_4);
    var compView_4 = import20.viewFactory_UsersComponent0(this.injector(4),_appEl_4);
    _UsersComponent_4_3 = new import4.UsersComponent(this.parentInjector.get(import19.LightDM),this.parentInjector.get(import18.GreeterService));
    _appEl_4.initComponent(_UsersComponent_4_3,compView_4);
    compView_4.createComp([],null);
    Text _text_5 = new Text('\n');
    parentRenderNode.append(_text_5);
    dbgElm(_text_5,5,2,35);
    _el_6 = doc.createElement('desktops');
    _el_6.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_6);
    dbgElm(_el_6,6,3,0);
    _el_6.className = 'fade hidden';
    _appEl_6 = new ViewContainer(6,null,this,_el_6);
    var compView_6 = import21.viewFactory_DesktopsComponent0(this.injector(6),_appEl_6);
    _DesktopsComponent_6_3 = new import5.DesktopsComponent(this.parentInjector.get(import19.LightDM),this.parentInjector.get(import18.GreeterService));
    _appEl_6.initComponent(_DesktopsComponent_6_3,compView_6);
    compView_6.createComp([],null);
    Text _text_7 = new Text('\n\n');
    parentRenderNode.append(_text_7);
    dbgElm(_text_7,7,3,41);
    _el_8 = doc.createElement('power-button');
    _el_8.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_8);
    dbgElm(_el_8,8,5,0);
    createAttr(_el_8,'id','shutdown');
    _appEl_8 = new ViewContainer(8,null,this,_el_8);
    var compView_8 = import22.viewFactory_PowerButtonComponent0(this.injector(8),_appEl_8);
    _PowerButtonComponent_8_3 = new import6.PowerButtonComponent(this.parentInjector.get(import19.LightDM));
    _appEl_8.initComponent(_PowerButtonComponent_8_3,compView_8);
    compView_8.createComp([],null);
    Text _text_9 = new Text('\n');
    parentRenderNode.append(_text_9);
    dbgElm(_text_9,9,5,95);
    _el_10 = doc.createElement('power-button');
    _el_10.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_10);
    dbgElm(_el_10,10,6,0);
    createAttr(_el_10,'id','reboot');
    _appEl_10 = new ViewContainer(10,null,this,_el_10);
    var compView_10 = import22.viewFactory_PowerButtonComponent0(this.injector(10),_appEl_10);
    _PowerButtonComponent_10_3 = new import6.PowerButtonComponent(this.parentInjector.get(import19.LightDM));
    _appEl_10.initComponent(_PowerButtonComponent_10_3,compView_10);
    compView_10.createComp([],null);
    init([],[
      _el_0,_text_1,_el_2,_text_3,_el_4,_text_5,_el_6,_text_7,_el_8,_text_9,_el_10
    ]
    ,[]);
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import2.SplashComponent) && (0 == requestNodeIndex))) { return _SplashComponent_0_3; }
    if ((identical(token, import3.LoginComponent) && (2 == requestNodeIndex))) { return _LoginComponent_2_3; }
    if ((identical(token, import4.UsersComponent) && (4 == requestNodeIndex))) { return _UsersComponent_4_3; }
    if ((identical(token, import5.DesktopsComponent) && (6 == requestNodeIndex))) { return _DesktopsComponent_6_3; }
    if ((identical(token, import6.PowerButtonComponent) && (8 == requestNodeIndex))) { return _PowerButtonComponent_8_3; }
    if ((identical(token, import6.PowerButtonComponent) && (10 == requestNodeIndex))) { return _PowerButtonComponent_10_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import23.AppViewUtils.throwOnChanges)) { _SplashComponent_0_3.ngOnInit(); }
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import23.AppViewUtils.throwOnChanges)) { _LoginComponent_2_3.ngOnInit(); }
    dbg(8,5,28);
    final currVal_0 = 'images/shutdown.svg';
    if (import23.checkBinding(_expr_0,currVal_0)) {
      _PowerButtonComponent_8_3.image = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(8,5,60);
    final currVal_1 = 'shutdown';
    if (import23.checkBinding(_expr_1,currVal_1)) {
      _PowerButtonComponent_8_3.type = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(10,6,26);
    final currVal_2 = 'images/reboot.svg';
    if (import23.checkBinding(_expr_2,currVal_2)) {
      _PowerButtonComponent_10_3.image = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(10,6,56);
    final currVal_3 = 'reboot';
    if (import23.checkBinding(_expr_3,currVal_3)) {
      _PowerButtonComponent_10_3.type = currVal_3;
      _expr_3 = currVal_3;
    }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_AppComponent0(import13.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_AppComponent, null)) { (renderType_AppComponent = import23.appViewUtils.createRenderComponentType('asset:lightdm_webkit_theme_litarvan/lib/components/app/app_component.html',0,import25.ViewEncapsulation.Emulated,styles_AppComponent)); }
  return new ViewAppComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_AppComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_AppComponentHost0 = const [const StaticNodeDebugInfo(const [import9.AppComponent],import9.AppComponent,const <String, dynamic>{})];
RenderComponentType renderType_AppComponentHost;
class ViewAppComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import9.AppComponent _AppComponent_0_3;
  ViewAppComponentHost0(import13.Injector parentInjector,ViewContainer declarationEl): super(ViewAppComponentHost0,renderType_AppComponentHost,import14.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_AppComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('app',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_AppComponent0(this.injector(0),_appEl_0);
    _AppComponent_0_3 = new import9.AppComponent();
    _appEl_0.initComponent(_AppComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import9.AppComponent) && (0 == requestNodeIndex))) { return _AppComponent_0_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import23.AppViewUtils.throwOnChanges)) { _AppComponent_0_3.ngOnInit(); }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_AppComponentHost0(import13.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_AppComponentHost, null)) { (renderType_AppComponentHost = import23.appViewUtils.createRenderComponentType('',0,import25.ViewEncapsulation.Emulated,styles_AppComponentHost)); }
  return new ViewAppComponentHost0(parentInjector,declarationEl);
}
const import26.ComponentFactory AppComponentNgFactory = const import26.ComponentFactory('app',viewFactory_AppComponentHost0,import9.AppComponent,_METADATA);
const _METADATA = const <dynamic>[AppComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(AppComponent, new _ngRef.ReflectionInfo(
const <dynamic>[AppComponentNgFactory],
const [],
() => new AppComponent(),
const <dynamic>[OnInit])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
}
