(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1963_scalarNames/744149176 (String Int) (Array Int String))
(declare-const null-Int Int)
(declare-const var1350 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1350 null-Int)))
(declare-const var2552 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2552 null-Int)))
(define-const var588 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var588)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var588!1 String)
(assert (= var588!1 ""))
(assert true)
(define-const var2076 String (append/672562846 var588!1 "col_")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("col_") 
(declare-const var588!2 String)
(assert (= var588!2 (str.++ var588!1 "col_")))
(assert true)
(define-const var2278 String (append/-1001720160 var2076 var1350)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2076!1 String)
(assert (str.prefixof var2076 var2076!1))
(assert true)
(define-const var2473 String (toString/-2075883882 var2278)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var310 (Array Int String) (var1963_scalarNames/744149176 var2473 var2552)) ; Statement: $r4 = staticinvoke <org.hibernate.hql.internal.NameGenerator: java.lang.String[] scalarNames(java.lang.String,int)>($r3, i1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1963_scalarNames/744149176=([java.lang.String, int], java.lang.String[])}
; {var1350=i0, var2552=i1, var588=$r0, var2076=$r1, var2278=$r2, var2473=$r3, var1963=org.hibernate.hql.internal.NameGenerator, var310=$r4}
; {i0=var1350, i1=var2552, $r0=var588, $r1=var2076, $r2=var2278, $r3=var2473, org.hibernate.hql.internal.NameGenerator=var1963, $r4=var310}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("col_");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = staticinvoke <org.hibernate.hql.internal.NameGenerator: java.lang.String[] scalarNames(java.lang.String,int)>($r3, i1);	return $r4
;block_num 1