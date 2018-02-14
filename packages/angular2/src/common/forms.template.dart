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
import 'forms.dart';
import 'forms/directives/radio_control_value_accessor.dart' show RadioControlRegistry;
import 'forms/form_builder.dart' show FormBuilder;
import 'forms/directives/radio_control_value_accessor.template.dart' as i0;
import 'forms/form_builder.template.dart' as i1;
import 'forms/directives.template.dart' as i2;
import 'forms/directives/abstract_control_directive.template.dart' as i3;
import 'forms/directives/checkbox_value_accessor.template.dart' as i4;
import 'forms/directives/control_container.template.dart' as i5;
import 'forms/directives/control_value_accessor.template.dart' as i6;
import 'forms/directives/default_value_accessor.template.dart' as i7;
import 'forms/directives/form_interface.template.dart' as i8;
import 'forms/directives/ng_control.template.dart' as i9;
import 'forms/directives/ng_control_group.template.dart' as i10;
import 'forms/directives/ng_control_name.template.dart' as i11;
import 'forms/directives/ng_control_status.template.dart' as i12;
import 'forms/directives/ng_form.template.dart' as i13;
import 'forms/directives/ng_form_control.template.dart' as i14;
import 'forms/directives/ng_form_model.template.dart' as i15;
import 'forms/directives/ng_model.template.dart' as i16;
import 'forms/directives/select_control_value_accessor.template.dart' as i17;
import 'forms/directives/validators.template.dart' as i18;
import 'forms/model.template.dart' as i19;
import 'forms/validators.template.dart' as i20;
export 'forms.dart';
export 'forms/directives.dart' show FORM_DIRECTIVES, RadioButtonState;
export 'forms/directives/abstract_control_directive.dart' show AbstractControlDirective;
export 'forms/directives/checkbox_value_accessor.dart' show CheckboxControlValueAccessor;
export 'forms/directives/control_container.dart' show ControlContainer;
export 'forms/directives/control_value_accessor.dart' show ControlValueAccessor, NG_VALUE_ACCESSOR;
export 'forms/directives/default_value_accessor.dart' show DefaultValueAccessor;
export 'forms/directives/form_interface.dart' show Form;
export 'forms/directives/ng_control.dart' show NgControl;
export 'forms/directives/ng_control_group.dart' show NgControlGroup;
export 'forms/directives/ng_control_name.dart' show NgControlName;
export 'forms/directives/ng_control_status.dart' show NgControlStatus;
export 'forms/directives/ng_form.dart' show NgForm;
export 'forms/directives/ng_form_control.dart' show NgFormControl;
export 'forms/directives/ng_form_model.dart' show NgFormModel;
export 'forms/directives/ng_model.dart' show NgModel;
export 'forms/directives/select_control_value_accessor.dart' show NgSelectOption, SelectControlValueAccessor;
export 'forms/directives/validators.dart' show RequiredValidator, MinLengthValidator, MaxLengthValidator, PatternValidator, Validator, ValidatorFn;
export 'forms/form_builder.dart' show FormBuilder;
export 'forms/model.dart' show AbstractControl, Control, ControlGroup, ControlArray;
export 'forms/validators.dart' show NG_VALIDATORS, NG_ASYNC_VALIDATORS, Validators;

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
i6.initReflector();
i7.initReflector();
i8.initReflector();
i9.initReflector();
i10.initReflector();
i11.initReflector();
i12.initReflector();
i13.initReflector();
i14.initReflector();
i15.initReflector();
i16.initReflector();
i17.initReflector();
i18.initReflector();
i19.initReflector();
i20.initReflector();
}
