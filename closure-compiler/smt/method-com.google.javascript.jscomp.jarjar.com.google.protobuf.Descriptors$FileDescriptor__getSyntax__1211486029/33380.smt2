(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1841 0)
(declare-sort var3112 0)
(declare-sort var2097 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3112_access$000/-1552399762 (var3112) String)
(declare-fun proto/-885873705 (var1841) var2097)
(declare-fun getSyntax/-49283810 (var2097) String)
(declare-const null-var1841 var1841)
(declare-const var3112-PROTO3 var3112)
(declare-const var3112-PROTO2 var3112)
(declare-const var2322 var1841) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var2322 null-var1841)))
(define-const var3446 var3112 var3112-PROTO3) ; Statement: $r0 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO3> 
(define-const var940 String (var3112_access$000/-1552399762 var3446)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: java.lang.String access$000(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax)>($r0) 
(define-const var144 var2097 (proto/-885873705 var2322)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto proto> 
(assert true)
(define-const var265 String (getSyntax/-49283810 var144)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto: java.lang.String getSyntax()>() 
(assert true)
(define-const var3642 Bool (= var940 var265)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO2> 
(assert (= (ite var3642 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1681 var3112 var3112-PROTO2) ; Statement: $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO2> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3112_access$000/-1552399762=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax], java.lang.String), proto/-885873705=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto), getSyntax/-49283810=([com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto], java.lang.String)}
; {var1841=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2322=r1, var3112=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax, var3446=$r0, var940=$r4, var2097=com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto, var144=$r2, var265=$r3, var3642=$z0, var1681=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1841, r1=var2322, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax=var3112, $r0=var3446, $r4=var940, com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto=var2097, $r2=var144, $r3=var265, $z0=var3642, $r5=var1681}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	$r0 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO3>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: java.lang.String access$000(com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax)>($r0);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto proto>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.DescriptorProtos$FileDescriptorProto: java.lang.String getSyntax()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO2>;	$r5 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor$Syntax PROTO2>;	return $r5
;block_num 2