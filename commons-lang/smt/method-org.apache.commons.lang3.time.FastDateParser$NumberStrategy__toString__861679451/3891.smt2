(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun field/-524421381 (var2437) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2437 var2437)
(declare-const var848 var2437) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$NumberStrategy 
(assert (not (= var848 null-var2437)))
(define-const var2885 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2885)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2885!1 String)
(assert (= var2885!1 ""))
(assert true)
(define-const var2449 String (append/672562846 var2885!1 "NumberStrategy [field=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NumberStrategy [field=") 
(declare-const var2885!2 String)
(assert (= var2885!2 (str.++ var2885!1 "NumberStrategy [field=")))
(define-const var2495 Int (field/-524421381 var848)) ; Statement: $i0 = r1.<org.apache.commons.lang3.time.FastDateParser$NumberStrategy: int field> 
(assert true)
(define-const var589 String (append/-1001720160 var2449 var2495)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2449!1 String)
(assert (str.prefixof var2449 var2449!1))
(assert true)
(define-const var806 String (append/672562846 var589 "]")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var589!1 String)
(assert (= var589!1 (str.++ var589 "]")))
(assert true)
(define-const var850 String (toString/-2075883882 var806)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), field/-524421381=([org.apache.commons.lang3.time.FastDateParser$NumberStrategy], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2437=org.apache.commons.lang3.time.FastDateParser$NumberStrategy, var848=r1, var2885=$r0, var2449=$r2, var2495=$i0, var589=$r3, var806=$r4, var850=$r5}
; {org.apache.commons.lang3.time.FastDateParser$NumberStrategy=var2437, r1=var848, $r0=var2885, $r2=var2449, $i0=var2495, $r3=var589, $r4=var806, $r5=var850}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$NumberStrategy;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NumberStrategy [field=");	$i0 = r1.<org.apache.commons.lang3.time.FastDateParser$NumberStrategy: int field>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1