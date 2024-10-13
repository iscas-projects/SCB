(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var804 0)
(declare-sort var1797 0)
(declare-sort var2906 0)
(declare-sort var1551 0)
(declare-sort var1310 0)
(declare-sort var795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persister/-683707564 (var804) var1797)
(declare-fun identifier/-683707564 (var804) var2906)
(declare-fun var1797_getFactory/1868753243 (var1797) var1551)
(declare-fun var1310_infoString/-1303038331 (var1797 var795 var1551) String)
(declare-fun cast-from-var2906-to-var795 (var2906) var795)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var804 var804)
(declare-const var3730 var804) ; Statement: r1 := @this: org.hibernate.engine.spi.EntityKey 
(assert (not (= var3730 null-var804)))
(define-const var3919 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3919)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3919!1 String)
(assert (= var3919!1 ""))
(assert true)
(define-const var1334 String (append/672562846 var3919!1 "EntityKey")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityKey") 
(declare-const var3919!2 String)
(assert (= var3919!2 (str.++ var3919!1 "EntityKey")))
(define-const var1073 var1797 (persister/-683707564 var3730)) ; Statement: $r3 = r1.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var907 var2906 (identifier/-683707564 var3730)) ; Statement: $r4 = r1.<org.hibernate.engine.spi.EntityKey: java.io.Serializable identifier> 
(define-const var2359 var1797 (persister/-683707564 var3730)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var3012 var1551 (var1797_getFactory/1868753243 var2359)) ; Statement: $r5 = interfaceinvoke $r2.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2035 String (var1310_infoString/-1303038331 var1073 (cast-from-var2906-to-var795 var907) var3012)) ; Statement: $r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r3, $r4, $r5) 
(assert true)
(define-const var285 String (append/672562846 var1334 var2035)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1334!1 String)
(assert (= var1334!1 (str.++ var1334 var2035)))
(assert true)
(define-const var1301 String (toString/-2075883882 var285)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persister/-683707564=([org.hibernate.engine.spi.EntityKey], org.hibernate.persister.entity.EntityPersister), identifier/-683707564=([org.hibernate.engine.spi.EntityKey], java.io.Serializable), var1797_getFactory/1868753243=([org.hibernate.persister.entity.EntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var1310_infoString/-1303038331=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var2906-to-var795=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var804=org.hibernate.engine.spi.EntityKey, var3730=r1, var3919=$r0, var1334=$r7, var1797=org.hibernate.persister.entity.EntityPersister, var1073=$r3, var2906=java.io.Serializable, var907=$r4, var2359=$r2, var1551=org.hibernate.engine.spi.SessionFactoryImplementor, var3012=$r5, var1310=org.hibernate.pretty.MessageHelper, var795=java.lang.Object, var2035=$r6, var285=$r8, var1301=$r9}
; {org.hibernate.engine.spi.EntityKey=var804, r1=var3730, $r0=var3919, $r7=var1334, org.hibernate.persister.entity.EntityPersister=var1797, $r3=var1073, java.io.Serializable=var2906, $r4=var907, $r2=var2359, org.hibernate.engine.spi.SessionFactoryImplementor=var1551, $r5=var3012, org.hibernate.pretty.MessageHelper=var1310, java.lang.Object=var795, $r6=var2035, $r8=var285, $r9=var1301}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.EntityKey;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityKey");	$r3 = r1.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister>;	$r4 = r1.<org.hibernate.engine.spi.EntityKey: java.io.Serializable identifier>;	$r2 = r1.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister>;	$r5 = interfaceinvoke $r2.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r6 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r3, $r4, $r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1