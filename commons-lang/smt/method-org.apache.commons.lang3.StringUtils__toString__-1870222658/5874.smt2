(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var164 0)
(declare-sort var2322 0)
(declare-sort var82 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var82_toCharset/-2067200713 (String) var2322)
(declare-fun <init>/-2015205558 (String (Array Int Int) var2322) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var1809 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var1809 null-__Array__Int__Int__)))
(declare-const var2933 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2933 null-String)))
(define-const var2182 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var1055 var2322 (var82_toCharset/-2067200713 var2933)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.Charsets: java.nio.charset.Charset toCharset(java.lang.String)>(r2) 
(assert true)
;(assert (<init>/-2015205558 var2182 var1809 var1055)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3) 

(declare-const var2182!1 String)
(declare-const var1809!1 (Array Int Int))
(declare-const var1055!1 var2322)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var82_toCharset/-2067200713=([java.lang.String], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1809=r1, var2933=r2, var164=null_type, var2182=$r0, var2322=java.nio.charset.Charset, var82=org.apache.commons.lang3.Charsets, var1055=$r3}
; {r1=var1809, r2=var2933, null_type=var164, $r0=var2182, java.nio.charset.Charset=var2322, org.apache.commons.lang3.Charsets=var82, $r3=var1055}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: byte[];	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.String;	$r3 = staticinvoke <org.apache.commons.lang3.Charsets: java.nio.charset.Charset toCharset(java.lang.String)>(r2);	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3);	return $r0
;block_num 1