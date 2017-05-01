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
import 'power_button_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/lightdm.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/lightdm.template.dart' as i1;
import 'package:lightdm_webkit_theme_litarvan/util.template.dart' as i2;
export 'power_button_component.dart';
import 'power_button_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'power_button_component.dart' as import4;
import 'dart:html';
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import7;
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/linker/view_type.dart' as import9;
import 'package:angular2/src/core/linker/app_view_utils.dart' as import10;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import12;
import '../../lightdm.dart' as import13;
import 'package:angular2/src/core/linker/component_factory.dart' as import14;
const List<dynamic> styles_PowerButtonComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_PowerButtonComponent0 = const [
  null,null,null,null,null,null,null,null
]
;
RenderComponentType renderType_PowerButtonComponent;
class ViewPowerButtonComponent0 extends DebugAppView<import4.PowerButtonComponent> {
  Element _el_0;
  Element _el_3;
  Element _el_6;
  var _expr_1 = uninitialized;
  ViewPowerButtonComponent0(import7.Injector parentInjector,ViewContainer declarationEl): super(ViewPowerButtonComponent0,renderType_PowerButtonComponent,import9.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_PowerButtonComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('div');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    createAttr(_el_0,'id','power-button');
    Text _text_1 = new Text('\n    ');
    _el_0.append(_text_1);
    dbgElm(_text_1,1,0,41);
    Text _text_2 = new Text('\n    ');
    _el_0.append(_text_2);
    dbgElm(_text_2,2,1,66);
    _el_3 = doc.createElement('img');
    _el_3.setAttribute(shimCAttr,'');
    _el_0.append(_el_3);
    dbgElm(_el_3,3,2,4);
    createAttr(_el_3,'id','power-button-icon');
    Text _text_4 = new Text('\n');
    _el_0.append(_text_4);
    dbgElm(_text_4,4,2,52);
    Text _text_5 = new Text('\n\n');
    parentRenderNode.append(_text_5);
    dbgElm(_text_5,5,3,6);
    _el_6 = doc.createElement('div');
    _el_6.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_6);
    dbgElm(_el_6,6,5,0);
    _el_6.className = 'fade hidden';
    createAttr(_el_6,'id','power-menu');
    Text _text_7 = new Text('\n');
    _el_6.append(_text_7);
    dbgElm(_text_7,7,5,41);
    listen(_el_0,'click',evt(_handle_click_0_0));
    init([],[
      _el_0,_text_1,_text_2,_el_3,_text_4,_text_5,_el_6,_text_7
    ]
    ,[]);
    return null;
  }
  void detectChangesInternal() {
    this.detectContentChildrenChanges();
    dbg(3,2,32);
    final currVal_1 = import10.interpolate0(ctx.image);
    if (import10.checkBinding(_expr_1,currVal_1)) {
      setProp(_el_3,'src',import10.appViewUtils.sanitizer.sanitizeUrl(currVal_1));
      _expr_1 = currVal_1;
    }
    this.detectViewChildrenChanges();
  }
  bool _handle_click_0_0($event) {
    this.markPathToRootAsCheckOnce();
    dbg(0,0,23);
    final dynamic pd_0 = !identical((ctx.apply() as dynamic), false);
    return (true && pd_0);
  }
}
AppView viewFactory_PowerButtonComponent0(import7.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_PowerButtonComponent, null)) { (renderType_PowerButtonComponent = import10.appViewUtils.createRenderComponentType('asset:lightdm_webkit_theme_litarvan/lib/components/power_button/power_button_component.html',0,import12.ViewEncapsulation.Emulated,styles_PowerButtonComponent)); }
  return new ViewPowerButtonComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_PowerButtonComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_PowerButtonComponentHost0 = const [const StaticNodeDebugInfo(const [import4.PowerButtonComponent],import4.PowerButtonComponent,const <String, dynamic>{})];
RenderComponentType renderType_PowerButtonComponentHost;
class ViewPowerButtonComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import4.PowerButtonComponent _PowerButtonComponent_0_3;
  ViewPowerButtonComponentHost0(import7.Injector parentInjector,ViewContainer declarationEl): super(ViewPowerButtonComponentHost0,renderType_PowerButtonComponentHost,import9.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_PowerButtonComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('power-button',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_PowerButtonComponent0(this.injector(0),_appEl_0);
    _PowerButtonComponent_0_3 = new import4.PowerButtonComponent(this.parentInjector.get(import13.LightDM));
    _appEl_0.initComponent(_PowerButtonComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import4.PowerButtonComponent) && (0 == requestNodeIndex))) { return _PowerButtonComponent_0_3; }
    return notFoundResult;
  }
}
AppView viewFactory_PowerButtonComponentHost0(import7.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_PowerButtonComponentHost, null)) { (renderType_PowerButtonComponentHost = import10.appViewUtils.createRenderComponentType('',0,import12.ViewEncapsulation.Emulated,styles_PowerButtonComponentHost)); }
  return new ViewPowerButtonComponentHost0(parentInjector,declarationEl);
}
const import14.ComponentFactory PowerButtonComponentNgFactory = const import14.ComponentFactory('power-button',viewFactory_PowerButtonComponentHost0,import4.PowerButtonComponent,_METADATA);
const _METADATA = const <dynamic>[PowerButtonComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(PowerButtonComponent, new _ngRef.ReflectionInfo(
const <dynamic>[PowerButtonComponentNgFactory],
const [const <dynamic>[LightDM]],
(LightDM _lightdm) => new PowerButtonComponent(_lightdm))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
