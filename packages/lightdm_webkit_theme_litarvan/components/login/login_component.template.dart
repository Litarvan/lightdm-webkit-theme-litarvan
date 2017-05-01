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
import 'login_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/translations.dart';
import 'package:lightdm_webkit_theme_litarvan/user.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.template.dart' as i1;
import 'package:lightdm_webkit_theme_litarvan/desktop.template.dart' as i2;
import 'package:lightdm_webkit_theme_litarvan/greeter_service.template.dart' as i3;
import 'package:lightdm_webkit_theme_litarvan/lightdm.template.dart' as i4;
import 'package:lightdm_webkit_theme_litarvan/translations.template.dart' as i5;
import 'package:lightdm_webkit_theme_litarvan/user.template.dart' as i6;
import 'package:lightdm_webkit_theme_litarvan/util.template.dart' as i7;
export 'login_component.dart';
import 'login_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'login_component.dart' as import4;
import 'dart:html';
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import7;
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/linker/view_type.dart' as import9;
import 'package:angular2/src/core/linker/app_view_utils.dart' as import10;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import12;
import '../../greeter_service.dart' as import13;
import '../../lightdm.dart' as import14;
import '../../translations.dart' as import15;
import 'package:angular2/src/core/linker/component_factory.dart' as import16;
const List<dynamic> styles_LoginComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_LoginComponent0 = const [
  null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null
]
;
RenderComponentType renderType_LoginComponent;
class ViewLoginComponent0 extends DebugAppView<import4.LoginComponent> {
  Element _el_0;
  Element _el_2;
  Text _text_3;
  Element _el_4;
  Text _text_5;
  InputElement _el_8;
  Element _el_9;
  Element _el_11;
  Element _el_12;
  ButtonElement _el_14;
  Text _text_15;
  Element _el_16;
  var _expr_1 = uninitialized;
  var _expr_2 = uninitialized;
  var _expr_3 = uninitialized;
  var _expr_4 = uninitialized;
  var _expr_6 = uninitialized;
  ViewLoginComponent0(import7.Injector parentInjector,ViewContainer declarationEl): super(ViewLoginComponent0,renderType_LoginComponent,import9.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_LoginComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('img');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    createAttr(_el_0,'id','avatar');
    Text _text_1 = new Text('\n\n');
    parentRenderNode.append(_text_1);
    dbgElm(_text_1,1,0,69);
    _el_2 = doc.createElement('p');
    _el_2.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_2);
    dbgElm(_el_2,2,2,0);
    createAttr(_el_2,'id','user');
    _text_3 = new Text('');
    _el_2.append(_text_3);
    dbgElm(_text_3,3,2,13);
    _el_4 = doc.createElement('b');
    _el_4.setAttribute(shimCAttr,'');
    _el_2.append(_el_4);
    dbgElm(_el_4,4,2,38);
    _text_5 = new Text('');
    _el_4.append(_text_5);
    dbgElm(_text_5,5,2,41);
    Text _text_6 = new Text(')');
    _el_2.append(_text_6);
    dbgElm(_text_6,6,2,72);
    Text _text_7 = new Text('\n');
    parentRenderNode.append(_text_7);
    dbgElm(_text_7,7,2,77);
    _el_8 = doc.createElement('input');
    _el_8.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_8);
    dbgElm(_el_8,8,3,0);
    createAttr(_el_8,'id','password');
    createAttr(_el_8,'type','password');
    _el_9 = doc.createElement('br');
    _el_9.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_9);
    dbgElm(_el_9,9,3,77);
    Text _text_10 = new Text('\n');
    parentRenderNode.append(_text_10);
    dbgElm(_text_10,10,3,82);
    _el_11 = doc.createElement('span');
    _el_11.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_11);
    dbgElm(_el_11,11,4,0);
    createAttr(_el_11,'id','error');
    _el_12 = doc.createElement('br');
    _el_12.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_12);
    dbgElm(_el_12,12,4,24);
    Text _text_13 = new Text('\n\n');
    parentRenderNode.append(_text_13);
    dbgElm(_text_13,13,4,29);
    _el_14 = doc.createElement('button');
    _el_14.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_14);
    dbgElm(_el_14,14,6,0);
    createAttr(_el_14,'id','desktop');
    _text_15 = new Text('');
    _el_14.append(_text_15);
    dbgElm(_text_15,15,6,42);
    _el_16 = doc.createElement('i');
    _el_16.setAttribute(shimCAttr,'');
    _el_14.append(_el_16);
    dbgElm(_el_16,16,6,69);
    _el_16.className = 'fa fa-angle-right';
    listen(_el_0,'click',evt(_handle_click_0_0));
    listen(_el_14,'click',evt(_handle_click_14_0));
    init([],[
      _el_0,_text_1,_el_2,_text_3,_el_4,_text_5,_text_6,_text_7,_el_8,_el_9,_text_10,
      _el_11,_el_12,_text_13,_el_14,_text_15,_el_16
    ]
    ,[]);
    return null;
  }
  void detectChangesInternal() {
    this.detectContentChildrenChanges();
    dbg(0,0,35);
    final currVal_1 = import10.interpolate0(ctx.greeter.user.avatar);
    if (import10.checkBinding(_expr_1,currVal_1)) {
      setProp(_el_0,'src',import10.appViewUtils.sanitizer.sanitizeUrl(currVal_1));
      _expr_1 = currVal_1;
    }
    dbg(3,2,13);
    final currVal_2 = import10.interpolate1('',ctx.greeter.user.name,' (');
    if (import10.checkBinding(_expr_2,currVal_2)) {
      _text_3.text = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(5,2,41);
    final currVal_3 = import10.interpolate0(ctx.greeter.user.username);
    if (import10.checkBinding(_expr_3,currVal_3)) {
      _text_5.text = currVal_3;
      _expr_3 = currVal_3;
    }
    dbg(8,3,37);
    final currVal_4 = import10.interpolate0(ctx.trans['password']);
    if (import10.checkBinding(_expr_4,currVal_4)) {
      setProp(_el_8,'placeholder',currVal_4);
      _expr_4 = currVal_4;
    }
    dbg(15,6,42);
    final currVal_6 = import10.interpolate1('',ctx.greeter.desktop.name,' ');
    if (import10.checkBinding(_expr_6,currVal_6)) {
      _text_15.text = currVal_6;
      _expr_6 = currVal_6;
    }
    this.detectViewChildrenChanges();
  }
  bool _handle_click_0_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(0,0,17);
    final dynamic pd_0 = !identical((ctx.users() as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_click_14_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(14,6,21);
    final dynamic pd_0 = !identical((ctx.desktops() as dynamic), false);
    return (true && pd_0);
  }
}
AppView viewFactory_LoginComponent0(import7.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_LoginComponent, null)) { (renderType_LoginComponent = import10.appViewUtils.createRenderComponentType('asset:lightdm_webkit_theme_litarvan/lib/components/login/login_component.html',0,import12.ViewEncapsulation.Emulated,styles_LoginComponent)); }
  return new ViewLoginComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_LoginComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_LoginComponentHost0 = const [const StaticNodeDebugInfo(const [import4.LoginComponent],import4.LoginComponent,const <String, dynamic>{})];
RenderComponentType renderType_LoginComponentHost;
class ViewLoginComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import4.LoginComponent _LoginComponent_0_3;
  ViewLoginComponentHost0(import7.Injector parentInjector,ViewContainer declarationEl): super(ViewLoginComponentHost0,renderType_LoginComponentHost,import9.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_LoginComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('login',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_LoginComponent0(this.injector(0),_appEl_0);
    _LoginComponent_0_3 = new import4.LoginComponent(this.parentInjector.get(import13.GreeterService),this.parentInjector.get(import14.LightDM),this.parentInjector.get(import15.Translations));
    _appEl_0.initComponent(_LoginComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import4.LoginComponent) && (0 == requestNodeIndex))) { return _LoginComponent_0_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import10.AppViewUtils.throwOnChanges)) { _LoginComponent_0_3.ngOnInit(); }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_LoginComponentHost0(import7.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_LoginComponentHost, null)) { (renderType_LoginComponentHost = import10.appViewUtils.createRenderComponentType('',0,import12.ViewEncapsulation.Emulated,styles_LoginComponentHost)); }
  return new ViewLoginComponentHost0(parentInjector,declarationEl);
}
const import16.ComponentFactory LoginComponentNgFactory = const import16.ComponentFactory('login',viewFactory_LoginComponentHost0,import4.LoginComponent,_METADATA);
const _METADATA = const <dynamic>[LoginComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(LoginComponent, new _ngRef.ReflectionInfo(
const <dynamic>[LoginComponentNgFactory],
const [const <dynamic>[GreeterService], const <dynamic>[LightDM], const <dynamic>[Translations]],
(GreeterService greeter, LightDM _lightdm, Translations trans) => new LoginComponent(greeter, _lightdm, trans),
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
i7.initReflector();
}
