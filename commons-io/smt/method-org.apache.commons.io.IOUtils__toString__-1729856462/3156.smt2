(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var983 0)
(declare-sort var804 0)
(declare-sort var2949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var2949_toCharset/714237080 (String) var804)
(declare-fun <init>/-2015205558 (String (Array Int Int) var804) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var2777 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var2777 null-__Array__Int__Int__)))
(declare-const var3180 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3180 null-String)))
(define-const var2754 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var1956 var804 (var2949_toCharset/714237080 var3180)) ; Statement: $r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.lang.String)>(r2) 
(assert true)
;(assert (<init>/-2015205558 var2754 var2777 var1956)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3) 

(declare-const var2754!1 String)
(declare-const var2777!1 (Array Int Int))
(declare-const var1956!1 var804)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), var2949_toCharset/714237080=([java.lang.String], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var2777=r1, var3180=r2, var983=null_type, var2754=$r0, var804=java.nio.charset.Charset, var2949=org.apache.commons.io.Charsets, var1956=$r3}
; {r1=var2777, r2=var3180, null_type=var983, $r0=var2754, java.nio.charset.Charset=var804, org.apache.commons.io.Charsets=var2949, $r3=var1956}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @parameter0: byte[];	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.String;	$r3 = staticinvoke <org.apache.commons.io.Charsets: java.nio.charset.Charset toCharset(java.lang.String)>(r2);	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>(r1, $r3);	return $r0
;block_num 1