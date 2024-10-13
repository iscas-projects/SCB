(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1280 0)
(declare-sort var1400 0)
(declare-sort var1734 0)
(declare-sort var2091 0)
(declare-sort var852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun managedType/307209455 (var1280) var1734)
(declare-fun var1734_getAttribute/690477173 (var1734 String) var2091)
(declare-fun var852-init () var852)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var852 String) void)
(declare-const null-var1280 var1280)
(declare-const null-String String)
(declare-const null-var2091 var2091)
(declare-const var1948 var1280) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.SingularAttributePath 
(assert (not (= var1948 null-var1280)))
(declare-const var3769 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3769 null-String)))
(define-const var2460 var1734 (managedType/307209455 var1948)) ; Statement: $r2 = r0.<org.hibernate.query.criteria.internal.path.SingularAttributePath: javax.persistence.metamodel.ManagedType managedType> 
(define-const var1225 var2091 (var1734_getAttribute/690477173 var2460 var3769)) ; Statement: r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Attribute getAttribute(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (not (= var1225 null-var2091)))) ; Negate: Cond: r3 != null  
(define-const var1267 var852 var852-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var672 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var672)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var672!1 String)
(assert (= var672!1 ""))
(assert true)
(define-const var2770 String (append/672562846 var672!1 "Could not resolve attribute named ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve attribute named ") 
(declare-const var672!2 String)
(assert (= var672!2 (str.++ var672!1 "Could not resolve attribute named ")))
(assert true)
(define-const var2097 String (append/672562846 var2770 var3769)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2770!1 String)
(assert (= var2770!1 (str.++ var2770 var3769)))
(assert true)
(define-const var2341 String (toString/-2075883882 var2097)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1267 var2341)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1267!1 var852)
(declare-const var2341!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {managedType/307209455=([org.hibernate.query.criteria.internal.path.SingularAttributePath], javax.persistence.metamodel.ManagedType), var1734_getAttribute/690477173=([javax.persistence.metamodel.ManagedType, java.lang.String], javax.persistence.metamodel.Attribute), var852-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1280=org.hibernate.query.criteria.internal.path.SingularAttributePath, var1948=r0, var3769=r1, var1400=null_type, var1734=javax.persistence.metamodel.ManagedType, var2460=$r2, var2091=javax.persistence.metamodel.Attribute, var1225=r3, var852=java.lang.IllegalArgumentException, var1267=$r4, var672=$r5, var2770=$r6, var2097=$r7, var2341=$r8}
; {org.hibernate.query.criteria.internal.path.SingularAttributePath=var1280, r0=var1948, r1=var3769, null_type=var1400, javax.persistence.metamodel.ManagedType=var1734, $r2=var2460, javax.persistence.metamodel.Attribute=var2091, r3=var1225, java.lang.IllegalArgumentException=var852, $r4=var1267, $r5=var672, $r6=var2770, $r7=var2097, $r8=var2341}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.SingularAttributePath;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.query.criteria.internal.path.SingularAttributePath: javax.persistence.metamodel.ManagedType managedType>;	r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: javax.persistence.metamodel.Attribute getAttribute(java.lang.String)>(r1);	if r3 != null goto return r3;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve attribute named ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2