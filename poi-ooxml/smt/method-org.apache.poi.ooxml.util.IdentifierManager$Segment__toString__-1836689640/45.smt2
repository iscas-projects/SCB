(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3393 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun start/256234360 (var3393) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun end/256234360 (var3393) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3393 var3393)
(declare-const var3529 var3393) ; Statement: r1 := @this: org.apache.poi.ooxml.util.IdentifierManager$Segment 
(assert (not (= var3529 null-var3393)))
(define-const var3663 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3663)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3663!1 String)
(assert (= var3663!1 ""))
(assert true)
(define-const var1905 String (append/672562846 var3663!1 "[")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3663!2 String)
(assert (= var3663!2 (str.++ var3663!1 "[")))
(define-const var690 Int (start/256234360 var3529)) ; Statement: $l0 = r1.<org.apache.poi.ooxml.util.IdentifierManager$Segment: long start> 
(assert true)
(define-const var3991 String (append/-901862667 var1905 var690)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1905!1 String)
(assert (str.prefixof var1905 var1905!1))
(assert true)
(define-const var1263 String (append/672562846 var3991 "; ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; ") 
(declare-const var3991!1 String)
(assert (= var3991!1 (str.++ var3991 "; ")))
(define-const var3415 Int (end/256234360 var3529)) ; Statement: $l1 = r1.<org.apache.poi.ooxml.util.IdentifierManager$Segment: long end> 
(assert true)
(define-const var3103 String (append/-901862667 var1263 var3415)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var1263!1 String)
(assert (str.prefixof var1263 var1263!1))
(assert true)
(define-const var2934 String (append/672562846 var3103 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3103!1 String)
(assert (= var3103!1 (str.++ var3103 "]")))
(assert true)
(define-const var1094 String (toString/-2075883882 var2934)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), start/256234360=([org.apache.poi.ooxml.util.IdentifierManager$Segment], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), end/256234360=([org.apache.poi.ooxml.util.IdentifierManager$Segment], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3393=org.apache.poi.ooxml.util.IdentifierManager$Segment, var3529=r1, var3663=$r0, var1905=$r2, var690=$l0, var3991=$r3, var1263=$r4, var3415=$l1, var3103=$r5, var2934=$r6, var1094=$r7}
; {org.apache.poi.ooxml.util.IdentifierManager$Segment=var3393, r1=var3529, $r0=var3663, $r2=var1905, $l0=var690, $r3=var3991, $r4=var1263, $l1=var3415, $r5=var3103, $r6=var2934, $r7=var1094}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.ooxml.util.IdentifierManager$Segment;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$l0 = r1.<org.apache.poi.ooxml.util.IdentifierManager$Segment: long start>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; ");	$l1 = r1.<org.apache.poi.ooxml.util.IdentifierManager$Segment: long end>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1