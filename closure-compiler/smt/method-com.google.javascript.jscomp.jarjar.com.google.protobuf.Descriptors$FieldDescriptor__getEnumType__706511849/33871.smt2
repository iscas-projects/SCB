(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2882 0)
(declare-sort var3662 0)
(declare-sort var777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJavaType/-405056255 (var2882) var3662)
(declare-fun enumType/-1034588227 (var2882) var777)
(declare-const null-var2882 var2882)
(declare-const var3662-ENUM var3662)
(declare-const var3218 var2882) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var3218 null-var2882)))
(assert true)
(define-const var2547 var3662 (getJavaType/-405056255 var3218)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType getJavaType()>() 
(define-const var1596 var3662 var3662-ENUM) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType ENUM> 
 ; Statement: if $r2 == $r1 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor enumType> 
(assert (= var2547 var1596)) ; Cond: $r2 == $r1 
(define-const var308 var777 (enumType/-1034588227 var3218)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor enumType> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getJavaType/-405056255=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType), enumType/-1034588227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor)}
; {var2882=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3218=r0, var3662=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType, var2547=$r2, var1596=$r1, var777=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor, var308=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2882, r0=var3218, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType=var3662, $r2=var2547, $r1=var1596, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor=var777, $r3=var308}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType getJavaType()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType ENUM>;	if $r2 == $r1 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor enumType>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor enumType>;	return $r3
;block_num 2