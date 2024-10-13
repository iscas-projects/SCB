(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var630 0)
(declare-sort var1304 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var1304_toCharset/318113526 (var630) var630)
(declare-fun <init>/-2015205558 (String (Array Int Int) var630) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var630 var630)
(declare-const var3871 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3871 null-__Array__Int__Int__)))
(declare-const var3978 var630) ; Statement: r2 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3978 null-var630)))
(define-const var192 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var1292 var630 (var1304_toCharset/318113526 var3978)) ; Statement: $r3 = staticinvoke <org.apache.commons.lang3.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r2) 
(assert true)
;(assert (<init>/-2015205558 var192 var3871 var1292)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3) 

(declare-const var192!1 String)
(declare-const var3871!1 (Array Int Int))
(declare-const var1292!1 var630)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var1304_toCharset/318113526=([java.nio.charset.Charset], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var3871=r1, var630=java.nio.charset.Charset, var3978=r2, var192=$r0, var1304=org.apache.commons.lang3.Charsets, var1292=$r3}
; {r1=var3871, java.nio.charset.Charset=var630, r2=var3978, $r0=var192, org.apache.commons.lang3.Charsets=var1304, $r3=var1292}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: byte[];	r2 := @parameter1: java.nio.charset.Charset;	$r0 = new java.lang.String;	$r3 = staticinvoke <org.apache.commons.lang3.Charsets: java.nio.charset.Charset toCharset(java.nio.charset.Charset)>(r2);	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3);	return $r0
;block_num 1