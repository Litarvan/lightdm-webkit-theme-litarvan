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
import 'clock_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/translations.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/translations.template.dart' as i1;
export 'clock_component.dart';
import 'clock_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'clock_component.dart' as import4;
import 'dart:html';
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import7;
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/linker/view_type.dart' as import9;
import 'package:angular2/src/core/linker/app_view_utils.dart' as import10;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import12;
import '../../translations.dart' as import13;
import 'package:angular2/src/core/linker/component_factory.dart' as import14;
const List<dynamic> styles_ClockComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_ClockComponent0 = const [
  null,null,null,null,null
]
;
RenderComponentType renderType_ClockComponent;
class ViewClockComponent0 extends DebugAppView<import4.ClockComponent> {
  Element _el_0;
  Text _text_1;
  Text _text_2;
  Element _el_3;
  Text _text_4;
  var _expr_0 = uninitialized;
  var _expr_1 = uninitialized;
  var _expr_2 = uninitialized;
  ViewClockComponent0(import7.Injector parentInjector,ViewContainer declarationEl): super(ViewClockComponent0,renderType_ClockComponent,import9.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_ClockComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('b');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    _text_1 = new Text('');
    _el_0.append(_text_1);
    dbgElm(_text_1,1,0,3);
    _text_2 = new Text('');
    parentRenderNode.append(_text_2);
    dbgElm(_text_2,2,0,18);
    _el_3 = doc.createElement('div');
    _el_3.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_3);
    dbgElm(_el_3,3,2,0);
    createAttr(_el_3,'id','date');
    _text_4 = new Text('');
    _el_3.append(_text_4);
    dbgElm(_text_4,4,2,15);
    init([],[
      _el_0,_text_1,_text_2,_el_3,_text_4
    ]
    ,[]);
    return null;
  }
  void detectChangesInternal() {
    this.detectContentChildrenChanges();
    dbg(1,0,3);
    final currVal_0 = import10.interpolate0(ctx.hours);
    if (import10.checkBinding(_expr_0,currVal_0)) {
      _text_1.text = currVal_0;
      _expr_0 = currVal_0;
    }
    dbg(2,0,18);
    final currVal_1 = import10.interpolate1(':',ctx.minutes,'\n\n');
    if (import10.checkBinding(_expr_1,currVal_1)) {
      _text_2.text = currVal_1;
      _expr_1 = currVal_1;
    }
    dbg(4,2,15);
    final currVal_2 = import10.interpolate1('\n    ',ctx.date,'\n');
    if (import10.checkBinding(_expr_2,currVal_2)) {
      _text_4.text = currVal_2;
      _expr_2 = currVal_2;
    }
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_ClockComponent0(import7.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_ClockComponent, null)) { (renderType_ClockComponent = import10.appViewUtils.createRenderComponentType('asset:lightdm_webkit_theme_litarvan/lib/components/clock/clock_component.html',0,import12.ViewEncapsulation.Emulated,styles_ClockComponent)); }
  return new ViewClockComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_ClockComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_ClockComponentHost0 = const [const StaticNodeDebugInfo(const [import4.ClockComponent],import4.ClockComponent,const <String, dynamic>{})];
RenderComponentType renderType_ClockComponentHost;
class ViewClockComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import4.ClockComponent _ClockComponent_0_3;
  ViewClockComponentHost0(import7.Injector parentInjector,ViewContainer declarationEl): super(ViewClockComponentHost0,renderType_ClockComponentHost,import9.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_ClockComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('clock',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_ClockComponent0(this.injector(0),_appEl_0);
    _ClockComponent_0_3 = new import4.ClockComponent(this.parentInjector.get(import13.Translations));
    _appEl_0.initComponent(_ClockComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import4.ClockComponent) && (0 == requestNodeIndex))) { return _ClockComponent_0_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import10.AppViewUtils.throwOnChanges)) { _ClockComponent_0_3.ngOnInit(); }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_ClockComponentHost0(import7.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_ClockComponentHost, null)) { (renderType_ClockComponentHost = import10.appViewUtils.createRenderComponentType('',0,import12.ViewEncapsulation.Emulated,styles_ClockComponentHost)); }
  return new ViewClockComponentHost0(parentInjector,declarationEl);
}
const import14.ComponentFactory ClockComponentNgFactory = const import14.ComponentFactory('clock',viewFactory_ClockComponentHost0,import4.ClockComponent,_METADATA);
const _METADATA = const <dynamic>[ClockComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(ClockComponent, new _ngRef.ReflectionInfo(
const <dynamic>[ClockComponentNgFactory],
const [const <dynamic>[Translations]],
(Translations _trans) => new ClockComponent(_trans),
const <dynamic>[OnInit])
)
;
i0.initReflector();
i1.initReflector();
}
