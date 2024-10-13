(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var975 0)
(declare-sort var793 0)
(declare-sort var995 0)
(declare-sort var2614 0)
(declare-sort var1580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/-634664744 (var793) var995)
(declare-fun getContainingType/-747419587 (var995) var2614)
(declare-fun getDescriptorForType/1666582004 (var1580) var2614)
(declare-fun cast-from-var975-to-var1580 (var975) var1580)
(declare-const null-var975 var975)
(declare-const null-var793 var793)
(declare-const var3862 var975) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableBuilder 
(assert (not (= var3862 null-var975)))
(declare-const var177 var793) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension 
(assert (not (= var177 null-var793)))
(assert true)
(define-const var3214 var995 (getDescriptor/-634664744 var177)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor getDescriptor()>() 
(assert true)
(define-const var71 var2614 (getContainingType/-747419587 var3214)) ; Statement: $r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(assert true)
(define-const var2689 var2614 (getDescriptorForType/1666582004 (cast-from-var975-to-var1580 var3862))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableBuilder: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>() 
 ; Statement: if $r4 == $r3 goto return 
(assert (= var71 var2689)) ; Cond: $r4 == $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/-634664744=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getDescriptorForType/1666582004=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), cast-from-var975-to-var1580=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableBuilder], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder)}
; {var975=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableBuilder, var3862=r2, var793=com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension, var177=r0, var995=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3214=$r1, var2614=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var71=$r4, var1580=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder, var2689=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableBuilder=var975, r2=var3862, com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension=var793, r0=var177, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var995, $r1=var3214, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2614, $r4=var71, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$Builder=var1580, $r3=var2689}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableBuilder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor getDescriptor()>();	$r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3$ExtendableBuilder: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>();	if $r4 == $r3 goto return;	return
;block_num 2