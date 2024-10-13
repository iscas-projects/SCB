(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-901862667 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var979 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var979 null-Int)))
(define-const var290 Int (ite (> var979 1) 1 (ite (< var979 1) (- 1) 0))) ; Statement: $b1 = l0 cmp 1L 
 ; Statement: if $b1 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (= var290 0)) ; Cond: $b1 == 0 
(define-const var159 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var159)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var159!1 String)
(assert (= var159!1 ""))
(assert true)
(define-const var1700 String (append/-901862667 var159!1 var979)) ; Statement: $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var159!2 String)
(assert (str.prefixof var159!1 var159!2))
(assert true)
(define-const var2767 String (append/672562846 var1700 " bit")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bit") 
(declare-const var1700!1 String)
(assert (= var1700!1 (str.++ var1700 " bit")))
(assert true)
(define-const var781 String (toString/-2075883882 var2767)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var979=l0, var290=$b1, var159=$r9, var1700=$r1, var2767=$r2, var781=$r3}
; {l0=var979, $b1=var290, $r9=var159, $r1=var1700, $r2=var2767, $r3=var781}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp 1L;	if $b1 == 0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bit");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2