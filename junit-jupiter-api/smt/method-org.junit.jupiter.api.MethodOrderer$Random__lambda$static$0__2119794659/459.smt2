(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const var3001-DEFAULT_SEED Int)
(define-const var1869 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1869)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1869!1 String)
(assert (= var1869!1 ""))
(assert true)
(define-const var3034 String (append/672562846 var1869!1 "MethodOrderer.Random default seed: ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodOrderer.Random default seed: ") 
(declare-const var1869!2 String)
(assert (= var1869!2 (str.++ var1869!1 "MethodOrderer.Random default seed: ")))
(define-const var1942 Int var3001-DEFAULT_SEED) ; Statement: $l0 = <org.junit.jupiter.api.MethodOrderer$Random: long DEFAULT_SEED> 
(assert true)
(define-const var3013 String (append/-901862667 var3034 var1942)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3034!1 String)
(assert (str.prefixof var3034 var3034!1))
(assert true)
(define-const var2755 String (toString/-2075883882 var3013)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1869=$r0, var3034=$r1, var3001=org.junit.jupiter.api.MethodOrderer$Random, var1942=$l0, var3013=$r2, var2755=$r3}
; {$r0=var1869, $r1=var3034, org.junit.jupiter.api.MethodOrderer$Random=var3001, $l0=var1942, $r2=var3013, $r3=var2755}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodOrderer.Random default seed: ");	$l0 = <org.junit.jupiter.api.MethodOrderer$Random: long DEFAULT_SEED>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1