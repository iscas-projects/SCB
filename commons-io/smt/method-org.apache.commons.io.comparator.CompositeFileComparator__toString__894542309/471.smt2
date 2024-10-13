(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1473 0)
(declare-sort var2713 0)
(declare-sort var3419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-1647088096 (var2713) String)
(declare-fun cast-from-var1473-to-var2713 (var1473) var2713)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun delegates/694494477 (var1473) (Array Int var3419))
(declare-fun getLength-Arr-var3419-1 ((Array Int var3419)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1473 var1473)
(declare-const var151 var1473) ; Statement: r1 := @this: org.apache.commons.io.comparator.CompositeFileComparator 
(assert (not (= var151 null-var1473)))
(define-const var2704 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2704)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2704!1 String)
(assert (= var2704!1 ""))
(assert true)
(define-const var3549 String (toString/-1647088096 (cast-from-var1473-to-var2713 var151))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2704!1 var3549)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2704!2 String)
(assert (= var2704!2 (str.++ var2704!1 var3549)))
(assert true)
;(assert (append/-1166366385 var2704!2 123)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var2704!3 String)
(assert (str.prefixof var2704!2 var2704!3))
(define-const var1219 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2823 (Array Int var3419) (delegates/694494477 var151)) ; Statement: $r3 = r1.<org.apache.commons.io.comparator.CompositeFileComparator: java.util.Comparator[] delegates> 
(define-const var3692 Int (getLength-Arr-var3419-1 var2823)) ; Statement: $i0 = lengthof $r3 
 ; Statement: if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (>= var1219 var3692)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/-1166366385 var2704!3 125)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2704!4 String)
(assert (str.prefixof var2704!3 var2704!4))
(assert true)
(define-const var295 String (toString/-2075883882 var2704!4)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-1647088096=([org.apache.commons.io.comparator.AbstractFileComparator], java.lang.String), cast-from-var1473-to-var2713=([org.apache.commons.io.comparator.CompositeFileComparator], org.apache.commons.io.comparator.AbstractFileComparator), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), delegates/694494477=([org.apache.commons.io.comparator.CompositeFileComparator], java.util.Comparator[]), getLength-Arr-var3419-1=([java.util.Comparator[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1473=org.apache.commons.io.comparator.CompositeFileComparator, var151=r1, var2704=$r0, var2713=org.apache.commons.io.comparator.AbstractFileComparator, var3549=$r2, var1219=i1, var3419=java.util.Comparator, var2823=$r3, var3692=$i0, var295=$r4}
; {org.apache.commons.io.comparator.CompositeFileComparator=var1473, r1=var151, $r0=var2704, org.apache.commons.io.comparator.AbstractFileComparator=var2713, $r2=var3549, i1=var1219, java.util.Comparator=var3419, $r3=var2823, $i0=var3692, $r4=var295}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.comparator.CompositeFileComparator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.apache.commons.io.comparator.AbstractFileComparator: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	i1 = 0;	$r3 = r1.<org.apache.commons.io.comparator.CompositeFileComparator: java.util.Comparator[] delegates>;	$i0 = lengthof $r3;	if i1 >= $i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3