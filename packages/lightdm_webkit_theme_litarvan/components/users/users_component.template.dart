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
import 'users_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/user.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/greeter_service.template.dart' as i1;
import 'package:lightdm_webkit_theme_litarvan/lightdm.template.dart' as i2;
import 'package:lightdm_webkit_theme_litarvan/user.template.dart' as i3;
import 'package:lightdm_webkit_theme_litarvan/util.template.dart' as i4;
export 'users_component.dart';
import 'users_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import 'package:angular2/src/core/linker/template_ref.dart';
import 'package:angular2/src/common/directives/ng_for.dart' as import3;
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'users_component.dart' as import6;
import 'dart:html';
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import10;
import 'package:angular2/src/core/linker/view_type.dart' as import11;
import 'package:angular2/src/core/change_detection/differs/iterable_differs.dart' as import12;
import 'package:angular2/src/core/linker/app_view_utils.dart' as import13;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import15;
import '../../lightdm.dart' as import16;
import '../../greeter_service.dart' as import17;
import 'package:angular2/src/core/linker/component_factory.dart' as import18;
const List<dynamic> styles_UsersComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_UsersComponent0 = const [
  null,null,const StaticNodeDebugInfo(const [
    TemplateRef,import3.NgFor
  ]
  ,null,const <String, dynamic>{}),null
]
;
RenderComponentType renderType_UsersComponent;
class ViewUsersComponent0 extends DebugAppView<import6.UsersComponent> {
  Element _el_0;
  ViewContainer _appEl_2;
  dynamic _TemplateRef_2_4;
  import3.NgFor _NgFor_2_5;
  var _expr_0 = uninitialized;
  ViewUsersComponent0(import10.Injector parentInjector,ViewContainer declarationEl): super(ViewUsersComponent0,renderType_UsersComponent,import11.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_UsersComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('li');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    createAttr(_el_0,'id','users');
    Text _text_1 = new Text('\n    ');
    _el_0.append(_text_1);
    dbgElm(_text_1,1,0,15);
    var _anchor_2 = new Comment('template bindings={}');
    _el_0?.append(_anchor_2);
    dbgElm(_anchor_2,2,1,4);
    _appEl_2 = new ViewContainer(2,0,this,_anchor_2);
    _TemplateRef_2_4 = new TemplateRef(_appEl_2,viewFactory_UsersComponent1);
    _NgFor_2_5 = new import3.NgFor(_appEl_2,_TemplateRef_2_4,this.parentInjector.get(import12.IterableDiffers),ref);
    Text _text_3 = new Text('\n');
    _el_0.append(_text_3);
    dbgElm(_text_3,3,3,9);
    init([],[
      _el_0,_text_1,_anchor_2,_text_3
    ]
    ,[]);
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, TemplateRef) && (2 == requestNodeIndex))) { return _TemplateRef_2_4; }
    if ((identical(token, import3.NgFor) && (2 == requestNodeIndex))) { return _NgFor_2_5; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    dbg(2,1,8);
    final currVal_0 = ctx.lightDM.users;
    if (import13.checkBinding(_expr_0,currVal_0)) {
      _NgFor_2_5.ngForOf = currVal_0;
      _expr_0 = currVal_0;
    }
    if (!import13.AppViewUtils.throwOnChanges) { _NgFor_2_5.ngDoCheck(); }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_UsersComponent0(import10.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_UsersComponent, null)) { (renderType_UsersComponent = import13.appViewUtils.createRenderComponentType('asset:lightdm_webkit_theme_litarvan/lib/components/users/users_component.html',0,import15.ViewEncapsulation.Emulated,styles_UsersComponent)); }
  return new ViewUsersComponent0(parentInjector,declarationEl);
}
const List<StaticNodeDebugInfo> nodeDebugInfos_UsersComponent1 = const [
  null,null,null,null,null,null,null,null,null
]
;
class ViewUsersComponent1 extends DebugAppView<import6.UsersComponent> {
  UListElement _el_0;
  Element _el_2;
  Text _text_3;
  Element _el_4;
  Text _text_5;
  Element _el_7;
  var _expr_1 = uninitialized;
  var _expr_2 = uninitialized;
  var _expr_3 = uninitialized;
  ViewUsersComponent1(import10.Injector parentInjector,ViewContainer declarationEl): super(ViewUsersComponent1,renderType_UsersComponent,import11.ViewType.EMBEDDED,{'\$implicit': null},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_UsersComponent1);
  ViewContainer createInternal(dynamic rootSelector) {
    var doc = document;
    _el_0 = doc.createElement('ul');
    _el_0.setAttribute(shimCAttr,'');
    dbgElm(_el_0,0,1,4);
    _el_0.className = 'user';
    Text _text_1 = new Text('\n        ');
    _el_0.append(_text_1);
    dbgElm(_text_1,1,1,78);
    _el_2 = doc.createElement('i');
    _el_2.setAttribute(shimCAttr,'');
    _el_0.append(_el_2);
    dbgElm(_el_2,2,2,8);
    _el_2.className = 'fa fa-angle-left';
    _text_3 = new Text('');
    _el_0.append(_text_3);
    dbgElm(_text_3,3,2,40);
    _el_4 = doc.createElement('b');
    _el_4.setAttribute(shimCAttr,'');
    _el_0.append(_el_4);
    dbgElm(_el_4,4,2,58);
    _text_5 = new Text('');
    _el_4.append(_text_5);
    dbgElm(_text_5,5,2,61);
    Text _text_6 = new Text(') ');
    _el_0.append(_text_6);
    dbgElm(_text_6,6,2,84);
    _el_7 = doc.createElement('img');
    _el_7.setAttribute(shimCAttr,'');
    _el_0.append(_el_7);
    dbgElm(_el_7,7,2,86);
    Text _text_8 = new Text('\n    ');
    _el_0.append(_text_8);
    dbgElm(_text_8,8,2,117);
    listen(_el_0,'click',evt(_handle_click_0_0));
    init([_el_0],[
      _el_0,_text_1,_el_2,_text_3,_el_4,_text_5,_text_6,_el_7,_text_8
    ]
    ,[]);
    return null;
  }
  void detectChangesInternal() {
    this.detectContentChildrenChanges();
    dbg(3,2,40);
    final currVal_1 = import13.interpolate1(' ',locals['\$implicit'].name,' (');
    if (import13.checkBinding(_expr_1,currVal_1)) {
      _text_3.text = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(5,2,61);
    final currVal_2 = import13.interpolate0(locals['\$implicit'].username);
    if (import13.checkBinding(_expr_2,currVal_2)) {
      _text_5.text = currVal_2;
      _expr_2 = currVal_2;
    }
    dbg(7,2,91);
    final currVal_3 = import13.interpolate0(locals['\$implicit'].avatar);
    if (import13.checkBinding(_expr_3,currVal_3)) {
      setProp(_el_7,'src',import13.appViewUtils.sanitizer.sanitizeUrl(currVal_3));
      _expr_3 = currVal_3;
    }
    this.detectViewChildrenChanges();
  }
  bool _handle_click_0_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(0,1,43);
    final dynamic pd_0 = !identical((ctx.apply(locals['\$implicit']) as dynamic), false);
    return (true && pd_0);
  }
}
AppView viewFactory_UsersComponent1(import10.Injector parentInjector,ViewContainer declarationEl) {
  return new ViewUsersComponent1(parentInjector,declarationEl);
}
const List<dynamic> styles_UsersComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_UsersComponentHost0 = const [const StaticNodeDebugInfo(const [import6.UsersComponent],import6.UsersComponent,const <String, dynamic>{})];
RenderComponentType renderType_UsersComponentHost;
class ViewUsersComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import6.UsersComponent _UsersComponent_0_3;
  ViewUsersComponentHost0(import10.Injector parentInjector,ViewContainer declarationEl): super(ViewUsersComponentHost0,renderType_UsersComponentHost,import11.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_UsersComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('users',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_UsersComponent0(this.injector(0),_appEl_0);
    _UsersComponent_0_3 = new import6.UsersComponent(this.parentInjector.get(import16.LightDM),this.parentInjector.get(import17.GreeterService));
    _appEl_0.initComponent(_UsersComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import6.UsersComponent) && (0 == requestNodeIndex))) { return _UsersComponent_0_3; }
    return notFoundResult;
  }
}
AppView viewFactory_UsersComponentHost0(import10.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_UsersComponentHost, null)) { (renderType_UsersComponentHost = import13.appViewUtils.createRenderComponentType('',0,import15.ViewEncapsulation.Emulated,styles_UsersComponentHost)); }
  return new ViewUsersComponentHost0(parentInjector,declarationEl);
}
const import18.ComponentFactory UsersComponentNgFactory = const import18.ComponentFactory('users',viewFactory_UsersComponentHost0,import6.UsersComponent,_METADATA);
const _METADATA = const <dynamic>[UsersComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(UsersComponent, new _ngRef.ReflectionInfo(
const <dynamic>[UsersComponentNgFactory],
const [const <dynamic>[LightDM], const <dynamic>[GreeterService]],
(LightDM lightDM, GreeterService _greeter) => new UsersComponent(lightDM, _greeter))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
