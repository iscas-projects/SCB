(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2667 0)
(declare-sort var1903 0)
(declare-sort var2140 0)
(declare-sort var2984 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getContainingType/-747419587 (var1903) var2140)
(declare-fun metadata/-1217004702 (var2667) var2984)
(declare-fun descriptor/618212945 (var2984) var2140)
(declare-const null-var2667 var2667)
(declare-const null-var1903 var1903)
(declare-const var2972 var2667) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry 
(assert (not (= var2972 null-var2667)))
(declare-const var158 var1903) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var158 null-var1903)))
(assert true)
(define-const var1492 var2140 (getContainingType/-747419587 var158)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(define-const var2903 var2984 (metadata/-1217004702 var2972)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata> 
(define-const var3170 var2140 (descriptor/618212945 var2903)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> 
 ; Statement: if $r4 == $r3 goto return 
(assert (= var1492 var3170)) ; Cond: $r4 == $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), metadata/-1217004702=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry], com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata), descriptor/618212945=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)}
; {var2667=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry, var2972=r1, var1903=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var158=r0, var2140=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1492=$r4, var2984=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata, var2903=$r2, var3170=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry=var2667, r1=var2972, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1903, r0=var158, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2140, $r4=var1492, com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata=var2984, $r2=var2903, $r3=var3170}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata>;	$r3 = $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor>;	if $r4 == $r3 goto return;	return
;block_num 2