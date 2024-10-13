(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1906 0)
(declare-sort var2609 0)
(declare-sort var2682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun wrappedProjection/1214314927 (var1906) var2609)
(declare-fun toString/-522406933 (var2682) String)
(declare-fun cast-from-var2609-to-var2682 (var2609) var2682)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1906 var1906)
(declare-const var1482 var1906) ; Statement: r1 := @this: org.hibernate.criterion.Distinct 
(assert (not (= var1482 null-var1906)))
(define-const var3154 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3154)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3154!1 String)
(assert (= var3154!1 ""))
(assert true)
(define-const var2832 String (append/672562846 var3154!1 "distinct ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("distinct ") 
(declare-const var3154!2 String)
(assert (= var3154!2 (str.++ var3154!1 "distinct ")))
(define-const var2827 var2609 (wrappedProjection/1214314927 var1482)) ; Statement: $r2 = r1.<org.hibernate.criterion.Distinct: org.hibernate.criterion.Projection wrappedProjection> 
(assert true)
(define-const var1027 String (toString/-522406933 (cast-from-var2609-to-var2682 var2827))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2013 String (append/672562846 var2832 var1027)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2832!1 String)
(assert (= var2832!1 (str.++ var2832 var1027)))
(assert true)
(define-const var512 String (toString/-2075883882 var2013)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), wrappedProjection/1214314927=([org.hibernate.criterion.Distinct], org.hibernate.criterion.Projection), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2609-to-var2682=([org.hibernate.criterion.Projection], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1906=org.hibernate.criterion.Distinct, var1482=r1, var3154=$r0, var2832=$r4, var2609=org.hibernate.criterion.Projection, var2827=$r2, var2682=java.lang.Object, var1027=$r3, var2013=$r5, var512=$r6}
; {org.hibernate.criterion.Distinct=var1906, r1=var1482, $r0=var3154, $r4=var2832, org.hibernate.criterion.Projection=var2609, $r2=var2827, java.lang.Object=var2682, $r3=var1027, $r5=var2013, $r6=var512}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.Distinct;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("distinct ");	$r2 = r1.<org.hibernate.criterion.Distinct: org.hibernate.criterion.Projection wrappedProjection>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1