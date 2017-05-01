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
import 'desktops_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/desktop.dart';
import 'package:lightdm_webkit_theme_litarvan/greeter_service.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/desktop.template.dart' as i1;
import 'package:lightdm_webkit_theme_litarvan/greeter_service.template.dart' as i2;
import 'package:lightdm_webkit_theme_litarvan/lightdm.template.dart' as i3;
import 'package:lightdm_webkit_theme_litarvan/util.template.dart' as i4;
export 'desktops_component.dart';
import 'desktops_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import 'package:angular2/src/core/linker/template_ref.dart';
import 'package:angular2/src/common/directives/ng_for.dart' as import3;
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'desktops_component.dart' as import6;
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
const List<dynamic> styles_DesktopsComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_DesktopsComponent0 = const [
  null,null,const StaticNodeDebugInfo(const [
    TemplateRef,import3.NgFor
  ]
  ,null,const <String, dynamic>{}),null
]
;
RenderComponentType renderType_DesktopsComponent;
class ViewDesktopsComponent0 extends DebugAppView<import6.DesktopsComponent> {
  Element _el_0;
  ViewContainer _appEl_2;
  dynamic _TemplateRef_2_4;
  import3.NgFor _NgFor_2_5;
  var _expr_0 = uninitialized;
  ViewDesktopsComponent0(import10.Injector parentInjector,ViewContainer declarationEl): super(ViewDesktopsComponent0,renderType_DesktopsComponent,import11.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_DesktopsComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('li');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    createAttr(_el_0,'id','desktops');
    Text _text_1 = new Text('\n    ');
    _el_0.append(_text_1);
    dbgElm(_text_1,1,0,18);
    var _anchor_2 = new Comment('template bindings={}');
    _el_0?.append(_anchor_2);
    dbgElm(_anchor_2,2,1,4);
    _appEl_2 = new ViewContainer(2,0,this,_anchor_2);
    _TemplateRef_2_4 = new TemplateRef(_appEl_2,viewFactory_DesktopsComponent1);
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
    final currVal_0 = ctx.desktops;
    if (import13.checkBinding(_expr_0,currVal_0)) {
      _NgFor_2_5.ngForOf = currVal_0;
      _expr_0 = currVal_0;
    }
    if (!import13.AppViewUtils.throwOnChanges) { _NgFor_2_5.ngDoCheck(); }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_DesktopsComponent0(import10.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_DesktopsComponent, null)) { (renderType_DesktopsComponent = import13.appViewUtils.createRenderComponentType('asset:lightdm_webkit_theme_litarvan/lib/components/desktops/desktops_component.html',0,import15.ViewEncapsulation.Emulated,styles_DesktopsComponent)); }
  return new ViewDesktopsComponent0(parentInjector,declarationEl);
}
const List<StaticNodeDebugInfo> nodeDebugInfos_DesktopsComponent1 = const [
  null,null,null,null
]
;
class ViewDesktopsComponent1 extends DebugAppView<import6.DesktopsComponent> {
  UListElement _el_0;
  Element _el_2;
  Text _text_3;
  var _expr_1 = uninitialized;
  ViewDesktopsComponent1(import10.Injector parentInjector,ViewContainer declarationEl): super(ViewDesktopsComponent1,renderType_DesktopsComponent,import11.ViewType.EMBEDDED,{'\$implicit': null},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_DesktopsComponent1);
  ViewContainer createInternal(dynamic rootSelector) {
    var doc = document;
    _el_0 = doc.createElement('ul');
    _el_0.setAttribute(shimCAttr,'');
    dbgElm(_el_0,0,1,4);
    _el_0.className = 'desktop';
    Text _text_1 = new Text('\n        ');
    _el_0.append(_text_1);
    dbgElm(_text_1,1,1,82);
    _el_2 = doc.createElement('i');
    _el_2.setAttribute(shimCAttr,'');
    _el_0.append(_el_2);
    dbgElm(_el_2,2,2,8);
    _el_2.className = 'fa fa-angle-left';
    _text_3 = new Text('');
    _el_0.append(_text_3);
    dbgElm(_text_3,3,2,40);
    listen(_el_0,'click',evt(_handle_click_0_0));
    init([_el_0],[
      _el_0,_text_1,_el_2,_text_3
    ]
    ,[]);
    return null;
  }
  void detectChangesInternal() {
    this.detectContentChildrenChanges();
    dbg(3,2,40);
    final currVal_1 = import13.interpolate1(' ',locals['\$implicit'].name,'\n    ');
    if (import13.checkBinding(_expr_1,currVal_1)) {
      _text_3.text = currVal_1;
      _expr_1 = currVal_1;
    }
    this.detectViewChildrenChanges();
  }
  bool _handle_click_0_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(0,1,41);
    final dynamic pd_0 = !identical((ctx.apply(locals['\$implicit']) as dynamic), false);
    return (true && pd_0);
  }
}
AppView viewFactory_DesktopsComponent1(import10.Injector parentInjector,ViewContainer declarationEl) {
  return new ViewDesktopsComponent1(parentInjector,declarationEl);
}
const List<dynamic> styles_DesktopsComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_DesktopsComponentHost0 = const [const StaticNodeDebugInfo(const [import6.DesktopsComponent],import6.DesktopsComponent,const <String, dynamic>{})];
RenderComponentType renderType_DesktopsComponentHost;
class ViewDesktopsComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import6.DesktopsComponent _DesktopsComponent_0_3;
  ViewDesktopsComponentHost0(import10.Injector parentInjector,ViewContainer declarationEl): super(ViewDesktopsComponentHost0,renderType_DesktopsComponentHost,import11.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_DesktopsComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('desktops',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_DesktopsComponent0(this.injector(0),_appEl_0);
    _DesktopsComponent_0_3 = new import6.DesktopsComponent(this.parentInjector.get(import16.LightDM),this.parentInjector.get(import17.GreeterService));
    _appEl_0.initComponent(_DesktopsComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import6.DesktopsComponent) && (0 == requestNodeIndex))) { return _DesktopsComponent_0_3; }
    return notFoundResult;
  }
}
AppView viewFactory_DesktopsComponentHost0(import10.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_DesktopsComponentHost, null)) { (renderType_DesktopsComponentHost = import13.appViewUtils.createRenderComponentType('',0,import15.ViewEncapsulation.Emulated,styles_DesktopsComponentHost)); }
  return new ViewDesktopsComponentHost0(parentInjector,declarationEl);
}
const import18.ComponentFactory DesktopsComponentNgFactory = const import18.ComponentFactory('desktops',viewFactory_DesktopsComponentHost0,import6.DesktopsComponent,_METADATA);
const _METADATA = const <dynamic>[DesktopsComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(DesktopsComponent, new _ngRef.ReflectionInfo(
const <dynamic>[DesktopsComponentNgFactory],
const [const <dynamic>[LightDM], const <dynamic>[GreeterService]],
(LightDM _lightDM, GreeterService _greeter) => new DesktopsComponent(_lightDM, _greeter))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
}
