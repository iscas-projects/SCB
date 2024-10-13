(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var433 0)
(declare-sort var2846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toByteArray/-172088756 (var433) (Array Int Int))
(declare-fun var2846_defaultCharset/657962044 () var2846)
(declare-fun <init>/-2015205558 (String (Array Int Int) var2846) void)
(declare-const null-var433 var433)
(declare-const var190 var433) ; Statement: r1 := @this: org.apache.commons.io.output.AbstractByteArrayOutputStream 
(assert (not (= var190 null-var433)))
(define-const var93 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var2600 (Array Int Int) (toByteArray/-172088756 var190)) ; Statement: $r3 = virtualinvoke r1.<org.apache.commons.io.output.AbstractByteArrayOutputStream: byte[] toByteArray()>() 
(define-const var564 var2846 var2846_defaultCharset/657962044) ; Statement: $r2 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>() 
(assert true)
;(assert (<init>/-2015205558 var93 var2600 var564)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, $r2) 

(declare-const var93!1 String)
(declare-const var2600!1 (Array Int Int))
(declare-const var564!1 var2846)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), toByteArray/-172088756=([org.apache.commons.io.output.AbstractByteArrayOutputStream], byte[]), var2846_defaultCharset/657962044=([], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var433=org.apache.commons.io.output.AbstractByteArrayOutputStream, var190=r1, var93=$r0, var2600=$r3, var2846=java.nio.charset.Charset, var564=$r2}
; {org.apache.commons.io.output.AbstractByteArrayOutputStream=var433, r1=var190, $r0=var93, $r3=var2600, java.nio.charset.Charset=var2846, $r2=var564}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @this: org.apache.commons.io.output.AbstractByteArrayOutputStream;	$r0 = new java.lang.String;	$r3 = virtualinvoke r1.<org.apache.commons.io.output.AbstractByteArrayOutputStream: byte[] toByteArray()>();	$r2 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>();	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, $r2);	return $r0
;block_num 1