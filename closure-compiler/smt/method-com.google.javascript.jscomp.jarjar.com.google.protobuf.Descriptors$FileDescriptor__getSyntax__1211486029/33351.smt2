(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var837 0)
(declare-sort var1417 0)
(declare-sort var3933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1417_access$000/-1552399762 (var1417) String)
(declare-fun proto/-885873705 (var837) var3933)
(declare-fun getSyntax/-49283810 (var3933) String)
(declare-const null-var837 var837)
(declare-const var1417-PROTO3 var1417)
(declare-const var1488 var837) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var1488 null-var837)))
(define-const var1376 var1417 var1417-PROTO3) ; Statement: $r0 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO3> 
(define-const var3672 String (var1417_access$000/-1552399762 var1376)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: java.lang.String access$000(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax)>($r0) 
(define-const var1805 var3933 (proto/-885873705 var1488)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto proto> 
(assert true)
(define-const var2321 String (getSyntax/-49283810 var1805)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto: java.lang.String getSyntax()>() 
(assert true)
(define-const var3199 Bool (= var3672 var2321)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO2> 
(assert (not (= (ite var3199 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3283 var1417 var1417-PROTO3) ; Statement: $r6 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO3> 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1417_access$000/-1552399762=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax], java.lang.String), proto/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto), getSyntax/-49283810=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto], java.lang.String)}
; {var837=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var1488=r1, var1417=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax, var1376=$r0, var3672=$r4, var3933=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto, var1805=$r2, var2321=$r3, var3199=$z0, var3283=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var837, r1=var1488, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax=var1417, $r0=var1376, $r4=var3672, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto=var3933, $r2=var1805, $r3=var2321, $z0=var3199, $r6=var3283}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	$r0 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO3>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: java.lang.String access$000(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax)>($r0);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto proto>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto: java.lang.String getSyntax()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO2>;	$r6 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO3>;	return $r6
;block_num 2