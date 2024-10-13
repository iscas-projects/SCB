(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var3765-DEFAULT_SEED Int)
(define-const var3700 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3700)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3700!1 String)
(assert (= var3700!1 ""))
(assert true)
(define-const var153 String (append/672562846 var3700!1 "ClassOrderer.Random default seed: ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ClassOrderer.Random default seed: ") 
(declare-const var3700!2 String)
(assert (= var3700!2 (str.++ var3700!1 "ClassOrderer.Random default seed: ")))
(define-const var3163 Int var3765-DEFAULT_SEED) ; Statement: $l0 = <org.junit.jupiter.api.ClassOrderer$Random: long DEFAULT_SEED> 
(assert true)
(define-const var2813 String (append/-901862667 var153 var3163)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var153!1 String)
(assert (str.prefixof var153 var153!1))
(assert true)
(define-const var4 String (toString/-2075883882 var2813)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3700=$r0, var153=$r1, var3765=org.junit.jupiter.api.ClassOrderer$Random, var3163=$l0, var2813=$r2, var4=$r3}
; {$r0=var3700, $r1=var153, org.junit.jupiter.api.ClassOrderer$Random=var3765, $l0=var3163, $r2=var2813, $r3=var4}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ClassOrderer.Random default seed: ");	$l0 = <org.junit.jupiter.api.ClassOrderer$Random: long DEFAULT_SEED>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1