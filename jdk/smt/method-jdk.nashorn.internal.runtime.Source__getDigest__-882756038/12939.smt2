(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var687 0)
(declare-sort var2663 0)
(declare-sort var295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getDigestBytes/36625466 (var687) (Array Int Int))
(declare-fun <init>/-2015205558 (String (Array Int Int) var2663) void)
(declare-const null-var687 var687)
(declare-const var295-US_ASCII var2663)
(declare-const var3544 var687) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.Source 
(assert (not (= var3544 null-var687)))
(define-const var2659 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var1121 (Array Int Int) (getDigestBytes/36625466 var3544)) ; Statement: $r3 = specialinvoke r1.<jdk.nashorn.internal.runtime.Source: byte[] getDigestBytes()>() 
(define-const var3006 var2663 var295-US_ASCII) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
;(assert (<init>/-2015205558 var2659 var1121 var3006)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, $r2) 

(declare-const var2659!1 String)
(declare-const var1121!1 (Array Int Int))
(declare-const var3006!1 var2663)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), getDigestBytes/36625466=([jdk.nashorn.internal.runtime.Source], byte[]), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var687=jdk.nashorn.internal.runtime.Source, var3544=r1, var2659=$r0, var1121=$r3, var2663=java.nio.charset.Charset, var295=java.nio.charset.StandardCharsets, var3006=$r2}
; {jdk.nashorn.internal.runtime.Source=var687, r1=var3544, $r0=var2659, $r3=var1121, java.nio.charset.Charset=var2663, java.nio.charset.StandardCharsets=var295, $r2=var3006}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.Source;	$r0 = new java.lang.String;	$r3 = specialinvoke r1.<jdk.nashorn.internal.runtime.Source: byte[] getDigestBytes()>();	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, $r2);	return $r0
;block_num 1