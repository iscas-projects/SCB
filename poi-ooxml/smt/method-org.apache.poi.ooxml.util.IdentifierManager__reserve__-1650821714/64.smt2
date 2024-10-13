(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1084 0)
(declare-sort var342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lowerbound/-65247735 (var1084) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var342-init () var342)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(declare-fun upperbound/-65247735 (var1084) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var342 String) void)
(declare-const null-var1084 var1084)
(declare-const null-Int Int)
(declare-const var921 var1084) ; Statement: r0 := @this: org.apache.poi.ooxml.util.IdentifierManager 
(assert (not (= var921 null-var1084)))
(declare-const var150 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var150 null-Int)))
(define-const var1359 Int (lowerbound/-65247735 var921)) ; Statement: $l1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound> 
(define-const var1055 Int (ite (> var150 var1359) 1 (ite (< var150 var1359) (- 1) 0))) ; Statement: $b2 = l0 cmp $l1 
(define-const var1336 Int (cast-from-Int-to-Int var1055)) ; Statement: $i49 = (int) $b2 
 ; Statement: if $i49 < 0 goto $r25 = new java.lang.IllegalArgumentException 
(assert (< var1336 0)) ; Cond: $i49 < 0 
(define-const var901 var342 var342-init) ; Statement: $r25 = new java.lang.IllegalArgumentException 
(define-const var490 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var490)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var490!1 String)
(assert (= var490!1 ""))
(assert true)
(define-const var1611 String (append/672562846 var490!1 "Value for parameter \u0027id\u0027 was out of bounds, had ")) ; Statement: $r3 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value for parameter \'id\' was out of bounds, had ") 
(declare-const var490!2 String)
(assert (= var490!2 (str.++ var490!1 "Value for parameter \u0027id\u0027 was out of bounds, had ")))
(assert true)
(define-const var1407 String (append/-901862667 var1611 var150)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1611!1 String)
(assert (str.prefixof var1611 var1611!1))
(assert true)
(define-const var2465 String (append/672562846 var1407 ", but should be within [")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but should be within [") 
(declare-const var1407!1 String)
(assert (= var1407!1 (str.++ var1407 ", but should be within [")))
(define-const var143 Int (lowerbound/-65247735 var921)) ; Statement: $l3 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound> 
(assert true)
(define-const var56 String (append/-901862667 var2465 var143)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var2465!1 String)
(assert (str.prefixof var2465 var2465!1))
(assert true)
(define-const var3576 String (append/672562846 var56 ":")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var56!1 String)
(assert (= var56!1 (str.++ var56 ":")))
(define-const var2014 Int (upperbound/-65247735 var921)) ; Statement: $l4 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long upperbound> 
(assert true)
(define-const var1981 String (append/-901862667 var3576 var2014)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3576!1 String)
(assert (str.prefixof var3576 var3576!1))
(assert true)
(define-const var3224 String (append/672562846 var1981 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1981!1 String)
(assert (= var1981!1 (str.++ var1981 "]")))
(assert true)
(define-const var1837 String (toString/-2075883882 var3224)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var901 var1837)) ; Statement: specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var901!1 var342)
(declare-const var1837!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {lowerbound/-65247735=([org.apache.poi.ooxml.util.IdentifierManager], long), cast-from-Int-to-Int=([byte], int), var342-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), upperbound/-65247735=([org.apache.poi.ooxml.util.IdentifierManager], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1084=org.apache.poi.ooxml.util.IdentifierManager, var921=r0, var150=l0, var1359=$l1, var1055=$b2, var1336=$i49, var342=java.lang.IllegalArgumentException, var901=$r25, var490=$r24, var1611=$r3, var1407=$r4, var2465=$r5, var143=$l3, var56=$r6, var3576=$r7, var2014=$l4, var1981=$r8, var3224=$r9, var1837=$r10}
; {org.apache.poi.ooxml.util.IdentifierManager=var1084, r0=var921, l0=var150, $l1=var1359, $b2=var1055, $i49=var1336, java.lang.IllegalArgumentException=var342, $r25=var901, $r24=var490, $r3=var1611, $r4=var1407, $r5=var2465, $l3=var143, $r6=var56, $r7=var3576, $l4=var2014, $r8=var1981, $r9=var3224, $r10=var1837}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.util.IdentifierManager;	l0 := @parameter0: long;	$l1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound>;	$b2 = l0 cmp $l1;	$i49 = (int) $b2;	if $i49 < 0 goto $r25 = new java.lang.IllegalArgumentException;	$r25 = new java.lang.IllegalArgumentException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value for parameter \'id\' was out of bounds, had ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but should be within [");	$l3 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$l4 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long upperbound>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r25
;block_num 2