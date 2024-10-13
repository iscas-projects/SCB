(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var17 0)
(declare-sort var590 0)
(declare-sort var1300 0)
(declare-sort var1435 0)
(declare-sort var760 0)
(declare-sort var652 0)
(declare-sort var3783 0)
(declare-sort var2788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1300_getEntityPersister/1301528620 (var1300 String) var1435)
(declare-fun cast-from-var1435-to-var760 (var1435) var760)
(declare-fun var760_toType/-7252846 (var760 String) var652)
(declare-fun var652_isCollectionType/624103633 (var652) Bool)
(declare-fun var3783-init () var3783)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3783 String) void)
(declare-fun cast-from-var3783-to-var2788 (var3783) var2788)
(declare-const null-var17 var17)
(declare-const null-String String)
(declare-const null-var1300 var1300)
(declare-const var1810 var17) ; Statement: r30 := @this: org.hibernate.criterion.AbstractEmptinessExpression 
(assert (not (= var1810 null-var17)))
(declare-const var2900 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2900 null-String)))
(declare-const var661 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var661 null-String)))
(declare-const var2271 var1300) ; Statement: r0 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2271 null-var1300)))
(define-const var543 var1435 (var1300_getEntityPersister/1301528620 var2271 var2900)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>(r1) 
(define-const var2011 var760 (cast-from-var1435-to-var760 var543)) ; Statement: r3 = (org.hibernate.persister.entity.PropertyMapping) $r2 
(define-const var373 var652 (var760_toType/-7252846 var2011 var661)) ; Statement: r5 = interfaceinvoke r3.<org.hibernate.persister.entity.PropertyMapping: org.hibernate.type.Type toType(java.lang.String)>(r4) 
(define-const var3618 Bool (var652_isCollectionType/624103633 var373)) ; Statement: $z0 = interfaceinvoke r5.<org.hibernate.type.Type: boolean isCollectionType()>() 
 ; Statement: if $z0 != 0 goto $r6 = (org.hibernate.type.CollectionType) r5 
(assert (not (not (= (ite var3618 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1097 var3783 var3783-init) ; Statement: $r32 = new org.hibernate.MappingException 
(define-const var1174 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1174)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1174!1 String)
(assert (= var1174!1 ""))
(assert true)
(define-const var3720 String (append/672562846 var1174!1 "Property path [")) ; Statement: $r12 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property path [") 
(declare-const var1174!2 String)
(assert (= var1174!2 (str.++ var1174!1 "Property path [")))
(assert true)
(define-const var3558 String (append/672562846 var3720 var2900)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3720!1 String)
(assert (= var3720!1 (str.++ var3720 var2900)))
(assert true)
(define-const var722 String (append/672562846 var3558 ".")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3558!1 String)
(assert (= var3558!1 (str.++ var3558 ".")))
(assert true)
(define-const var3332 String (append/672562846 var722 var661)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var722!1 String)
(assert (= var722!1 (str.++ var722 var661)))
(assert true)
(define-const var3743 String (append/672562846 var3332 "] does not reference a collection")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not reference a collection") 
(declare-const var3332!1 String)
(assert (= var3332!1 (str.++ var3332 "] does not reference a collection")))
(assert true)
(define-const var2690 String (toString/-2075883882 var3743)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1097 var2690)) ; Statement: specialinvoke $r32.<org.hibernate.MappingException: void <init>(java.lang.String)>($r17) 

(declare-const var1097!1 var3783)
(declare-const var2690!1 String)
(define-const var977 var2788 (cast-from-var3783-to-var2788 var1097!1)) ; Statement: $r37 = (java.lang.Throwable) $r32 
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {var1300_getEntityPersister/1301528620=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), cast-from-var1435-to-var760=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.PropertyMapping), var760_toType/-7252846=([org.hibernate.persister.entity.PropertyMapping, java.lang.String], org.hibernate.type.Type), var652_isCollectionType/624103633=([org.hibernate.type.Type], boolean), var3783-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3783-to-var2788=([org.hibernate.MappingException], java.lang.Throwable)}
; {var17=org.hibernate.criterion.AbstractEmptinessExpression, var1810=r30, var2900=r1, var590=null_type, var661=r4, var1300=org.hibernate.engine.spi.SessionFactoryImplementor, var2271=r0, var1435=org.hibernate.persister.entity.EntityPersister, var543=$r2, var760=org.hibernate.persister.entity.PropertyMapping, var2011=r3, var652=org.hibernate.type.Type, var373=r5, var3618=$z0, var3783=org.hibernate.MappingException, var1097=$r32, var1174=$r31, var3720=$r12, var3558=$r13, var722=$r14, var3332=$r15, var3743=$r16, var2690=$r17, var2788=java.lang.Throwable, var977=$r37}
; {org.hibernate.criterion.AbstractEmptinessExpression=var17, r30=var1810, r1=var2900, null_type=var590, r4=var661, org.hibernate.engine.spi.SessionFactoryImplementor=var1300, r0=var2271, org.hibernate.persister.entity.EntityPersister=var1435, $r2=var543, org.hibernate.persister.entity.PropertyMapping=var760, r3=var2011, org.hibernate.type.Type=var652, r5=var373, $z0=var3618, org.hibernate.MappingException=var3783, $r32=var1097, $r31=var1174, $r12=var3720, $r13=var3558, $r14=var722, $r15=var3332, $r16=var3743, $r17=var2690, java.lang.Throwable=var2788, $r37=var977}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r30 := @this: org.hibernate.criterion.AbstractEmptinessExpression;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r0 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r2 = interfaceinvoke r0.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>(r1);	r3 = (org.hibernate.persister.entity.PropertyMapping) $r2;	r5 = interfaceinvoke r3.<org.hibernate.persister.entity.PropertyMapping: org.hibernate.type.Type toType(java.lang.String)>(r4);	$z0 = interfaceinvoke r5.<org.hibernate.type.Type: boolean isCollectionType()>();	if $z0 != 0 goto $r6 = (org.hibernate.type.CollectionType) r5;	$r32 = new org.hibernate.MappingException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property path [");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] does not reference a collection");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<org.hibernate.MappingException: void <init>(java.lang.String)>($r17);	$r37 = (java.lang.Throwable) $r32;	throw $r37
;block_num 2