(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun collectionSuffixSeed/181402656 (var3422) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3422 var3422)
(declare-const var3334 var3422) ; Statement: r1 := @this: org.hibernate.loader.custom.sql.SQLQueryReturnProcessor 
(assert (not (= var3334 null-var3422)))
(define-const var922 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var922)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var922!1 String)
(assert (= var922!1 ""))
(define-const var2065 Int (collectionSuffixSeed/181402656 var3334)) ; Statement: $i0 = r1.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: int collectionSuffixSeed> 
(define-const var1001 Int (+ var2065 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3334!1 var3422)
(assert (not (= var3334!1 null-var3422)))
(assert (= (collectionSuffixSeed/181402656 var3334!1) var1001)) ; Statement: r1.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: int collectionSuffixSeed> = $i1 
(assert true)
(define-const var2251 String (append/-1001720160 var922!1 var2065)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var922!2 String)
(assert (str.prefixof var922!1 var922!2))
(assert true)
(define-const var2465 String (append/672562846 var2251 "__")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("__") 
(declare-const var2251!1 String)
(assert (= var2251!1 (str.++ var2251 "__")))
(assert true)
(define-const var1403 String (toString/-2075883882 var2465)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), collectionSuffixSeed/181402656=([org.hibernate.loader.custom.sql.SQLQueryReturnProcessor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3422=org.hibernate.loader.custom.sql.SQLQueryReturnProcessor, var3334=r1, var922=$r0, var2065=$i0, var1001=$i1, var2251=$r2, var2465=$r3, var1403=$r4}
; {org.hibernate.loader.custom.sql.SQLQueryReturnProcessor=var3422, r1=var3334, $r0=var922, $i0=var2065, $i1=var1001, $r2=var2251, $r3=var2465, $r4=var1403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.custom.sql.SQLQueryReturnProcessor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: int collectionSuffixSeed>;	$i1 = $i0 + 1;	r1.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: int collectionSuffixSeed> = $i1;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("__");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1