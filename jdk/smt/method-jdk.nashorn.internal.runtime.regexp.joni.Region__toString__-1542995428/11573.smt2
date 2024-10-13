(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun beg/-207103108 (var815) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var815 var815)
(declare-const var2182 var815) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.Region 
(assert (not (= var2182 null-var815)))
(define-const var3925 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3925)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3925!1 String)
(assert (= var3925!1 ""))
(assert true)
;(assert (append/672562846 var3925!1 "Region: \n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Region: \n") 
(declare-const var3925!2 String)
(assert (= var3925!2 (str.++ var3925!1 "Region: \n")))
(define-const var2873 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2327 (Array Int Int) (beg/-207103108 var2182)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Region: int[] beg> 
(define-const var2731 Int (getLength-Arr-Int-1 var2327)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2873 var2731)) ; Cond: i3 >= $i0 
(assert true)
(define-const var2159 String (toString/-2075883882 var3925!2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), beg/-207103108=([jdk.nashorn.internal.runtime.regexp.joni.Region], int[]), getLength-Arr-Int-1=([int[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var815=jdk.nashorn.internal.runtime.regexp.joni.Region, var2182=r1, var3925=$r0, var2873=i3, var2327=$r2, var2731=$i0, var2159=$r3}
; {jdk.nashorn.internal.runtime.regexp.joni.Region=var815, r1=var2182, $r0=var3925, i3=var2873, $r2=var2327, $i0=var2731, $r3=var2159}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.Region;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Region: \n");	i3 = 0;	$r2 = r1.<jdk.nashorn.internal.runtime.regexp.joni.Region: int[] beg>;	$i0 = lengthof $r2;	if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3