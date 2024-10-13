(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2384 0)
(declare-sort var3296 0)
(declare-sort var2184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entity/479476598 (var2384 ClassObject) var3296)
(declare-fun var2184-init () var2184)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2184 String) void)
(declare-const null-var2384 var2384)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3296 var3296)
(declare-const var1676 var2384) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var1676 null-var2384)))
(declare-const var1968 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1968 null-ClassObject)))
(assert true)
(define-const var991 var3296 (entity/479476598 var1676 var1968)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.metamodel.internal.MetamodelImpl: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r1) 
 ; Statement: if r2 != null goto $r3 = new java.util.ArrayList 
(assert (not (not (= var991 null-var3296)))) ; Negate: Cond: r2 != null  
(define-const var890 var2184 var2184-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var3631 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3631)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3631!1 String)
(assert (= var3631!1 ""))
(assert true)
(define-const var1243 String (append/672562846 var3631!1 "Given class is not an entity : ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given class is not an entity : ") 
(declare-const var3631!2 String)
(assert (= var3631!2 (str.++ var3631!1 "Given class is not an entity : ")))
(assert true)
(define-const var96 String (getName/-1958580599 var1968)) ; Statement: $r13 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1539 String (append/672562846 var1243 var96)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1243!1 String)
(assert (= var1243!1 (str.++ var1243 var96)))
(assert true)
(define-const var1151 String (toString/-2075883882 var1539)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var890 var1151)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var890!1 var2184)
(declare-const var1151!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {entity/479476598=([org.hibernate.metamodel.internal.MetamodelImpl, java.lang.Class], org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor), var2184-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2384=org.hibernate.metamodel.internal.MetamodelImpl, var1676=r0, var1968=r1, var3296=org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor, var991=r2, var2184=java.lang.IllegalArgumentException, var890=$r11, var3631=$r12, var1243=$r14, var96=$r13, var1539=$r15, var1151=$r16}
; {org.hibernate.metamodel.internal.MetamodelImpl=var2384, r0=var1676, r1=var1968, org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor=var3296, r2=var991, java.lang.IllegalArgumentException=var2184, $r11=var890, $r12=var3631, $r14=var1243, $r13=var96, $r15=var1539, $r16=var1151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	r2 = virtualinvoke r0.<org.hibernate.metamodel.internal.MetamodelImpl: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r1);	if r2 != null goto $r3 = new java.util.ArrayList;	$r11 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given class is not an entity : ");	$r13 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2