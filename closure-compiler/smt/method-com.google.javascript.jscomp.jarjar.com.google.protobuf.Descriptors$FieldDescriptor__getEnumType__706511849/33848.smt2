(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2423 0)
(declare-sort var2879 0)
(declare-sort var1969 0)
(declare-sort var1807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJavaType/-405056255 (var2423) var2879)
(declare-fun var1969-init () var1969)
(declare-fun arr-var1807-init () (Array Int var1807))
(declare-fun fullName/-1034588227 (var2423) String)
(declare-fun cast-from-String-to-var1807 (String) var1807)
(declare-fun String_format/1339386452 (String (Array Int var1807)) String)
(declare-fun <init>/-630064361 (var1969 String) void)
(declare-const null-var2423 var2423)
(declare-const var2879-ENUM var2879)
(declare-const null-__Array__Int__var1807__ (Array Int var1807))
(declare-const var1887 var2423) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor 
(assert (not (= var1887 null-var2423)))
(assert true)
(define-const var933 var2879 (getJavaType/-405056255 var1887)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType getJavaType()>() 
(define-const var2631 var2879 var2879-ENUM) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType ENUM> 
 ; Statement: if $r2 == $r1 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor enumType> 
(assert (not (= var933 var2631))) ; Negate: Cond: $r2 == $r1  
(define-const var1837 var1969 var1969-init) ; Statement: $r4 = new java.lang.UnsupportedOperationException 
(define-const var2132 (Array Int var1807) arr-var1807-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(define-const var798 String (fullName/-1034588227 var1887)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String fullName> 
(declare-const var2132!1 (Array Int var1807))
(assert (not (= var2132!1 null-__Array__Int__var1807__)))
(assert (= (select var2132!1 0) (cast-from-String-to-var1807 var798))) ; Statement: $r5[0] = $r6 
(define-const var2511 String (String_format/1339386452 "This field is not of enum type. (%s)" var2132!1)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("This field is not of enum type. (%s)", $r5) 
(assert true)
;(assert (<init>/-630064361 var1837 var2511)) ; Statement: specialinvoke $r4.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var1837!1 var1969)
(declare-const var2511!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getJavaType/-405056255=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType), var1969-init=([], java.lang.UnsupportedOperationException), arr-var1807-init=([], java.lang.Object[]), fullName/-1034588227=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor], java.lang.String), cast-from-String-to-var1807=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2423=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor, var1887=r0, var2879=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType, var933=$r2, var2631=$r1, var1969=java.lang.UnsupportedOperationException, var1837=$r4, var1807=java.lang.Object, var2132=$r5, var798=$r6, var2511=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor=var2423, r0=var1887, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType=var2879, $r2=var933, $r1=var2631, java.lang.UnsupportedOperationException=var1969, $r4=var1837, java.lang.Object=var1807, $r5=var2132, $r6=var798, $r7=var2511}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType getJavaType()>();	$r1 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor$JavaType ENUM>;	if $r2 == $r1 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$EnumDescriptor enumType>;	$r4 = new java.lang.UnsupportedOperationException;	$r5 = newarray (java.lang.Object)[1];	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FieldDescriptor: java.lang.String fullName>;	$r5[0] = $r6;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("This field is not of enum type. (%s)", $r5);	specialinvoke $r4.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r4
;block_num 2