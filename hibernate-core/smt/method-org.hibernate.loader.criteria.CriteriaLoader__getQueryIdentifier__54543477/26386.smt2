(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3864 0)
(declare-sort var12 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSQLString/199701374 (var12) String)
(declare-fun cast-from-var3864-to-var12 (var3864) var12)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3864 var3864)
(declare-const var469 var3864) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaLoader 
(assert (not (= var469 null-var3864)))
(define-const var128 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var128)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var128!1 String)
(assert (= var128!1 ""))
(assert true)
(define-const var1896 String (append/672562846 var128!1 "[CRITERIA] ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CRITERIA] ") 
(declare-const var128!2 String)
(assert (= var128!2 (str.++ var128!1 "[CRITERIA] ")))
(assert true)
(define-const var314 String (getSQLString/199701374 (cast-from-var3864-to-var12 var469))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaLoader: java.lang.String getSQLString()>() 
(assert true)
(define-const var3546 String (append/672562846 var1896 var314)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1896!1 String)
(assert (= var1896!1 (str.++ var1896 var314)))
(assert true)
(define-const var311 String (toString/-2075883882 var3546)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSQLString/199701374=([org.hibernate.loader.OuterJoinLoader], java.lang.String), cast-from-var3864-to-var12=([org.hibernate.loader.criteria.CriteriaLoader], org.hibernate.loader.OuterJoinLoader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3864=org.hibernate.loader.criteria.CriteriaLoader, var469=r1, var128=$r0, var1896=$r3, var12=org.hibernate.loader.OuterJoinLoader, var314=$r2, var3546=$r4, var311=$r5}
; {org.hibernate.loader.criteria.CriteriaLoader=var3864, r1=var469, $r0=var128, $r3=var1896, org.hibernate.loader.OuterJoinLoader=var12, $r2=var314, $r4=var3546, $r5=var311}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[CRITERIA] ");	$r2 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaLoader: java.lang.String getSQLString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1