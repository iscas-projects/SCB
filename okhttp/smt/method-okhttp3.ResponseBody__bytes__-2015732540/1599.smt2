(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1684 0)
(declare-sort var3753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun contentLength/240813854 (var1684) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3753-init () var3753)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3753 String) void)
(declare-const null-var1684 var1684)
(declare-const var1988 var1684) ; Statement: r0 := @this: okhttp3.ResponseBody 
(assert (not (= var1988 null-var1684)))
(assert true)
(define-const var3632 Int (contentLength/240813854 var1988)) ; Statement: l0 = virtualinvoke r0.<okhttp3.ResponseBody: long contentLength()>() 
(define-const var1963 Int (ite (> var3632 2147483647) 1 (ite (< var3632 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var2686 Int (cast-from-Int-to-Int var1963)) ; Statement: $i6 = (int) $b1 
 ; Statement: if $i6 <= 0 goto $r1 = virtualinvoke r0.<okhttp3.ResponseBody: okio.BufferedSource source()>() 
(assert (not (<= var2686 0))) ; Negate: Cond: $i6 <= 0  
(define-const var557 var3753 var3753-init) ; Statement: $r22 = new java.io.IOException 
(define-const var1774 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1774)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1774!1 String)
(assert (= var1774!1 ""))
(assert true)
(define-const var2283 String (append/672562846 var1774!1 "Cannot buffer entire body for content length: ")) ; Statement: $r12 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot buffer entire body for content length: ") 
(declare-const var1774!2 String)
(assert (= var1774!2 (str.++ var1774!1 "Cannot buffer entire body for content length: ")))
(assert true)
(define-const var3898 String (append/-901862667 var2283 var3632)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2283!1 String)
(assert (str.prefixof var2283 var2283!1))
(assert true)
(define-const var461 String (toString/-2075883882 var3898)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var557 var461)) ; Statement: specialinvoke $r22.<java.io.IOException: void <init>(java.lang.String)>($r14) 

(declare-const var557!1 var3753)
(declare-const var461!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {contentLength/240813854=([okhttp3.ResponseBody], long), cast-from-Int-to-Int=([byte], int), var3753-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1684=okhttp3.ResponseBody, var1988=r0, var3632=l0, var1963=$b1, var2686=$i6, var3753=java.io.IOException, var557=$r22, var1774=$r21, var2283=$r12, var3898=$r13, var461=$r14}
; {okhttp3.ResponseBody=var1684, r0=var1988, l0=var3632, $b1=var1963, $i6=var2686, java.io.IOException=var3753, $r22=var557, $r21=var1774, $r12=var2283, $r13=var3898, $r14=var461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.ResponseBody;	l0 = virtualinvoke r0.<okhttp3.ResponseBody: long contentLength()>();	$b1 = l0 cmp 2147483647L;	$i6 = (int) $b1;	if $i6 <= 0 goto $r1 = virtualinvoke r0.<okhttp3.ResponseBody: okio.BufferedSource source()>();	$r22 = new java.io.IOException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot buffer entire body for content length: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.io.IOException: void <init>(java.lang.String)>($r14);	throw $r22
;block_num 2