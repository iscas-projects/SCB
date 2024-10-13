(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var221 0)
(declare-sort var105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toByteArray/-172088756 (var221) (Array Int Int))
(declare-fun <init>/-2015205558 (String (Array Int Int) var105) void)
(declare-const null-var221 var221)
(declare-const null-var105 var105)
(declare-const var1132 var221) ; Statement: r1 := @this: org.apache.commons.io.output.AbstractByteArrayOutputStream 
(assert (not (= var1132 null-var221)))
(declare-const var1988 var105) ; Statement: r2 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1988 null-var105)))
(define-const var428 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var1752 (Array Int Int) (toByteArray/-172088756 var1132)) ; Statement: $r3 = virtualinvoke r1.<org.apache.commons.io.output.AbstractByteArrayOutputStream: byte[] toByteArray()>() 
(assert true)
;(assert (<init>/-2015205558 var428 var1752 var1988)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, r2) 

(declare-const var428!1 String)
(declare-const var1752!1 (Array Int Int))
(declare-const var1988!1 var105)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), toByteArray/-172088756=([org.apache.commons.io.output.AbstractByteArrayOutputStream], byte[]), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var221=org.apache.commons.io.output.AbstractByteArrayOutputStream, var1132=r1, var105=java.nio.charset.Charset, var1988=r2, var428=$r0, var1752=$r3}
; {org.apache.commons.io.output.AbstractByteArrayOutputStream=var221, r1=var1132, java.nio.charset.Charset=var105, r2=var1988, $r0=var428, $r3=var1752}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @this: org.apache.commons.io.output.AbstractByteArrayOutputStream;	r2 := @parameter0: java.nio.charset.Charset;	$r0 = new java.lang.String;	$r3 = virtualinvoke r1.<org.apache.commons.io.output.AbstractByteArrayOutputStream: byte[] toByteArray()>();	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, r2);	return $r0
;block_num 1