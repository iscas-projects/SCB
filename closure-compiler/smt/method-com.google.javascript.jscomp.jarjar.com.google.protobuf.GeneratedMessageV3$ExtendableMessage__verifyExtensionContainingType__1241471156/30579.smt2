(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3052 0)
(declare-sort var701 0)
(declare-sort var3801 0)
(declare-sort var3796 0)
(declare-sort var3634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/-634664744 (var701) var3801)
(declare-fun getContainingType/-747419587 (var3801) var3796)
(declare-fun getDescriptorForType/1675941661 (var3634) var3796)
(declare-fun cast-from-var3052-to-var3634 (var3052) var3634)
(declare-const null-var3052 var3052)
(declare-const null-var701 var701)
(declare-const var2844 var3052) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableMessage 
(assert (not (= var2844 null-var3052)))
(declare-const var1406 var701) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension 
(assert (not (= var1406 null-var701)))
(assert true)
(define-const var1475 var3801 (getDescriptor/-634664744 var1406)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor getDescriptor()>() 
(assert true)
(define-const var1422 var3796 (getContainingType/-747419587 var1475)) ; Statement: $r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(assert true)
(define-const var1822 var3796 (getDescriptorForType/1675941661 (cast-from-var3052-to-var3634 var2844))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableMessage: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>() 
 ; Statement: if $r4 == $r3 goto return 
(assert (= var1422 var1822)) ; Cond: $r4 == $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/-634664744=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getDescriptorForType/1675941661=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), cast-from-var3052-to-var3634=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableMessage], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3)}
; {var3052=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableMessage, var2844=r2, var701=com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension, var1406=r0, var3801=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1475=$r1, var3796=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1422=$r4, var3634=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var1822=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableMessage=var3052, r2=var2844, com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension=var701, r0=var1406, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3801, $r1=var1475, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3796, $r4=var1422, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3634, $r3=var1822}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableMessage;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor getDescriptor()>();	$r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableMessage: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>();	if $r4 == $r3 goto return;	return
;block_num 2