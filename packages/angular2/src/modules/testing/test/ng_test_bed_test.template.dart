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
import 'ng_test_bed_test.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/angular2.dart';
import 'package:angular2/src/modules/testing/lib/src/error_matchers.dart';
import 'package:angular2/src/modules/testing/lib/src/errors.dart';
import 'package:angular2/src/modules/testing/lib/src/ng_test_bed.dart';
import 'package:test/test.dart';
import 'package:angular2/angular2.template.dart' as i0;
import 'package:angular2/src/modules/testing/lib/src/error_matchers.template.dart' as i1;
import 'package:angular2/src/modules/testing/lib/src/errors.template.dart' as i2;
import 'package:angular2/src/modules/testing/lib/src/ng_test_bed.template.dart' as i3;
export 'ng_test_bed_test.dart';
import '../../../debug/debug_context.dart';
import '../../../core/render/api.dart';
import '../../../debug/debug_app_view.dart';
import 'ng_test_bed_test.dart' as import3;
import 'dart:html';
import '../../../core/change_detection/change_detection.dart';
import '../../../core/di/injector.dart' as import6;
import '../../../core/linker/view_container.dart';
import '../../../core/linker/view_type.dart' as import8;
import '../../../core/linker/app_view_utils.dart' as import9;
import '../../../core/linker/app_view.dart';
import '../../../core/metadata/view.dart' as import11;
import '../../../core/linker/component_factory.dart' as import12;
const List<dynamic> styles_HelloPlaceComponent = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_HelloPlaceComponent0 = const [null];
RenderComponentType renderType_HelloPlaceComponent;
class ViewHelloPlaceComponent0 extends DebugAppView<import3.HelloPlaceComponent> {
  Text _text_0;
  var _expr_0 = uninitialized;
  ViewHelloPlaceComponent0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewHelloPlaceComponent0,renderType_HelloPlaceComponent,import8.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_HelloPlaceComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    _text_0 = new Text('');
    parentRenderNode.append(_text_0);
    dbgElm(_text_0,0,0,0);
    init([],[_text_0],[]);
    return null;
  }
  void detectChangesInternal() {
    this.detectContentChildrenChanges();
    dbg(0,0,0);
    final currVal_0 = import9.interpolate1('Hello ',ctx.place,'');
    if (import9.checkBinding(_expr_0,currVal_0)) {
      _text_0.text = currVal_0;
      _expr_0 = currVal_0;
    }
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_HelloPlaceComponent0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_HelloPlaceComponent, null)) { (renderType_HelloPlaceComponent = import9.appViewUtils.createRenderComponentType('asset:angular2/lib/src/modules/testing/test/ng_test_bed_test.dart class HelloPlaceComponent - inline template',0,import11.ViewEncapsulation.None,styles_HelloPlaceComponent)); }
  return new ViewHelloPlaceComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_HelloPlaceComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_HelloPlaceComponentHost0 = const [const StaticNodeDebugInfo(const [import3.HelloPlaceComponent],import3.HelloPlaceComponent,const <String, dynamic>{})];
RenderComponentType renderType_HelloPlaceComponentHost;
class ViewHelloPlaceComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import3.HelloPlaceComponent _HelloPlaceComponent_0_3;
  ViewHelloPlaceComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewHelloPlaceComponentHost0,renderType_HelloPlaceComponentHost,import8.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_HelloPlaceComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('ng-test-bed-test',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_HelloPlaceComponent0(this.injector(0),_appEl_0);
    _HelloPlaceComponent_0_3 = new import3.HelloPlaceComponent();
    _appEl_0.initComponent(_HelloPlaceComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import3.HelloPlaceComponent) && (0 == requestNodeIndex))) { return _HelloPlaceComponent_0_3; }
    return notFoundResult;
  }
}
AppView viewFactory_HelloPlaceComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_HelloPlaceComponentHost, null)) { (renderType_HelloPlaceComponentHost = import9.appViewUtils.createRenderComponentType('',0,import11.ViewEncapsulation.Emulated,styles_HelloPlaceComponentHost)); }
  return new ViewHelloPlaceComponentHost0(parentInjector,declarationEl);
}
const import12.ComponentFactory HelloPlaceComponentNgFactory = const import12.ComponentFactory('ng-test-bed-test',viewFactory_HelloPlaceComponentHost0,import3.HelloPlaceComponent,_METADATA);
const List<dynamic> styles_UpdateFailsComponent = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_UpdateFailsComponent0 = const [];
RenderComponentType renderType_UpdateFailsComponent;
class ViewUpdateFailsComponent0 extends DebugAppView<import3.UpdateFailsComponent> {
  ViewUpdateFailsComponent0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewUpdateFailsComponent0,renderType_UpdateFailsComponent,import8.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_UpdateFailsComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    init([],[],[]);
    return null;
  }
}
AppView viewFactory_UpdateFailsComponent0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_UpdateFailsComponent, null)) { (renderType_UpdateFailsComponent = import9.appViewUtils.createRenderComponentType('asset:angular2/lib/src/modules/testing/test/ng_test_bed_test.dart class UpdateFailsComponent - inline template',0,import11.ViewEncapsulation.None,styles_UpdateFailsComponent)); }
  return new ViewUpdateFailsComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_UpdateFailsComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_UpdateFailsComponentHost0 = const [const StaticNodeDebugInfo(const [import3.UpdateFailsComponent],import3.UpdateFailsComponent,const <String, dynamic>{})];
RenderComponentType renderType_UpdateFailsComponentHost;
class ViewUpdateFailsComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import3.UpdateFailsComponent _UpdateFailsComponent_0_3;
  ViewUpdateFailsComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewUpdateFailsComponentHost0,renderType_UpdateFailsComponentHost,import8.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_UpdateFailsComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('update-fails',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_UpdateFailsComponent0(this.injector(0),_appEl_0);
    _UpdateFailsComponent_0_3 = new import3.UpdateFailsComponent();
    _appEl_0.initComponent(_UpdateFailsComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import3.UpdateFailsComponent) && (0 == requestNodeIndex))) { return _UpdateFailsComponent_0_3; }
    return notFoundResult;
  }
}
AppView viewFactory_UpdateFailsComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_UpdateFailsComponentHost, null)) { (renderType_UpdateFailsComponentHost = import9.appViewUtils.createRenderComponentType('',0,import11.ViewEncapsulation.Emulated,styles_UpdateFailsComponentHost)); }
  return new ViewUpdateFailsComponentHost0(parentInjector,declarationEl);
}
const import12.ComponentFactory UpdateFailsComponentNgFactory = const import12.ComponentFactory('update-fails',viewFactory_UpdateFailsComponentHost0,import3.UpdateFailsComponent,_METADATA);
const List<dynamic> styles_ConstructorFailsComponent = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_ConstructorFailsComponent0 = const [];
RenderComponentType renderType_ConstructorFailsComponent;
class ViewConstructorFailsComponent0 extends DebugAppView<import3.ConstructorFailsComponent> {
  ViewConstructorFailsComponent0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewConstructorFailsComponent0,renderType_ConstructorFailsComponent,import8.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_ConstructorFailsComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    init([],[],[]);
    return null;
  }
}
AppView viewFactory_ConstructorFailsComponent0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_ConstructorFailsComponent, null)) { (renderType_ConstructorFailsComponent = import9.appViewUtils.createRenderComponentType('asset:angular2/lib/src/modules/testing/test/ng_test_bed_test.dart class ConstructorFailsComponent - inline template',0,import11.ViewEncapsulation.None,styles_ConstructorFailsComponent)); }
  return new ViewConstructorFailsComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_ConstructorFailsComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_ConstructorFailsComponentHost0 = const [const StaticNodeDebugInfo(const [import3.ConstructorFailsComponent],import3.ConstructorFailsComponent,const <String, dynamic>{})];
RenderComponentType renderType_ConstructorFailsComponentHost;
class ViewConstructorFailsComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import3.ConstructorFailsComponent _ConstructorFailsComponent_0_3;
  ViewConstructorFailsComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewConstructorFailsComponentHost0,renderType_ConstructorFailsComponentHost,import8.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_ConstructorFailsComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('constructor-fails',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_ConstructorFailsComponent0(this.injector(0),_appEl_0);
    _ConstructorFailsComponent_0_3 = new import3.ConstructorFailsComponent();
    _appEl_0.initComponent(_ConstructorFailsComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import3.ConstructorFailsComponent) && (0 == requestNodeIndex))) { return _ConstructorFailsComponent_0_3; }
    return notFoundResult;
  }
}
AppView viewFactory_ConstructorFailsComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_ConstructorFailsComponentHost, null)) { (renderType_ConstructorFailsComponentHost = import9.appViewUtils.createRenderComponentType('',0,import11.ViewEncapsulation.Emulated,styles_ConstructorFailsComponentHost)); }
  return new ViewConstructorFailsComponentHost0(parentInjector,declarationEl);
}
const import12.ComponentFactory ConstructorFailsComponentNgFactory = const import12.ComponentFactory('constructor-fails',viewFactory_ConstructorFailsComponentHost0,import3.ConstructorFailsComponent,_METADATA);
const List<dynamic> styles_OnInitFailsComponent = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_OnInitFailsComponent0 = const [];
RenderComponentType renderType_OnInitFailsComponent;
class ViewOnInitFailsComponent0 extends DebugAppView<import3.OnInitFailsComponent> {
  ViewOnInitFailsComponent0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewOnInitFailsComponent0,renderType_OnInitFailsComponent,import8.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_OnInitFailsComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    init([],[],[]);
    return null;
  }
}
AppView viewFactory_OnInitFailsComponent0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_OnInitFailsComponent, null)) { (renderType_OnInitFailsComponent = import9.appViewUtils.createRenderComponentType('asset:angular2/lib/src/modules/testing/test/ng_test_bed_test.dart class OnInitFailsComponent - inline template',0,import11.ViewEncapsulation.None,styles_OnInitFailsComponent)); }
  return new ViewOnInitFailsComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_OnInitFailsComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_OnInitFailsComponentHost0 = const [const StaticNodeDebugInfo(const [import3.OnInitFailsComponent],import3.OnInitFailsComponent,const <String, dynamic>{})];
RenderComponentType renderType_OnInitFailsComponentHost;
class ViewOnInitFailsComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import3.OnInitFailsComponent _OnInitFailsComponent_0_3;
  ViewOnInitFailsComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewOnInitFailsComponentHost0,renderType_OnInitFailsComponentHost,import8.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_OnInitFailsComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('on-init-fails',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_OnInitFailsComponent0(this.injector(0),_appEl_0);
    _OnInitFailsComponent_0_3 = new import3.OnInitFailsComponent();
    _appEl_0.initComponent(_OnInitFailsComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import3.OnInitFailsComponent) && (0 == requestNodeIndex))) { return _OnInitFailsComponent_0_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    if ((identical(this.cdState, ChangeDetectorState.NeverChecked) && !import9.AppViewUtils.throwOnChanges)) { _OnInitFailsComponent_0_3.ngOnInit(); }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_OnInitFailsComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_OnInitFailsComponentHost, null)) { (renderType_OnInitFailsComponentHost = import9.appViewUtils.createRenderComponentType('',0,import11.ViewEncapsulation.Emulated,styles_OnInitFailsComponentHost)); }
  return new ViewOnInitFailsComponentHost0(parentInjector,declarationEl);
}
const import12.ComponentFactory OnInitFailsComponentNgFactory = const import12.ComponentFactory('on-init-fails',viewFactory_OnInitFailsComponentHost0,import3.OnInitFailsComponent,_METADATA);
const List<dynamic> styles_ChangesFailsComponent = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_ChangesFailsComponent0 = const [const StaticNodeDebugInfo(const [import3.ThrowsWhenValueTrueComponent],import3.ThrowsWhenValueTrueComponent,const <String, dynamic>{})];
RenderComponentType renderType_ChangesFailsComponent;
class ViewChangesFailsComponent0 extends DebugAppView<import3.ChangesFailsComponent> {
  Element _el_0;
  ViewContainer _appEl_0;
  import3.ThrowsWhenValueTrueComponent _ThrowsWhenValueTrueComponent_0_3;
  var _expr_0 = uninitialized;
  ViewChangesFailsComponent0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewChangesFailsComponent0,renderType_ChangesFailsComponent,import8.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_ChangesFailsComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('throws-when-value-true');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,0,0);
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_ThrowsWhenValueTrueComponent0(this.injector(0),_appEl_0);
    _ThrowsWhenValueTrueComponent_0_3 = new import3.ThrowsWhenValueTrueComponent();
    _appEl_0.initComponent(_ThrowsWhenValueTrueComponent_0_3,compView_0);
    compView_0.createComp([],null);
    init([],[_el_0],[]);
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import3.ThrowsWhenValueTrueComponent) && (0 == requestNodeIndex))) { return _ThrowsWhenValueTrueComponent_0_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    dbg(0,0,24);
    final currVal_0 = ctx.value;
    if (import9.checkBinding(_expr_0,currVal_0)) {
      _ThrowsWhenValueTrueComponent_0_3.value = currVal_0;
      _expr_0 = currVal_0;
    }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_ChangesFailsComponent0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_ChangesFailsComponent, null)) { (renderType_ChangesFailsComponent = import9.appViewUtils.createRenderComponentType('asset:angular2/lib/src/modules/testing/test/ng_test_bed_test.dart class ChangesFailsComponent - inline template',0,import11.ViewEncapsulation.None,styles_ChangesFailsComponent)); }
  return new ViewChangesFailsComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_ChangesFailsComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_ChangesFailsComponentHost0 = const [const StaticNodeDebugInfo(const [import3.ChangesFailsComponent],import3.ChangesFailsComponent,const <String, dynamic>{})];
RenderComponentType renderType_ChangesFailsComponentHost;
class ViewChangesFailsComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import3.ChangesFailsComponent _ChangesFailsComponent_0_3;
  ViewChangesFailsComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewChangesFailsComponentHost0,renderType_ChangesFailsComponentHost,import8.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_ChangesFailsComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('changes-fails',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_ChangesFailsComponent0(this.injector(0),_appEl_0);
    _ChangesFailsComponent_0_3 = new import3.ChangesFailsComponent();
    _appEl_0.initComponent(_ChangesFailsComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import3.ChangesFailsComponent) && (0 == requestNodeIndex))) { return _ChangesFailsComponent_0_3; }
    return notFoundResult;
  }
}
AppView viewFactory_ChangesFailsComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_ChangesFailsComponentHost, null)) { (renderType_ChangesFailsComponentHost = import9.appViewUtils.createRenderComponentType('',0,import11.ViewEncapsulation.Emulated,styles_ChangesFailsComponentHost)); }
  return new ViewChangesFailsComponentHost0(parentInjector,declarationEl);
}
const import12.ComponentFactory ChangesFailsComponentNgFactory = const import12.ComponentFactory('changes-fails',viewFactory_ChangesFailsComponentHost0,import3.ChangesFailsComponent,_METADATA);
const List<dynamic> styles_ThrowsWhenValueTrueComponent = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_ThrowsWhenValueTrueComponent0 = const [null];
RenderComponentType renderType_ThrowsWhenValueTrueComponent;
class ViewThrowsWhenValueTrueComponent0 extends DebugAppView<import3.ThrowsWhenValueTrueComponent> {
  Text _text_0;
  var _expr_0 = uninitialized;
  ViewThrowsWhenValueTrueComponent0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewThrowsWhenValueTrueComponent0,renderType_ThrowsWhenValueTrueComponent,import8.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_ThrowsWhenValueTrueComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    _text_0 = new Text('');
    parentRenderNode.append(_text_0);
    dbgElm(_text_0,0,0,0);
    init([],[_text_0],[]);
    return null;
  }
  void detectChangesInternal() {
    this.detectContentChildrenChanges();
    dbg(0,0,0);
    final currVal_0 = import9.interpolate1('VALUE: ',ctx.value,'');
    if (import9.checkBinding(_expr_0,currVal_0)) {
      _text_0.text = currVal_0;
      _expr_0 = currVal_0;
    }
    this.detectViewChildrenChanges();
  }
}
AppView viewFactory_ThrowsWhenValueTrueComponent0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_ThrowsWhenValueTrueComponent, null)) { (renderType_ThrowsWhenValueTrueComponent = import9.appViewUtils.createRenderComponentType('asset:angular2/lib/src/modules/testing/test/ng_test_bed_test.dart class ThrowsWhenValueTrueComponent - inline template',0,import11.ViewEncapsulation.None,styles_ThrowsWhenValueTrueComponent)); }
  return new ViewThrowsWhenValueTrueComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_ThrowsWhenValueTrueComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_ThrowsWhenValueTrueComponentHost0 = const [const StaticNodeDebugInfo(const [import3.ThrowsWhenValueTrueComponent],import3.ThrowsWhenValueTrueComponent,const <String, dynamic>{})];
RenderComponentType renderType_ThrowsWhenValueTrueComponentHost;
class ViewThrowsWhenValueTrueComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import3.ThrowsWhenValueTrueComponent _ThrowsWhenValueTrueComponent_0_3;
  ViewThrowsWhenValueTrueComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl): super(ViewThrowsWhenValueTrueComponentHost0,renderType_ThrowsWhenValueTrueComponentHost,import8.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_ThrowsWhenValueTrueComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('throws-when-value-true',rootSelector,dbg(0,0,0));
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_ThrowsWhenValueTrueComponent0(this.injector(0),_appEl_0);
    _ThrowsWhenValueTrueComponent_0_3 = new import3.ThrowsWhenValueTrueComponent();
    _appEl_0.initComponent(_ThrowsWhenValueTrueComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import3.ThrowsWhenValueTrueComponent) && (0 == requestNodeIndex))) { return _ThrowsWhenValueTrueComponent_0_3; }
    return notFoundResult;
  }
}
AppView viewFactory_ThrowsWhenValueTrueComponentHost0(import6.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_ThrowsWhenValueTrueComponentHost, null)) { (renderType_ThrowsWhenValueTrueComponentHost = import9.appViewUtils.createRenderComponentType('',0,import11.ViewEncapsulation.Emulated,styles_ThrowsWhenValueTrueComponentHost)); }
  return new ViewThrowsWhenValueTrueComponentHost0(parentInjector,declarationEl);
}
const import12.ComponentFactory ThrowsWhenValueTrueComponentNgFactory = const import12.ComponentFactory('throws-when-value-true',viewFactory_ThrowsWhenValueTrueComponentHost0,import3.ThrowsWhenValueTrueComponent,_METADATA);
const _METADATA = const <dynamic>[HelloPlaceComponent, const <dynamic>[], UpdateFailsComponent, const <dynamic>[], ConstructorFailsComponent, const <dynamic>[], OnInitFailsComponent, const <dynamic>[], ChangesFailsComponent, const <dynamic>[], ThrowsWhenValueTrueComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(HelloPlaceComponent, new _ngRef.ReflectionInfo(
const <dynamic>[HelloPlaceComponentNgFactory],
const [],
() => new HelloPlaceComponent())
)
..registerType(UpdateFailsComponent, new _ngRef.ReflectionInfo(
const <dynamic>[UpdateFailsComponentNgFactory],
const [],
() => new UpdateFailsComponent())
)
..registerType(ConstructorFailsComponent, new _ngRef.ReflectionInfo(
const <dynamic>[ConstructorFailsComponentNgFactory],
const [],
() => new ConstructorFailsComponent())
)
..registerType(OnInitFailsComponent, new _ngRef.ReflectionInfo(
const <dynamic>[OnInitFailsComponentNgFactory],
const [],
() => new OnInitFailsComponent(),
const <dynamic>[OnInit])
)
..registerType(ChangesFailsComponent, new _ngRef.ReflectionInfo(
const <dynamic>[ChangesFailsComponentNgFactory],
const [],
() => new ChangesFailsComponent())
)
..registerType(ThrowsWhenValueTrueComponent, new _ngRef.ReflectionInfo(
const <dynamic>[ThrowsWhenValueTrueComponentNgFactory],
const [],
() => new ThrowsWhenValueTrueComponent())
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
}
