(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1189_scalarName/315057309 (String Int) String)
(declare-const null-Int Int)
(declare-const var1260 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1260 null-Int)))
(declare-const var2282 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2282 null-Int)))
(define-const var611 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var611)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var611!1 String)
(assert (= var611!1 ""))
(assert true)
(define-const var3119 String (append/672562846 var611!1 "col_")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("col_") 
(declare-const var611!2 String)
(assert (= var611!2 (str.++ var611!1 "col_")))
(assert true)
(define-const var219 String (append/-1001720160 var3119 var1260)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3119!1 String)
(assert (str.prefixof var3119 var3119!1))
(assert true)
(define-const var1581 String (toString/-2075883882 var219)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var493 String (var1189_scalarName/315057309 var1581 var2282)) ; Statement: $r4 = staticinvoke <org.hibernate.hql.internal.NameGenerator: java.lang.String scalarName(java.lang.String,int)>($r3, i1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1189_scalarName/315057309=([java.lang.String, int], java.lang.String)}
; {var1260=i0, var2282=i1, var611=$r0, var3119=$r1, var219=$r2, var1581=$r3, var1189=org.hibernate.hql.internal.NameGenerator, var493=$r4}
; {i0=var1260, i1=var2282, $r0=var611, $r1=var3119, $r2=var219, $r3=var1581, org.hibernate.hql.internal.NameGenerator=var1189, $r4=var493}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("col_");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = staticinvoke <org.hibernate.hql.internal.NameGenerator: java.lang.String scalarName(java.lang.String,int)>($r3, i1);	return $r4
;block_num 1