(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2438 0)
(declare-sort var3862 0)
(declare-sort var2360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJavaType/-405056255 (var2438) var3862)
(declare-fun messageType/-1034588227 (var2438) var2360)
(declare-const null-var2438 var2438)
(declare-const var3862-MESSAGE var3862)
(declare-const var531 var2438) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var531 null-var2438)))
(assert true)
(define-const var1159 var3862 (getJavaType/-405056255 var531)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType getJavaType()>() 
(define-const var3689 var3862 var3862-MESSAGE) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType MESSAGE> 
 ; Statement: if $r2 == $r1 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor messageType> 
(assert (= var1159 var3689)) ; Cond: $r2 == $r1 
(define-const var3342 var2360 (messageType/-1034588227 var531)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor messageType> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getJavaType/-405056255=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType), messageType/-1034588227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)}
; {var2438=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var531=r0, var3862=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType, var1159=$r2, var3689=$r1, var2360=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var3342=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2438, r0=var531, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType=var3862, $r2=var1159, $r1=var3689, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2360, $r3=var3342}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType getJavaType()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType MESSAGE>;	if $r2 == $r1 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor messageType>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor messageType>;	return $r3
;block_num 2