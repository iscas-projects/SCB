(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var364-init () var364)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1934569527 (var364 String) void)
(declare-const null-Int Int)
(declare-const var2849 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var2849 null-Int)))
(define-const var1902 Int (ite (> var2849 2147483647) 1 (ite (< var2849 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var285 Int (cast-from-Int-to-Int var1902)) ; Statement: $i4 = (int) $b1 
 ; Statement: if $i4 >= 0 goto $r7 = new org.apache.poi.ooxml.POIXMLException 
(assert (>= var285 0)) ; Cond: $i4 >= 0 
(define-const var2894 var364 var364-init) ; Statement: $r7 = new org.apache.poi.ooxml.POIXMLException 
(define-const var1882 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1882)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1882!1 String)
(assert (= var1882!1 ""))
(assert true)
(define-const var1694 String (append/672562846 var1882!1 "val (")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("val (") 
(declare-const var1882!2 String)
(assert (= var1882!2 (str.++ var1882!1 "val (")))
(assert true)
(define-const var2867 String (append/-901862667 var1694 var2849)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1694!1 String)
(assert (str.prefixof var1694 var1694!1))
(assert true)
(define-const var1628 String (append/672562846 var2867 ") can\u0027t be cast to int")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") can\'t be cast to int") 
(declare-const var2867!1 String)
(assert (= var2867!1 (str.++ var2867 ") can\u0027t be cast to int")))
(assert true)
(define-const var43 String (toString/-2075883882 var1628)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1934569527 var2894 var43)) ; Statement: specialinvoke $r7.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r5) 

(declare-const var2894!1 var364)
(declare-const var43!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var364-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1934569527=([org.apache.poi.ooxml.POIXMLException, java.lang.String], void)}
; {var2849=l0, var1902=$b1, var285=$i4, var364=org.apache.poi.ooxml.POIXMLException, var2894=$r7, var1882=$r6, var1694=$r2, var2867=$r3, var1628=$r4, var43=$r5}
; {l0=var2849, $b1=var1902, $i4=var285, org.apache.poi.ooxml.POIXMLException=var364, $r7=var2894, $r6=var1882, $r2=var1694, $r3=var2867, $r4=var1628, $r5=var43}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp 2147483647L;	$i4 = (int) $b1;	if $i4 >= 0 goto $r7 = new org.apache.poi.ooxml.POIXMLException;	$r7 = new org.apache.poi.ooxml.POIXMLException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("val (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") can\'t be cast to int");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r5);	throw $r7
;block_num 2