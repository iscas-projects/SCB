(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun lhs/-255639387 (var2245) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2245 var2245)
(declare-const var1488 var2245) ; Statement: r1 := @this: org.hibernate.sql.ConditionFragment 
(assert (not (= var1488 null-var2245)))
(define-const var1081 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3337 (Array Int String) (lhs/-255639387 var1488)) ; Statement: $r2 = r1.<org.hibernate.sql.ConditionFragment: java.lang.String[] lhs> 
(define-const var2154 Int (getLength-Arr-String-1 var3337)) ; Statement: $i0 = lengthof $r2 
(define-const var1344 Int (* var2154 10)) ; Statement: $i1 = $i0 * 10 
(assert true)
;(assert (<init>/543593434 var1081 var1344)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1081!1 String)
(declare-const var1344!1 Int)
(define-const var632 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var1814 (Array Int String) (lhs/-255639387 var1488)) ; Statement: $r3 = r1.<org.hibernate.sql.ConditionFragment: java.lang.String[] lhs> 
(define-const var810 Int (getLength-Arr-String-1 var1814)) ; Statement: $i2 = lengthof $r3 
 ; Statement: if i5 >= $i2 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var632 var810)) ; Cond: i5 >= $i2 
(assert true)
(define-const var2488 String (toString/-2075883882 var1081!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), lhs/-255639387=([org.hibernate.sql.ConditionFragment], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2245=org.hibernate.sql.ConditionFragment, var1488=r1, var1081=$r0, var3337=$r2, var2154=$i0, var1344=$i1, var632=i5, var1814=$r3, var810=$i2, var2488=$r4}
; {org.hibernate.sql.ConditionFragment=var2245, r1=var1488, $r0=var1081, $r2=var3337, $i0=var2154, $i1=var1344, i5=var632, $r3=var1814, $i2=var810, $r4=var2488}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.ConditionFragment;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.ConditionFragment: java.lang.String[] lhs>;	$i0 = lengthof $r2;	$i1 = $i0 * 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	i5 = 0;	$r3 = r1.<org.hibernate.sql.ConditionFragment: java.lang.String[] lhs>;	$i2 = lengthof $r3;	if i5 >= $i2 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3