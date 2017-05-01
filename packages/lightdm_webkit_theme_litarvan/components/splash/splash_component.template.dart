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
import 'splash_component.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'dart:async';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.dart';
import 'package:lightdm_webkit_theme_litarvan/translations.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';
import 'package:angular2/core.template.dart' as i0;
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.template.dart' as i1;
import 'package:lightdm_webkit_theme_litarvan/translations.template.dart' as i2;
import 'package:lightdm_webkit_theme_litarvan/util.template.dart' as i3;
export 'splash_component.dart';
import 'splash_component.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import '../clock/clock_component.dart' as import2;
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'splash_component.dart' as import5;
import 'dart:html';
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import9;
import 'package:angular2/src/core/linker/view_type.dart' as import10;
import '../clock/clock_component.template.dart' as import11;
import '../../translations.dart' as import12;
import 'package:angular2/src/core/linker/app_view_utils.dart' as import13;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import15;
import 'package:angular2/src/core/linker/component_factory.dart' as import16;
const List<dynamic> styles_SplashComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_SplashComponent0 = const [
  const StaticNodeDebugInfo(const [import2.ClockComponent],import2.ClockComponent,const <String, dynamic>{}),
  null,null,null
]
;
RenderComponentType renderType_SplashComponent;
class ViewSplashComponent0 extends DebugAppView<import5.SplashComponent> {
  Element _el_0;
  ViewContainer _appEl_0;
  import2.ClockComponent _ClockComponent_0_3;
  Element _el_2;
  Text _text_3;
  var _expr_0 = uninitialized;
  ViewSplashComponent0(import9.Injector parentInjector,ViewContainer declarationEl): super(ViewSplashComponent0,renderType_SplashComponent,import10.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_SplashComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('clock');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = import11.viewFactory_ClockComponent0(this.injector(0),_appEl_0);
    _ClockComponent_0_3 = new import2.ClockComponent(this.parentInjector.get(import12.Translations));
    _appEl_0.initComponent(_ClockComponent_0_3,compView_0);
    compView_0.createComp([],null);
    Text _text_1 = new Text('\n\n');
    parentRenderNode.append(_text_1);
    dbgElm(_text_1,1,0,15);
    _el_2 = doc.createElement('div');
    _el_2.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_2);
    dbgElm(_el_2,2,2,0);
    createAttr(_el_2,'id','trigger');
    _text_3 = new Text('');
    _el_2.append(_text_3);
    dbgElm(_text_3,3,2,18);
    init([],[
      _el_0,_text_1,_el_2,_text_3
    ]
    ,[]);
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import2.ClockComponent) && (0 == requestNodeIndex))) { return _ClockComponent_0_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import13.AppViewUtils.throwOnChanges)) { _ClockComponent_0_3.ngOnInit(); }
    this.detectContentChildrenChanges();
    dbg(3,2,18);
    final currVal_0 = import13.interpolate1('\n    ',ctx.trans['splash'],'\n');
    if (import13.checkBinding(_expr_0,currVal_0)) {
      _text_3.text = currVal_0;
      _expr_0 = currVal_0;
    }
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_SplashComponent0(import9.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_SplashComponent, null)) { (renderType_SplashComponent = import13.appViewUtils.createRenderComponentType('asset:lightdm_webkit_theme_litarvan/lib/components/splash/splash_component.html',0,import15.ViewEncapsulation.Emulated,styles_SplashComponent)); }
  return new ViewSplashComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_SplashComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_SplashComponentHost0 = const [const StaticNodeDebugInfo(const [import5.SplashComponent],import5.SplashComponent,const <String, dynamic>{})];
RenderComponentType renderType_SplashComponentHost;
class ViewSplashComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import5.SplashComponent _SplashComponent_0_3;
  ViewSplashComponentHost0(import9.Injector parentInjector,ViewContainer declarationEl): super(ViewSplashComponentHost0,renderType_SplashComponentHost,import10.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_SplashComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('splash',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_SplashComponent0(this.injector(0),_appEl_0);
    _SplashComponent_0_3 = new import5.SplashComponent(this.parentInjector.get(import12.Translations));
    _appEl_0.initComponent(_SplashComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import5.SplashComponent) && (0 == requestNodeIndex))) { return _SplashComponent_0_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import13.AppViewUtils.throwOnChanges)) { _SplashComponent_0_3.ngOnInit(); }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_SplashComponentHost0(import9.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_SplashComponentHost, null)) { (renderType_SplashComponentHost = import13.appViewUtils.createRenderComponentType('',0,import15.ViewEncapsulation.Emulated,styles_SplashComponentHost)); }
  return new ViewSplashComponentHost0(parentInjector,declarationEl);
}
const import16.ComponentFactory SplashComponentNgFactory = const import16.ComponentFactory('splash',viewFactory_SplashComponentHost0,import5.SplashComponent,_METADATA);
const _METADATA = const <dynamic>[SplashComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(SplashComponent, new _ngRef.ReflectionInfo(
const <dynamic>[SplashComponentNgFactory],
const [const <dynamic>[Translations]],
(Translations trans) => new SplashComponent(trans),
const <dynamic>[OnInit])
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
