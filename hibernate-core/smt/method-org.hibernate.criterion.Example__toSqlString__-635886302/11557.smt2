(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3062 0)
(declare-sort var3116 0)
(declare-sort var3765 0)
(declare-sort var2894 0)
(declare-sort var1386 0)
(declare-sort var3914 0)
(declare-sort var1222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3765_getFactory/960862227 (var3765) var2894)
(declare-fun var3765_getEntityName/167429849 (var3765 var3116) String)
(declare-fun var2894_getEntityPersister/1301528620 (var2894 String) var1386)
(declare-fun var1386_getPropertyNames/371230063 (var1386) (Array Int String))
(declare-fun var1386_getPropertyTypes/-1553741359 (var1386) (Array Int var3914))
(declare-fun exampleEntity/785097815 (var3062) var1222)
(declare-fun var1386_getPropertyValues/-64559674 (var1386 var1222) (Array Int var1222))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3062 var3062)
(declare-const null-var3116 var3116)
(declare-const null-var3765 var3765)
(declare-const var1670 var3062) ; Statement: r9 := @this: org.hibernate.criterion.Example 
(assert (not (= var1670 null-var3062)))
(declare-const var590 var3116) ; Statement: r3 := @parameter0: org.hibernate.Criteria 
(assert (not (= var590 null-var3116)))
(declare-const var2286 var3765) ; Statement: r2 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2286 null-var3765)))
(define-const var3176 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3176)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3176!1 String)
(assert (= var3176!1 ""))
(assert true)
(define-const var2046 String (append/-1166366385 var3176!1 40)) ; Statement: r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3176!2 String)
(assert (str.prefixof var3176!1 var3176!2))
(define-const var3961 var2894 (var3765_getFactory/960862227 var2286)) ; Statement: $r5 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3337 String (var3765_getEntityName/167429849 var2286 var590)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: java.lang.String getEntityName(org.hibernate.Criteria)>(r3) 
(define-const var3589 var1386 (var2894_getEntityPersister/1301528620 var3961 var3337)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>($r4) 
(define-const var3393 (Array Int String) (var1386_getPropertyNames/371230063 var3589)) ; Statement: r7 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: java.lang.String[] getPropertyNames()>() 
(define-const var1288 (Array Int var3914) (var1386_getPropertyTypes/-1553741359 var3589)) ; Statement: r8 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type[] getPropertyTypes()>() 
(define-const var3362 var1222 (exampleEntity/785097815 var1670)) ; Statement: $r10 = r9.<org.hibernate.criterion.Example: java.lang.Object exampleEntity> 
(define-const var1774 (Array Int var1222) (var1386_getPropertyValues/-64559674 var3589 var3362)) ; Statement: r11 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: java.lang.Object[] getPropertyValues(java.lang.Object)>($r10) 
(define-const var1539 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1069 Int (getLength-Arr-String-1 var3393)) ; Statement: $i0 = lengthof r7 
 ; Statement: if i3 >= $i0 goto $i1 = virtualinvoke r1.<java.lang.StringBuilder: int length()>() 
(assert (>= var1539 var1069)) ; Cond: i3 >= $i0 
(assert true)
(define-const var3481 Int (length/-171891354 var2046)) ; Statement: $i1 = virtualinvoke r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 != 1 goto $r12 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (not (= var3481 1))) ; Cond: $i1 != 1 
(assert true)
(define-const var2986 String (append/-1166366385 var2046 41)) ; Statement: $r12 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2046!1 String)
(assert (str.prefixof var2046 var2046!1))
(assert true)
(define-const var2971 String (toString/-2075883882 var2986)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3765_getFactory/960862227=([org.hibernate.criterion.CriteriaQuery], org.hibernate.engine.spi.SessionFactoryImplementor), var3765_getEntityName/167429849=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria], java.lang.String), var2894_getEntityPersister/1301528620=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var1386_getPropertyNames/371230063=([org.hibernate.persister.entity.EntityPersister], java.lang.String[]), var1386_getPropertyTypes/-1553741359=([org.hibernate.persister.entity.EntityPersister], org.hibernate.type.Type[]), exampleEntity/785097815=([org.hibernate.criterion.Example], java.lang.Object), var1386_getPropertyValues/-64559674=([org.hibernate.persister.entity.EntityPersister, java.lang.Object], java.lang.Object[]), getLength-Arr-String-1=([java.lang.String[]], int), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3062=org.hibernate.criterion.Example, var1670=r9, var3116=org.hibernate.Criteria, var590=r3, var3765=org.hibernate.criterion.CriteriaQuery, var2286=r2, var3176=$r0, var2046=r1, var2894=org.hibernate.engine.spi.SessionFactoryImplementor, var3961=$r5, var3337=$r4, var1386=org.hibernate.persister.entity.EntityPersister, var3589=r6, var3393=r7, var3914=org.hibernate.type.Type, var1288=r8, var1222=java.lang.Object, var3362=$r10, var1774=r11, var1539=i3, var1069=$i0, var3481=$i1, var2986=$r12, var2971=$r13}
; {org.hibernate.criterion.Example=var3062, r9=var1670, org.hibernate.Criteria=var3116, r3=var590, org.hibernate.criterion.CriteriaQuery=var3765, r2=var2286, $r0=var3176, r1=var2046, org.hibernate.engine.spi.SessionFactoryImplementor=var2894, $r5=var3961, $r4=var3337, org.hibernate.persister.entity.EntityPersister=var1386, r6=var3589, r7=var3393, org.hibernate.type.Type=var3914, r8=var1288, java.lang.Object=var1222, $r10=var3362, r11=var1774, i3=var1539, $i0=var1069, $i1=var3481, $r12=var2986, $r13=var2971}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.criterion.Example;	r3 := @parameter0: org.hibernate.Criteria;	r2 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = interfaceinvoke r2.<org.hibernate.criterion.CriteriaQuery: java.lang.String getEntityName(org.hibernate.Criteria)>(r3);	r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.entity.EntityPersister getEntityPersister(java.lang.String)>($r4);	r7 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: java.lang.String[] getPropertyNames()>();	r8 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type[] getPropertyTypes()>();	$r10 = r9.<org.hibernate.criterion.Example: java.lang.Object exampleEntity>;	r11 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: java.lang.Object[] getPropertyValues(java.lang.Object)>($r10);	i3 = 0;	$i0 = lengthof r7;	if i3 >= $i0 goto $i1 = virtualinvoke r1.<java.lang.StringBuilder: int length()>();	$i1 = virtualinvoke r1.<java.lang.StringBuilder: int length()>();	if $i1 != 1 goto $r12 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r12 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 4