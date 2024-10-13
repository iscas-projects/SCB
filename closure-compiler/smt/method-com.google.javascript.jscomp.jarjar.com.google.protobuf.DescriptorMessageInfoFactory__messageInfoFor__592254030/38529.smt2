(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3012 0)
(declare-sort var123 0)
(declare-sort var1311 0)
(declare-sort var2387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var123!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3012_descriptorForType/395874834 (ClassObject) var1311)
(declare-fun var3012_convert/-456822282 (ClassObject var1311) var2387)
(declare-const null-var3012 var3012)
(declare-const null-ClassObject ClassObject)
(declare-const var3772 var3012) ; Statement: r10 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory 
(assert (not (= var3772 null-var3012)))
(declare-const var1133 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1133 null-ClassObject)))
(define-const var574 ClassObject var123!class) ; Statement: $r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageV3;" 
(assert true)
(define-const var304 Bool (isAssignableFrom/-1028998700 var574 var1133)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptorForType(java.lang.Class)>(r0) 
(assert (not (= (ite var304 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2412 var1311 (var3012_descriptorForType/395874834 var1133)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptorForType(java.lang.Class)>(r0) 
(define-const var1730 var2387 (var3012_convert/-456822282 var1133 var2412)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfo convert(java.lang.Class,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r0, $r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3012_descriptorForType/395874834=([java.lang.Class], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), var3012_convert/-456822282=([java.lang.Class, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfo)}
; {var3012=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory, var3772=r10, var1133=r0, var123=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var574=$r1, var304=$z0, var1311=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2412=$r2, var2387=com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfo, var1730=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory=var3012, r10=var3772, r0=var1133, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var123, $r1=var574, $z0=var304, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1311, $r2=var2412, com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfo=var2387, $r3=var1730}
;seq 
;cnt {}
;stmts r10 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory;	r0 := @parameter0: java.lang.Class;	$r1 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/GeneratedMessageV3;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 != 0 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptorForType(java.lang.Class)>(r0);	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptorForType(java.lang.Class)>(r0);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorMessageInfoFactory: com.google.javascript.jscomp.jarjar.com.google.protobuf.MessageInfo convert(java.lang.Class,com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)>(r0, $r2);	return $r3
;block_num 2