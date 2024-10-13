(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2286 0)
(declare-sort var2484 0)
(declare-sort var524 0)
(declare-sort var3768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2484_getLiteType/1707797790 (var2484) var3768)
(declare-fun var2286_isValidType/-1829317390 (var3768 var524) Bool)
(declare-const null-var2286 var2286)
(declare-const null-var2484 var2484)
(declare-const null-var524 var524)
(declare-const var195 var2286) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet 
(assert (not (= var195 null-var2286)))
(declare-const var441 var2484) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite 
(assert (not (= var441 null-var2484)))
(declare-const var2960 var524) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2960 null-var524)))
(define-const var3840 var3768 (var2484_getLiteType/1707797790 var441)) ; Statement: $r2 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>() 
(define-const var1174 Bool (var2286_isValidType/-1829317390 var3840 var2960)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet: boolean isValidType(com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType,java.lang.Object)>($r2, r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1174 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2484_getLiteType/1707797790=([com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite], com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType), var2286_isValidType/-1829317390=([com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, java.lang.Object], boolean)}
; {var2286=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet, var195=r11, var2484=com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite, var441=r0, var524=java.lang.Object, var2960=r1, var3768=com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType, var3840=$r2, var1174=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet=var2286, r11=var195, com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite=var2484, r0=var441, java.lang.Object=var524, r1=var2960, com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType=var3768, $r2=var3840, $z0=var1174}
;seq 
;cnt {}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite;	r1 := @parameter1: java.lang.Object;	$r2 = interfaceinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet$FieldDescriptorLite: com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType getLiteType()>();	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.FieldSet: boolean isValidType(com.google.javascript.jscomp.jarjar.com.google.protobuf.WireFormat$FieldType,java.lang.Object)>($r2, r1);	if $z0 != 0 goto return;	return
;block_num 2