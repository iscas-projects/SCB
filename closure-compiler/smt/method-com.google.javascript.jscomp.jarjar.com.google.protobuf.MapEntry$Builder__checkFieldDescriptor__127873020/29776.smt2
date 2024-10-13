(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var29 0)
(declare-sort var3132 0)
(declare-sort var2060 0)
(declare-sort var1074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getContainingType/-747419587 (var3132) var2060)
(declare-fun metadata/1512329273 (var29) var1074)
(declare-fun descriptor/618212945 (var1074) var2060)
(declare-const null-var29 var29)
(declare-const null-var3132 var3132)
(declare-const var1684 var29) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder 
(assert (not (= var1684 null-var29)))
(declare-const var922 var3132) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var922 null-var3132)))
(assert true)
(define-const var84 var2060 (getContainingType/-747419587 var922)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>() 
(define-const var3356 var1074 (metadata/1512329273 var1684)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata> 
(define-const var2166 var2060 (descriptor/618212945 var3356)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor> 
 ; Statement: if $r4 == $r3 goto return 
(assert (= var84 var2166)) ; Cond: $r4 == $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getContainingType/-747419587=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), metadata/1512329273=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder], com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata), descriptor/618212945=([com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)}
; {var29=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder, var1684=r1, var3132=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var922=r0, var2060=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var84=$r4, var1074=com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata, var3356=$r2, var2166=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder=var29, r1=var1684, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var3132, r0=var922, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2060, $r4=var84, com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata=var1074, $r2=var3356, $r3=var2166}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getContainingType()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata metadata>;	$r3 = $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.MapEntry$Metadata: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor descriptor>;	if $r4 == $r3 goto return;	return
;block_num 2