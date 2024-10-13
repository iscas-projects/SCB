(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3503 0)
(declare-sort var2530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentLength/240813854 (var3503) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2530-init () var2530)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2530 String) void)
(declare-const null-var3503 var3503)
(declare-const var1658 var3503) ; Statement: r0 := @this: okhttp3.ResponseBody 
(assert (not (= var1658 null-var3503)))
(assert true)
(define-const var1395 Int (contentLength/240813854 var1658)) ; Statement: l0 = virtualinvoke r0.<okhttp3.ResponseBody: long contentLength()>() 
(define-const var3893 Int (ite (> var1395 2147483647) 1 (ite (< var1395 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var2869 Int (cast-from-Int-to-Int var3893)) ; Statement: $i6 = (int) $b1 
 ; Statement: if $i6 <= 0 goto $r1 = virtualinvoke r0.<okhttp3.ResponseBody: okio.BufferedSource source()>() 
(assert (not (<= var2869 0))) ; Negate: Cond: $i6 <= 0  
(define-const var2548 var2530 var2530-init) ; Statement: $r22 = new java.io.IOException 
(define-const var2127 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2127)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2127!1 String)
(assert (= var2127!1 ""))
(assert true)
(define-const var2884 String (append/672562846 var2127!1 "Cannot buffer entire body for content length: ")) ; Statement: $r12 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot buffer entire body for content length: ") 
(declare-const var2127!2 String)
(assert (= var2127!2 (str.++ var2127!1 "Cannot buffer entire body for content length: ")))
(assert true)
(define-const var2504 String (append/-901862667 var2884 var1395)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2884!1 String)
(assert (str.prefixof var2884 var2884!1))
(assert true)
(define-const var834 String (toString/-2075883882 var2504)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2548 var834)) ; Statement: specialinvoke $r22.<java.io.IOException: void <init>(java.lang.String)>($r14) 

(declare-const var2548!1 var2530)
(declare-const var834!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {contentLength/240813854=([okhttp3.ResponseBody], long), cast-from-Int-to-Int=([byte], int), var2530-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3503=okhttp3.ResponseBody, var1658=r0, var1395=l0, var3893=$b1, var2869=$i6, var2530=java.io.IOException, var2548=$r22, var2127=$r21, var2884=$r12, var2504=$r13, var834=$r14}
; {okhttp3.ResponseBody=var3503, r0=var1658, l0=var1395, $b1=var3893, $i6=var2869, java.io.IOException=var2530, $r22=var2548, $r21=var2127, $r12=var2884, $r13=var2504, $r14=var834}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.ResponseBody;	l0 = virtualinvoke r0.<okhttp3.ResponseBody: long contentLength()>();	$b1 = l0 cmp 2147483647L;	$i6 = (int) $b1;	if $i6 <= 0 goto $r1 = virtualinvoke r0.<okhttp3.ResponseBody: okio.BufferedSource source()>();	$r22 = new java.io.IOException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot buffer entire body for content length: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.io.IOException: void <init>(java.lang.String)>($r14);	throw $r22
;block_num 2