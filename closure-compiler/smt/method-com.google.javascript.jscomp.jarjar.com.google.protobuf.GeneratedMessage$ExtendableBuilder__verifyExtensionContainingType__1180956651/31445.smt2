(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2167 0)
(declare-sort var3961 0)
(declare-sort var1281 0)
(declare-sort var3784 0)
(declare-sort var3050 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/-634664744 (var3961) var1281)
(declare-fun getContainingType/-747419587 (var1281) var3784)
(declare-fun getDescriptorForType/-1135273641 (var3050) var3784)
(declare-fun cast-from-var2167-to-var3050 (var2167) var3050)
(declare-const null-var2167 var2167)
(declare-const null-var3961 var3961)
(declare-const var502 var2167) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableBuilder 
(assert (not (= var502 null-var2167)))
(declare-const var164 var3961) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension 
(assert (not (= var164 null-var3961)))
(assert true)
(define-const var1436 var1281 (getDescriptor/-634664744 var164)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor getDescriptor()>() 
(assert true)
(define-const var656 var3784 (getContainingType/-747419587 var1436)) ; Statement: $r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(assert true)
(define-const var1442 var3784 (getDescriptorForType/-1135273641 (cast-from-var2167-to-var3050 var502))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableBuilder: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>() 
 ; Statement: if $r4 == $r3 goto return 
(assert (= var656 var1442)) ; Cond: $r4 == $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/-634664744=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor), getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), getDescriptorForType/-1135273641=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), cast-from-var2167-to-var3050=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableBuilder], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder)}
; {var2167=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableBuilder, var502=r2, var3961=com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension, var164=r0, var1281=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1436=$r1, var3784=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var656=$r4, var3050=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder, var1442=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableBuilder=var2167, r2=var502, com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension=var3961, r0=var164, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1281, $r1=var1436, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3784, $r4=var656, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$Builder=var3050, $r3=var1442}
;seq 
;cnt {}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableBuilder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Extension: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor getDescriptor()>();	$r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage$ExtendableBuilder: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptorForType()>();	if $r4 == $r3 goto return;	return
;block_num 2