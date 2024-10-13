(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2682 0)
(declare-sort var2480 0)
(declare-sort var2786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2480_getDeclaringType/-683936729 (var2480) var2786)
(declare-fun var2786_getJavaType/419544409 (var2786) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2480_getName/974384292 (var2480) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2682 var2682)
(declare-const null-var2480 var2480)
(declare-const var2647 var2682) ; Statement: r10 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute 
(assert (not (= var2647 null-var2682)))
(declare-const var2306 var2480) ; Statement: r1 := @parameter0: javax.persistence.metamodel.MapAttribute 
(assert (not (= var2306 null-var2480)))
(define-const var2959 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2959)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2959!1 String)
(assert (= var2959!1 ""))
(define-const var3225 var2786 (var2480_getDeclaringType/-683936729 var2306)) ; Statement: $r2 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>() 
(define-const var3454 ClassObject (var2786_getJavaType/419544409 var3225)) ; Statement: $r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: java.lang.Class getJavaType()>() 
(assert true)
(define-const var2856 String (getName/-1958580599 var3454)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2019 String (append/672562846 var2959!1 var2856)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2959!2 String)
(assert (= var2959!2 (str.++ var2959!1 var2856)))
(assert true)
(define-const var234 String (append/-1166366385 var2019 46)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2019!1 String)
(assert (str.prefixof var2019 var2019!1))
(define-const var3425 String (var2480_getName/974384292 var2306)) ; Statement: $r6 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: java.lang.String getName()>() 
(assert true)
(define-const var3707 String (append/672562846 var234 var3425)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var234!1 String)
(assert (= var234!1 (str.++ var234 var3425)))
(assert true)
(define-const var3727 String (toString/-2075883882 var3707)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2480_getDeclaringType/-683936729=([javax.persistence.metamodel.MapAttribute], javax.persistence.metamodel.ManagedType), var2786_getJavaType/419544409=([javax.persistence.metamodel.ManagedType], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2480_getName/974384292=([javax.persistence.metamodel.MapAttribute], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2682=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute, var2647=r10, var2480=javax.persistence.metamodel.MapAttribute, var2306=r1, var2959=$r0, var2786=javax.persistence.metamodel.ManagedType, var3225=$r2, var3454=$r3, var2856=$r4, var2019=$r5, var234=$r7, var3425=$r6, var3707=$r8, var3727=$r9}
; {org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute=var2682, r10=var2647, javax.persistence.metamodel.MapAttribute=var2480, r1=var2306, $r0=var2959, javax.persistence.metamodel.ManagedType=var2786, $r2=var3225, $r3=var3454, $r4=var2856, $r5=var2019, $r7=var234, $r6=var3425, $r8=var3707, $r9=var3727}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute;	r1 := @parameter0: javax.persistence.metamodel.MapAttribute;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: javax.persistence.metamodel.ManagedType getDeclaringType()>();	$r3 = interfaceinvoke $r2.<javax.persistence.metamodel.ManagedType: java.lang.Class getJavaType()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1