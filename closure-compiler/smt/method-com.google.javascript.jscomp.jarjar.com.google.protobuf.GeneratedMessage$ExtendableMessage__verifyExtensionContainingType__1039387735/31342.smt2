(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var148 0)
(declare-sort var2300 0)
(declare-sort var3244 0)
(declare-sort var1345 0)
(declare-sort var1416 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/-634664744 (var2300) var3244)
(declare-fun getContainingType/-747419587 (var3244) var1345)
(declare-fun getDescriptorForType/737344896 (var1416) var1345)
(declare-fun cast-from-var148-to-var1416 (var148) var1416)
(declare-const null-var148 var148)
(declare-const null-var2300 var2300)
(declare-const var2690 var148) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableMessage 
(assert (not (= var2690 null-var148)))
(declare-const var1687 var2300) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension 
(assert (not (= var1687 null-var2300)))
(assert true)
(define-const var2705 var3244 (getDescriptor/-634664744 var1687)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor getDescriptor()>() 
(assert true)
(define-const var551 var1345 (getContainingType/-747419587 var2705)) ; Statement: $r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(assert true)
(define-const var2011 var1345 (getDescriptorForType/737344896 (cast-from-var148-to-var1416 var2690))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableMessage: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>() 
 ; Statement: if $r4 == $r3 goto return 
(assert (= var551 var2011)) ; Cond: $r4 == $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/-634664744=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getDescriptorForType/737344896=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), cast-from-var148-to-var1416=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableMessage], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage)}
; {var148=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableMessage, var2690=r2, var2300=com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension, var1687=r0, var3244=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var2705=$r1, var1345=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var551=$r4, var1416=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var2011=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableMessage=var148, r2=var2690, com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension=var2300, r0=var1687, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3244, $r1=var2705, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1345, $r4=var551, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var1416, $r3=var2011}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableMessage;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor getDescriptor()>();	$r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableMessage: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>();	if $r4 == $r3 goto return;	return
;block_num 2