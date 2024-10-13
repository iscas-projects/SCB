(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1588 0)
(declare-sort var2002 0)
(declare-sort var2549 0)
(declare-sort var3000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun bytes/-413709904 (var1588) (Array Int Int))
(declare-fun offset/1287024874 (var2549) Int)
(declare-fun cast-from-var1588-to-var2549 (var1588) var2549)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3000-init () var3000)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-413709904 (var1588) Int)
(declare-fun error/-215042466 (var1588 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3000 String) void)
(declare-const null-var1588 var1588)
(declare-const null-var2002 var2002)
(declare-const null-Int Int)
(declare-const var1959 var1588) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var1959 null-var1588)))
(declare-const var10 var2002) ; Statement: r4 := @parameter0: java.util.Map 
(assert (not (= var10 null-var2002)))
(declare-const var3487 Int) ; Statement: l4 := @parameter1: long 
(assert (not (= var3487 null-Int)))
(define-const var2758 (Array Int Int) (bytes/-413709904 var1959)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var2526 Int (offset/1287024874 (cast-from-var1588-to-var2549 var1959))) ; Statement: $i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(define-const var370 Int (select var2758 var2526)) ; Statement: $b1 = $r1[$i0] 
(define-const var81 Int (cast-from-Int-to-Int var370)) ; Statement: $i23 = (int) $b1 
(define-const var1850 Int (cast-from-Int-to-Int (- 90))) ; Statement: $i25 = (int) -90 
 ; Statement: if $i23 == $i25 goto $i2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(assert (not (= var81 var1850))) ; Negate: Cond: $i23 == $i25  
(define-const var71 var3000 var3000-init) ; Statement: $r19 = new com.alibaba.fastjson2.JSONException 
(define-const var3593 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3593)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3593!1 String)
(assert (= var3593!1 ""))
(assert true)
(define-const var381 String (append/672562846 var3593!1 "object not support input ")) ; Statement: $r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object not support input ") 
(declare-const var3593!2 String)
(assert (= var3593!2 (str.++ var3593!1 "object not support input ")))
(define-const var1343 Int (type/-413709904 var1959)) ; Statement: $b19 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(assert true)
(define-const var2517 String (error/-215042466 var1959 var1343)) ; Statement: $r10 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String error(byte)>($b19) 
(assert true)
(define-const var3907 String (append/672562846 var381 var2517)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var381!1 String)
(assert (= var381!1 (str.++ var381 var2517)))
(assert true)
(define-const var2258 String (toString/-2075883882 var3907)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var71 var2258)) ; Statement: specialinvoke $r19.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var71!1 var3000)
(declare-const var2258!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var1588-to-var2549=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), cast-from-Int-to-Int=([byte], int), var3000-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte), error/-215042466=([com.alibaba.fastjson2.JSONReaderJSONB, byte], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1588=com.alibaba.fastjson2.JSONReaderJSONB, var1959=r0, var2002=java.util.Map, var10=r4, var3487=l4, var2758=$r1, var2549=com.alibaba.fastjson2.JSONReader, var2526=$i0, var370=$b1, var81=$i23, var1850=$i25, var3000=com.alibaba.fastjson2.JSONException, var71=$r19, var3593=$r18, var381=$r11, var1343=$b19, var2517=$r10, var3907=$r12, var2258=$r13}
; {com.alibaba.fastjson2.JSONReaderJSONB=var1588, r0=var1959, java.util.Map=var2002, r4=var10, l4=var3487, $r1=var2758, com.alibaba.fastjson2.JSONReader=var2549, $i0=var2526, $b1=var370, $i23=var81, $i25=var1850, com.alibaba.fastjson2.JSONException=var3000, $r19=var71, $r18=var3593, $r11=var381, $b19=var1343, $r10=var2517, $r12=var3907, $r13=var2258}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	r4 := @parameter0: java.util.Map;	l4 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i0 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$b1 = $r1[$i0];	$i23 = (int) $b1;	$i25 = (int) -90;	if $i23 == $i25 goto $i2 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r19 = new com.alibaba.fastjson2.JSONException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object not support input ");	$b19 = r0.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$r10 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReaderJSONB: java.lang.String error(byte)>($b19);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r19
;block_num 2