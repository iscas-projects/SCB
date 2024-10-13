(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1434 0)
(declare-sort var185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getByteArray/456971042 (var1434) (Array Int Int))
(declare-fun <init>/-2015205558 (String (Array Int Int) var185) void)
(declare-const null-var1434 var1434)
(declare-const null-var185 var185)
(declare-const var3386 var1434) ; Statement: r1 := @this: org.apache.commons.io.build.AbstractOrigin 
(assert (not (= var3386 null-var1434)))
(declare-const var830 var185) ; Statement: r2 := @parameter0: java.nio.charset.Charset 
(assert (not (= var830 null-var185)))
(define-const var2915 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var2686 (Array Int Int) (getByteArray/456971042 var3386)) ; Statement: $r3 = virtualinvoke r1.<org.apache.commons.io.build.AbstractOrigin: byte[] getByteArray()>() 
(assert true)
;(assert (<init>/-2015205558 var2915 var2686 var830)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, r2) 

(declare-const var2915!1 String)
(declare-const var2686!1 (Array Int Int))
(declare-const var830!1 var185)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), getByteArray/456971042=([org.apache.commons.io.build.AbstractOrigin], byte[]), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var1434=org.apache.commons.io.build.AbstractOrigin, var3386=r1, var185=java.nio.charset.Charset, var830=r2, var2915=$r0, var2686=$r3}
; {org.apache.commons.io.build.AbstractOrigin=var1434, r1=var3386, java.nio.charset.Charset=var185, r2=var830, $r0=var2915, $r3=var2686}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @this: org.apache.commons.io.build.AbstractOrigin;	r2 := @parameter0: java.nio.charset.Charset;	$r0 = new java.lang.String;	$r3 = virtualinvoke r1.<org.apache.commons.io.build.AbstractOrigin: byte[] getByteArray()>();	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r3, r2);	return $r0
;block_num 1