(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2640 0)
(declare-sort var378 0)
(declare-sort var2979 0)
(declare-sort var1387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJavaType/-405056255 (var2640) var378)
(declare-fun var2979-init () var2979)
(declare-fun arr-var1387-init () (Array Int var1387))
(declare-fun fullName/-1034588227 (var2640) String)
(declare-fun cast-from-String-to-var1387 (String) var1387)
(declare-fun String_format/1339386452 (String (Array Int var1387)) String)
(declare-fun <init>/-630064361 (var2979 String) void)
(declare-const null-var2640 var2640)
(declare-const var378-MESSAGE var378)
(declare-const null-__Array__Int__var1387__ (Array Int var1387))
(declare-const var1361 var2640) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var1361 null-var2640)))
(assert true)
(define-const var1504 var378 (getJavaType/-405056255 var1361)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType getJavaType()>() 
(define-const var3161 var378 var378-MESSAGE) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType MESSAGE> 
 ; Statement: if $r2 == $r1 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor messageType> 
(assert (not (= var1504 var3161))) ; Negate: Cond: $r2 == $r1  
(define-const var920 var2979 var2979-init) ; Statement: $r4 = new java.lang.UnsupportedOperationException 
(define-const var3633 (Array Int var1387) arr-var1387-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(define-const var936 String (fullName/-1034588227 var1361)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String fullName> 
(declare-const var3633!1 (Array Int var1387))
(assert (not (= var3633!1 null-__Array__Int__var1387__)))
(assert (= (select var3633!1 0) (cast-from-String-to-var1387 var936))) ; Statement: $r5[0] = $r6 
(define-const var1268 String (String_format/1339386452 "This field is not of message type. (%s)" var3633!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("This field is not of message type. (%s)", $r5) 
(assert true)
;(assert (<init>/-630064361 var920 var1268)) ; Statement: specialinvoke $r4.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var920!1 var2979)
(declare-const var1268!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getJavaType/-405056255=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType), var2979-init=([], java.lang.UnsupportedOperationException), arr-var1387-init=([], java.lang.Object[]), fullName/-1034588227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), cast-from-String-to-var1387=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2640=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1361=r0, var378=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType, var1504=$r2, var3161=$r1, var2979=java.lang.UnsupportedOperationException, var920=$r4, var1387=java.lang.Object, var3633=$r5, var936=$r6, var1268=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2640, r0=var1361, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType=var378, $r2=var1504, $r1=var3161, java.lang.UnsupportedOperationException=var2979, $r4=var920, java.lang.Object=var1387, $r5=var3633, $r6=var936, $r7=var1268}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType getJavaType()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType MESSAGE>;	if $r2 == $r1 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor messageType>;	$r4 = new java.lang.UnsupportedOperationException;	$r5 = newarray (java.lang.Object)[1];	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String fullName>;	$r5[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("This field is not of message type. (%s)", $r5);	specialinvoke $r4.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r4
;block_num 2