(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3312 0)
(declare-sort var3092 0)
(declare-sort var269 0)
(declare-sort var2733 0)
(declare-sort var3509 0)
(declare-sort var113 0)
(declare-sort var688 0)
(declare-sort var3631 0)
(declare-sort var2596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEntityName/943996358 (var3312 var3092) String)
(declare-fun getPropertyMapping/-1647129805 (var3312 String) var2733)
(declare-fun cast-from-var2733-to-var3509 (var2733) var3509)
(declare-fun var3509_getPropertyType/-1916908419 (var3509 String) var113)
(declare-fun var688-init () var688)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3631) String)
(declare-fun cast-from-var113-to-var3631 (var113) var3631)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var688 String) void)
(declare-fun cast-from-var688-to-var2596 (var688) var2596)
(declare-const null-var3312 var3312)
(declare-const null-var3092 var3092)
(declare-const null-String String)
(declare-const var3312-$assertionsDisabled Bool)
(declare-const var2287 var3312) ; Statement: r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var2287 null-var3312)))
(declare-const var1378 var3092) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var1378 null-var3092)))
(declare-const var1241 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1241 null-String)))
(assert true)
(define-const var1801 String (getEntityName/943996358 var2287 var1378)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r1) 
(assert true)
(define-const var713 var2733 (getPropertyMapping/-1647129805 var2287 var1801)) ; Statement: r3 = specialinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r2) 
(define-const var2125 Bool var3312-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.loader.criteria.CriteriaQueryTranslator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.EntityPersister) r3 
(assert (not (= (ite var2125 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1094 var3509 (cast-from-var2733-to-var3509 var713)) ; Statement: $r5 = (org.hibernate.persister.entity.EntityPersister) r3 
(define-const var3736 var113 (var3509_getPropertyType/-1916908419 var1094 var1241)) ; Statement: $r13 = interfaceinvoke $r5.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r4) 
(define-const var766 Bool true) ; Statement: $z1 = $r13 instanceof org.hibernate.type.ManyToOneType 
 ; Statement: if $z1 != 0 goto $r6 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, r4) 
(assert (not (not (= (ite var766 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1604 var688 var688-init) ; Statement: $r17 = new org.hibernate.QueryException 
(define-const var2691 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2691)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2691!1 String)
(assert (= var2691!1 ""))
(assert true)
(define-const var3254 String (append/672562846 var2691!1 "Argument to fk() function must be the fk owner of a to-one association, but found ")) ; Statement: $r10 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Argument to fk() function must be the fk owner of a to-one association, but found ") 
(declare-const var2691!2 String)
(assert (= var2691!2 (str.++ var2691!1 "Argument to fk() function must be the fk owner of a to-one association, but found ")))
(assert true)
(define-const var3799 String (append/-1031950772 var3254 (cast-from-var113-to-var3631 var3736))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var3254!1 String)
(assert (str.prefixof var3254 var3254!1))
(assert true)
(define-const var1374 String (toString/-2075883882 var3799)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var1604 var1374)) ; Statement: specialinvoke $r17.<org.hibernate.QueryException: void <init>(java.lang.String)>($r12) 

(declare-const var1604!1 var688)
(declare-const var1374!1 String)
(define-const var1099 var2596 (cast-from-var688-to-var2596 var1604!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {getEntityName/943996358=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.Criteria], java.lang.String), getPropertyMapping/-1647129805=([org.hibernate.loader.criteria.CriteriaQueryTranslator, java.lang.String], org.hibernate.persister.entity.PropertyMapping), cast-from-var2733-to-var3509=([org.hibernate.persister.entity.PropertyMapping], org.hibernate.persister.entity.EntityPersister), var3509_getPropertyType/-1916908419=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.type.Type), var688-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var113-to-var3631=([org.hibernate.type.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var688-to-var2596=([org.hibernate.QueryException], java.lang.Throwable)}
; {var3312=org.hibernate.loader.criteria.CriteriaQueryTranslator, var2287=r0, var3092=org.hibernate.Criteria, var1378=r1, var1241=r4, var269=null_type, var1801=$r2, var2733=org.hibernate.persister.entity.PropertyMapping, var713=r3, var2125=$z0, var3509=org.hibernate.persister.entity.EntityPersister, var1094=$r5, var113=org.hibernate.type.Type, var3736=$r13, var766=$z1, var688=org.hibernate.QueryException, var1604=$r17, var2691=$r16, var3254=$r10, var3631=java.lang.Object, var3799=$r11, var1374=$r12, var2596=java.lang.Throwable, var1099=$r18}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var3312, r0=var2287, org.hibernate.Criteria=var3092, r1=var1378, r4=var1241, null_type=var269, $r2=var1801, org.hibernate.persister.entity.PropertyMapping=var2733, r3=var713, $z0=var2125, org.hibernate.persister.entity.EntityPersister=var3509, $r5=var1094, org.hibernate.type.Type=var113, $r13=var3736, $z1=var766, org.hibernate.QueryException=var688, $r17=var1604, $r16=var2691, $r10=var3254, java.lang.Object=var3631, $r11=var3799, $r12=var1374, java.lang.Throwable=var2596, $r18=var1099}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r1 := @parameter0: org.hibernate.Criteria;	r4 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r1);	r3 = specialinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r2);	$z0 = <org.hibernate.loader.criteria.CriteriaQueryTranslator: boolean $assertionsDisabled>;	if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.EntityPersister) r3;	$r5 = (org.hibernate.persister.entity.EntityPersister) r3;	$r13 = interfaceinvoke $r5.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r4);	$z1 = $r13 instanceof org.hibernate.type.ManyToOneType;	if $z1 != 0 goto $r6 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria,java.lang.String)>(r1, r4);	$r17 = new org.hibernate.QueryException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Argument to fk() function must be the fk owner of a to-one association, but found ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.QueryException: void <init>(java.lang.String)>($r12);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 3