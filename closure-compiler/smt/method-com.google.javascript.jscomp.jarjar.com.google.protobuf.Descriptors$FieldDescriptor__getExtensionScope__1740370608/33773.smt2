(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var982 0)
(declare-sort var3978 0)
(declare-sort var3076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isExtension/-669778521 (var982) Bool)
(declare-fun var3978-init () var3978)
(declare-fun arr-var3076-init () (Array Int var3076))
(declare-fun fullName/-1034588227 (var982) String)
(declare-fun cast-from-String-to-var3076 (String) var3076)
(declare-fun String_format/1339386452 (String (Array Int var3076)) String)
(declare-fun <init>/-630064361 (var3978 String) void)
(declare-const null-var982 var982)
(declare-const null-__Array__Int__var3076__ (Array Int var3076))
(declare-const var3048 var982) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var3048 null-var982)))
(assert true)
(define-const var1111 Bool (isExtension/-669778521 var3048)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isExtension()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor extensionScope> 
(assert (not (not (= (ite var1111 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var347 var3978 var3978-init) ; Statement: $r2 = new java.lang.UnsupportedOperationException 
(define-const var725 (Array Int var3076) arr-var3076-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(define-const var1110 String (fullName/-1034588227 var3048)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String fullName> 
(declare-const var725!1 (Array Int var3076))
(assert (not (= var725!1 null-__Array__Int__var3076__)))
(assert (= (select var725!1 0) (cast-from-String-to-var3076 var1110))) ; Statement: $r3[0] = $r4 
(define-const var865 String (String_format/1339386452 "This field is not an extension. (%s)" var725!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("This field is not an extension. (%s)", $r3) 
(assert true)
;(assert (<init>/-630064361 var347 var865)) ; Statement: specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5) 

(declare-const var347!1 var3978)
(declare-const var865!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isExtension/-669778521=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], boolean), var3978-init=([], java.lang.UnsupportedOperationException), arr-var3076-init=([], java.lang.Object[]), fullName/-1034588227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), cast-from-String-to-var3076=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var982=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var3048=r0, var1111=$z0, var3978=java.lang.UnsupportedOperationException, var347=$r2, var3076=java.lang.Object, var725=$r3, var1110=$r4, var865=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var982, r0=var3048, $z0=var1111, java.lang.UnsupportedOperationException=var3978, $r2=var347, java.lang.Object=var3076, $r3=var725, $r4=var1110, $r5=var865}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: boolean isExtension()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor extensionScope>;	$r2 = new java.lang.UnsupportedOperationException;	$r3 = newarray (java.lang.Object)[1];	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String fullName>;	$r3[0] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("This field is not an extension. (%s)", $r3);	specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r5);	throw $r2
;block_num 2