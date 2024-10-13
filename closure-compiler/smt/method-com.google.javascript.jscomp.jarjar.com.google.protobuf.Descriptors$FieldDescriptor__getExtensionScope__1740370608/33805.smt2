(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1884 0)
(declare-sort var3961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isExtension/-669778521 (var1884) Bool)
(declare-fun extensionScope/-1034588227 (var1884) var3961)
(declare-const null-var1884 var1884)
(declare-const var3345 var1884) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var3345 null-var1884)))
(assert true)
(define-const var2306 Bool (isExtension/-669778521 var3345)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isExtension()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor extensionScope> 
(assert (not (= (ite var2306 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2131 var3961 (extensionScope/-1034588227 var3345)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor extensionScope> 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isExtension/-669778521=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), extensionScope/-1034588227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor)}
; {var1884=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3345=r0, var2306=$z0, var3961=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var2131=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var1884, r0=var3345, $z0=var2306, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var3961, $r1=var2131}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isExtension()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor extensionScope>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor extensionScope>;	return $r1
;block_num 2