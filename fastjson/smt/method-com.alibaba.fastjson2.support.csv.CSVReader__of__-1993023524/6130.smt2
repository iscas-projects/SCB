(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2969 0)
(declare-sort var3741 0)
(declare-sort var2349 0)
(declare-sort var3135 0)
(declare-sort var568 0)
(declare-sort var2411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var568-init () var568)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2411) String)
(declare-fun cast-from-var3741-to-var2411 (var3741) var2411)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var568 String) void)
(declare-const null-var2969 var2969)
(declare-const null-var3741 var3741)
(declare-const null-var2349 var2349)
(declare-const var3135-UTF_16 var3741)
(declare-const var2173 var2969) ; Statement: r5 := @parameter0: java.io.File 
(assert (not (= var2173 null-var2969)))
(declare-const var3784 var3741) ; Statement: r0 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3784 null-var3741)))
(declare-const var2263 var2349) ; Statement: r8 := @parameter2: com.alibaba.fastjson2.reader.ByteArrayValueConsumer 
(assert (not (= var2263 null-var2349)))
(define-const var3273 var3741 var3135-UTF_16) ; Statement: $r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16> 
 ; Statement: if r0 == $r1 goto $r10 = new com.alibaba.fastjson2.JSONException 
(assert (= var3784 var3273)) ; Cond: r0 == $r1 
(define-const var419 var568 var568-init) ; Statement: $r10 = new com.alibaba.fastjson2.JSONException 
(define-const var3555 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3555)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3555!1 String)
(assert (= var3555!1 ""))
(assert true)
(define-const var3601 String (append/672562846 var3555!1 "not support charset : ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support charset : ") 
(declare-const var3555!2 String)
(assert (= var3555!2 (str.++ var3555!1 "not support charset : ")))
(assert true)
(define-const var3886 String (append/-1031950772 var3601 (cast-from-var3741-to-var2411 var3784))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3601!1 String)
(assert (str.prefixof var3601 var3601!1))
(assert true)
(define-const var623 String (toString/-2075883882 var3886)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var419 var623)) ; Statement: specialinvoke $r10.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r14) 

(declare-const var419!1 var568)
(declare-const var623!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var568-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3741-to-var2411=([java.nio.charset.Charset], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2969=java.io.File, var2173=r5, var3741=java.nio.charset.Charset, var3784=r0, var2349=com.alibaba.fastjson2.reader.ByteArrayValueConsumer, var2263=r8, var3135=java.nio.charset.StandardCharsets, var3273=$r1, var568=com.alibaba.fastjson2.JSONException, var419=$r10, var3555=$r11, var3601=$r12, var2411=java.lang.Object, var3886=$r13, var623=$r14}
; {java.io.File=var2969, r5=var2173, java.nio.charset.Charset=var3741, r0=var3784, com.alibaba.fastjson2.reader.ByteArrayValueConsumer=var2349, r8=var2263, java.nio.charset.StandardCharsets=var3135, $r1=var3273, com.alibaba.fastjson2.JSONException=var568, $r10=var419, $r11=var3555, $r12=var3601, java.lang.Object=var2411, $r13=var3886, $r14=var623}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @parameter0: java.io.File;	r0 := @parameter1: java.nio.charset.Charset;	r8 := @parameter2: com.alibaba.fastjson2.reader.ByteArrayValueConsumer;	$r1 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_16>;	if r0 == $r1 goto $r10 = new com.alibaba.fastjson2.JSONException;	$r10 = new com.alibaba.fastjson2.JSONException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support charset : ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r14);	throw $r10
;block_num 2