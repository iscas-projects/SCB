(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2395 0)
(declare-sort var1911 0)
(declare-sort var204 0)
(declare-sort var2372 0)
(declare-sort var3918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toByteArray/-1484434244 (var2395) (Array Int Int))
(declare-fun var204_defaultCharset/2078635083 () var1911)
(declare-fun var3918_defaultIfNull/1187527895 (var2372 var2372) var2372)
(declare-fun cast-from-var1911-to-var2372 (var1911) var2372)
(declare-fun cast-from-var2372-to-var1911 (var2372) var1911)
(declare-fun <init>/-2015205558 (String (Array Int Int) var1911) void)
(declare-const null-var2395 var2395)
(declare-const null-var1911 var1911)
(declare-const var175 var2395) ; Statement: r1 := @this: cn.hutool.core.io.FastByteArrayOutputStream 
(assert (not (= var175 null-var2395)))
(declare-const var1493 var1911) ; Statement: r2 := @parameter0: java.nio.charset.Charset 
(assert (not (= var1493 null-var1911)))
(define-const var3480 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var2992 (Array Int Int) (toByteArray/-1484434244 var175)) ; Statement: $r6 = virtualinvoke r1.<cn.hutool.core.io.FastByteArrayOutputStream: byte[] toByteArray()>() 
(define-const var1884 var1911 var204_defaultCharset/2078635083) ; Statement: $r3 = staticinvoke <cn.hutool.core.util.CharsetUtil: java.nio.charset.Charset defaultCharset()>() 
(define-const var24 var2372 (var3918_defaultIfNull/1187527895 (cast-from-var1911-to-var2372 var1493) (cast-from-var1911-to-var2372 var1884))) ; Statement: $r4 = staticinvoke <cn.hutool.core.util.ObjectUtil: java.lang.Object defaultIfNull(java.lang.Object,java.lang.Object)>(r2, $r3) 
(define-const var350 var1911 (cast-from-var2372-to-var1911 var24)) ; Statement: $r5 = (java.nio.charset.Charset) $r4 
(assert true)
;(assert (<init>/-2015205558 var3480 var2992 var350)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r6, $r5) 

(declare-const var3480!1 String)
(declare-const var2992!1 (Array Int Int))
(declare-const var350!1 var1911)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), toByteArray/-1484434244=([cn.hutool.core.io.FastByteArrayOutputStream], byte[]), var204_defaultCharset/2078635083=([], java.nio.charset.Charset), var3918_defaultIfNull/1187527895=([java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1911-to-var2372=([java.nio.charset.Charset], java.lang.Object), cast-from-var2372-to-var1911=([java.lang.Object], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void)}
; {var2395=cn.hutool.core.io.FastByteArrayOutputStream, var175=r1, var1911=java.nio.charset.Charset, var1493=r2, var3480=$r0, var2992=$r6, var204=cn.hutool.core.util.CharsetUtil, var1884=$r3, var2372=java.lang.Object, var3918=cn.hutool.core.util.ObjectUtil, var24=$r4, var350=$r5}
; {cn.hutool.core.io.FastByteArrayOutputStream=var2395, r1=var175, java.nio.charset.Charset=var1911, r2=var1493, $r0=var3480, $r6=var2992, cn.hutool.core.util.CharsetUtil=var204, $r3=var1884, java.lang.Object=var2372, cn.hutool.core.util.ObjectUtil=var3918, $r4=var24, $r5=var350}
;seq <java.lang.String: void <init>(byte[],java.nio.charset.Charset)>
;cnt {"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1}
;stmts r1 := @this: cn.hutool.core.io.FastByteArrayOutputStream;	r2 := @parameter0: java.nio.charset.Charset;	$r0 = new java.lang.String;	$r6 = virtualinvoke r1.<cn.hutool.core.io.FastByteArrayOutputStream: byte[] toByteArray()>();	$r3 = staticinvoke <cn.hutool.core.util.CharsetUtil: java.nio.charset.Charset defaultCharset()>();	$r4 = staticinvoke <cn.hutool.core.util.ObjectUtil: java.lang.Object defaultIfNull(java.lang.Object,java.lang.Object)>(r2, $r3);	$r5 = (java.nio.charset.Charset) $r4;	specialinvoke $r0.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r6, $r5);	return $r0
;block_num 1