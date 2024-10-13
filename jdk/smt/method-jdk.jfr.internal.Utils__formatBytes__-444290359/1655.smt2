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
(declare-const var1301 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1301 null-Int)))
(define-const var1090 Int (ite (> var1301 1) 1 (ite (< var1301 1) (- 1) 0))) ; Statement: $b1 = l0 cmp 1L 
 ; Statement: if $b1 == 0 goto $r9 = new java.lang.StringBuilder 
(assert (= var1090 0)) ; Cond: $b1 == 0 
(define-const var1841 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1841)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1841!1 String)
(assert (= var1841!1 ""))
(assert true)
(define-const var1786 String (append/-901862667 var1841!1 var1301)) ; Statement: $r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1841!2 String)
(assert (str.prefixof var1841!1 var1841!2))
(assert true)
(define-const var3031 String (append/672562846 var1786 " byte")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" byte") 
(declare-const var1786!1 String)
(assert (= var1786!1 (str.++ var1786 " byte")))
(assert true)
(define-const var1737 String (toString/-2075883882 var3031)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1301=l0, var1090=$b1, var1841=$r9, var1786=$r1, var3031=$r2, var1737=$r3}
; {l0=var1301, $b1=var1090, $r9=var1841, $r1=var1786, $r2=var3031, $r3=var1737}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	$b1 = l0 cmp 1L;	if $b1 == 0 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" byte");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2