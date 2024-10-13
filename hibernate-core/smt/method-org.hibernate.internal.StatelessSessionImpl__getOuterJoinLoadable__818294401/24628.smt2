(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3076 0)
(declare-sort var798 0)
(declare-sort var2818 0)
(declare-sort var1022 0)
(declare-sort var3964 0)
(declare-sort var2441 0)
(declare-sort var3945 0)
(declare-sort var1953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFactory/-712118229 (var1022) var2818)
(declare-fun cast-from-var3076-to-var1022 (var3076) var1022)
(declare-fun var2818_getMetamodel/1171873935 (var2818) var3964)
(declare-fun var3964_entityPersister/1947554472 (var3964 String) var2441)
(declare-fun var3945-init () var3945)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3945 String) void)
(declare-fun cast-from-var3945-to-var1953 (var3945) var1953)
(declare-const null-var3076 var3076)
(declare-const null-String String)
(declare-const var2061 var3076) ; Statement: r0 := @this: org.hibernate.internal.StatelessSessionImpl 
(assert (not (= var2061 null-var3076)))
(declare-const var3447 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3447 null-String)))
(assert true)
(define-const var2082 var2818 (getFactory/-712118229 (cast-from-var3076-to-var1022 var2061))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.internal.StatelessSessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3509 var3964 (var2818_getMetamodel/1171873935 var2082)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var2397 var2441 (var3964_entityPersister/1947554472 var3509 var3447)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r2) 
(define-const var3769 Bool true) ; Statement: $z0 = r4 instanceof org.hibernate.persister.entity.OuterJoinLoadable 
 ; Statement: if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4 
(assert (not (not (= (ite var3769 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var496 var3945 var3945-init) ; Statement: $r12 = new org.hibernate.MappingException 
(define-const var2664 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2664)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2664!1 String)
(assert (= var2664!1 ""))
(assert true)
(define-const var370 String (append/672562846 var2664!1 "class persister is not OuterJoinLoadable: ")) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class persister is not OuterJoinLoadable: ") 
(declare-const var2664!2 String)
(assert (= var2664!2 (str.++ var2664!1 "class persister is not OuterJoinLoadable: ")))
(assert true)
(define-const var1055 String (append/672562846 var370 var3447)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var370!1 String)
(assert (= var370!1 (str.++ var370 var3447)))
(assert true)
(define-const var2900 String (toString/-2075883882 var1055)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var496 var2900)) ; Statement: specialinvoke $r12.<org.hibernate.MappingException: void <init>(java.lang.String)>($r10) 

(declare-const var496!1 var3945)
(declare-const var2900!1 String)
(define-const var2798 var1953 (cast-from-var3945-to-var1953 var496!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getFactory/-712118229=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var3076-to-var1022=([org.hibernate.internal.StatelessSessionImpl], org.hibernate.internal.AbstractSharedSessionContract), var2818_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var3964_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var3945-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3945-to-var1953=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3076=org.hibernate.internal.StatelessSessionImpl, var2061=r0, var3447=r2, var798=null_type, var2818=org.hibernate.engine.spi.SessionFactoryImplementor, var1022=org.hibernate.internal.AbstractSharedSessionContract, var2082=$r1, var3964=org.hibernate.metamodel.spi.MetamodelImplementor, var3509=$r3, var2441=org.hibernate.persister.entity.EntityPersister, var2397=r4, var3769=$z0, var3945=org.hibernate.MappingException, var496=$r12, var2664=$r11, var370=$r8, var1055=$r9, var2900=$r10, var1953=java.lang.Throwable, var2798=$r13}
; {org.hibernate.internal.StatelessSessionImpl=var3076, r0=var2061, r2=var3447, null_type=var798, org.hibernate.engine.spi.SessionFactoryImplementor=var2818, org.hibernate.internal.AbstractSharedSessionContract=var1022, $r1=var2082, org.hibernate.metamodel.spi.MetamodelImplementor=var3964, $r3=var3509, org.hibernate.persister.entity.EntityPersister=var2441, r4=var2397, $z0=var3769, org.hibernate.MappingException=var3945, $r12=var496, $r11=var2664, $r8=var370, $r9=var1055, $r10=var2900, java.lang.Throwable=var1953, $r13=var2798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.StatelessSessionImpl;	r2 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<org.hibernate.internal.StatelessSessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r2);	$z0 = r4 instanceof org.hibernate.persister.entity.OuterJoinLoadable;	if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4;	$r12 = new org.hibernate.MappingException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class persister is not OuterJoinLoadable: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.MappingException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2