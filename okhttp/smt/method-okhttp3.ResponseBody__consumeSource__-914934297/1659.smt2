(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2332 0)
(declare-sort var2528 0)
(declare-sort var2363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentLength/240813854 (var2332) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2363-init () var2363)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2363 String) void)
(declare-const null-var2332 var2332)
(declare-const null-var2528 var2528)
(declare-const var353 var2332) ; Statement: r0 := @this: okhttp3.ResponseBody 
(assert (not (= var353 null-var2332)))
(declare-const var686 var2528) ; Statement: r2 := @parameter0: kotlin.jvm.functions.Function1 
(assert (not (= var686 null-var2528)))
(declare-const var3087 var2528) ; Statement: r3 := @parameter1: kotlin.jvm.functions.Function1 
(assert (not (= var3087 null-var2528)))
(assert true)
(define-const var3444 Int (contentLength/240813854 var353)) ; Statement: l0 = virtualinvoke r0.<okhttp3.ResponseBody: long contentLength()>() 
(define-const var689 Int (ite (> var3444 2147483647) 1 (ite (< var3444 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var1746 Int (cast-from-Int-to-Int var689)) ; Statement: $i6 = (int) $b1 
 ; Statement: if $i6 <= 0 goto $r1 = virtualinvoke r0.<okhttp3.ResponseBody: okio.BufferedSource source()>() 
(assert (not (<= var1746 0))) ; Negate: Cond: $i6 <= 0  
(define-const var2654 var2363 var2363-init) ; Statement: $r25 = new java.io.IOException 
(define-const var2545 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2545)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2545!1 String)
(assert (= var2545!1 ""))
(assert true)
(define-const var1362 String (append/672562846 var2545!1 "Cannot buffer entire body for content length: ")) ; Statement: $r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot buffer entire body for content length: ") 
(declare-const var2545!2 String)
(assert (= var2545!2 (str.++ var2545!1 "Cannot buffer entire body for content length: ")))
(assert true)
(define-const var923 String (append/-901862667 var1362 var3444)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1362!1 String)
(assert (str.prefixof var1362 var1362!1))
(assert true)
(define-const var2061 String (toString/-2075883882 var923)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2654 var2061)) ; Statement: specialinvoke $r25.<java.io.IOException: void <init>(java.lang.String)>($r18) 

(declare-const var2654!1 var2363)
(declare-const var2061!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {contentLength/240813854=([okhttp3.ResponseBody], long), cast-from-Int-to-Int=([byte], int), var2363-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2332=okhttp3.ResponseBody, var353=r0, var2528=kotlin.jvm.functions.Function1, var686=r2, var3087=r3, var3444=l0, var689=$b1, var1746=$i6, var2363=java.io.IOException, var2654=$r25, var2545=$r24, var1362=$r16, var923=$r17, var2061=$r18}
; {okhttp3.ResponseBody=var2332, r0=var353, kotlin.jvm.functions.Function1=var2528, r2=var686, r3=var3087, l0=var3444, $b1=var689, $i6=var1746, java.io.IOException=var2363, $r25=var2654, $r24=var2545, $r16=var1362, $r17=var923, $r18=var2061}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.ResponseBody;	r2 := @parameter0: kotlin.jvm.functions.Function1;	r3 := @parameter1: kotlin.jvm.functions.Function1;	l0 = virtualinvoke r0.<okhttp3.ResponseBody: long contentLength()>();	$b1 = l0 cmp 2147483647L;	$i6 = (int) $b1;	if $i6 <= 0 goto $r1 = virtualinvoke r0.<okhttp3.ResponseBody: okio.BufferedSource source()>();	$r25 = new java.io.IOException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot buffer entire body for content length: ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.io.IOException: void <init>(java.lang.String)>($r18);	throw $r25
;block_num 2