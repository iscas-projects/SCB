(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1492 0)
(declare-sort var1660 0)
(declare-sort var957 0)
(declare-sort var1404 0)
(declare-sort var3185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperConstructor/612798305 (var1492 ClassObject) var957)
(declare-fun var3185-init () var3185)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3185 String var1404) void)
(declare-fun cast-from-var3185-to-var1404 (var3185) var1404)
(declare-const null-var1492 var1492)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1660 var1660)
(declare-const var1492-$assertionsDisabled Bool)
(declare-const null-var1404 var1404)
(declare-const var868 var1492) ; Statement: r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory 
(assert (not (= var868 null-var1492)))
(declare-const var2596 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2596 null-ClassObject)))
(declare-const var3735 var1660) ; Statement: r4 := @parameter1: org.hibernate.mapping.Component 
(assert (not (= var3735 null-var1660)))
(assert true)
(define-const var3142 var957 (getProperConstructor/612798305 var868 var2596)) ; Statement: r2 = specialinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.lang.reflect.Constructor getProperConstructor(java.lang.Class)>(r1) 
(define-const var1561 Bool var1492-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r3 = newarray (java.lang.Object)[1] 
(assert (not (not (= (ite var1561 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var998 var1404) ; Statement: $r14 := @caughtexception 
(assert (not (= var998 null-var1404)))
(define-const var236 var3185 var3185-init) ; Statement: $r25 = new org.hibernate.HibernateException 
(define-const var3734 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3734)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3734!1 String)
(assert (= var3734!1 ""))
(assert true)
(define-const var214 String (append/672562846 var3734!1 "Unable to instantiate default tuplizer [")) ; Statement: $r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate default tuplizer [") 
(declare-const var3734!2 String)
(assert (= var3734!2 (str.++ var3734!1 "Unable to instantiate default tuplizer [")))
(assert true)
(define-const var3785 String (getName/-1958580599 var2596)) ; Statement: $r17 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3183 String (append/672562846 var214 var3785)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var214!1 String)
(assert (= var214!1 (str.++ var214 var3785)))
(assert true)
(define-const var2015 String (append/672562846 var3183 "]")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3183!1 String)
(assert (= var3183!1 (str.++ var3183 "]")))
(assert true)
(define-const var769 String (toString/-2075883882 var2015)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var236 var769 var998)) ; Statement: specialinvoke $r25.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r14) 

(declare-const var236!1 var3185)
(declare-const var769!1 String)
(declare-const var998!1 var1404)
(define-const var1870 var1404 (cast-from-var3185-to-var1404 var236!1)) ; Statement: $r26 = (java.lang.Throwable) $r25 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperConstructor/612798305=([org.hibernate.tuple.component.ComponentTuplizerFactory, java.lang.Class], java.lang.reflect.Constructor), var3185-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3185-to-var1404=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1492=org.hibernate.tuple.component.ComponentTuplizerFactory, var868=r0, var2596=r1, var1660=org.hibernate.mapping.Component, var3735=r4, var957=java.lang.reflect.Constructor, var3142=r2, var1561=$z0, var1404=java.lang.Throwable, var998=$r14, var3185=org.hibernate.HibernateException, var236=$r25, var3734=$r24, var214=$r18, var3785=$r17, var3183=$r19, var2015=$r20, var769=$r21, var1870=$r26}
; {org.hibernate.tuple.component.ComponentTuplizerFactory=var1492, r0=var868, r1=var2596, org.hibernate.mapping.Component=var1660, r4=var3735, java.lang.reflect.Constructor=var957, r2=var3142, $z0=var1561, java.lang.Throwable=var1404, $r14=var998, org.hibernate.HibernateException=var3185, $r25=var236, $r24=var3734, $r18=var214, $r17=var3785, $r19=var3183, $r20=var2015, $r21=var769, $r26=var1870}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory;	r1 := @parameter0: java.lang.Class;	r4 := @parameter1: org.hibernate.mapping.Component;	r2 = specialinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.lang.reflect.Constructor getProperConstructor(java.lang.Class)>(r1);	$z0 = <org.hibernate.tuple.component.ComponentTuplizerFactory: boolean $assertionsDisabled>;	if $z0 != 0 goto $r3 = newarray (java.lang.Object)[1];	$r14 := @caughtexception;	$r25 = new org.hibernate.HibernateException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate default tuplizer [");	$r17 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r21, $r14);	$r26 = (java.lang.Throwable) $r25;	throw $r26
;block_num 2