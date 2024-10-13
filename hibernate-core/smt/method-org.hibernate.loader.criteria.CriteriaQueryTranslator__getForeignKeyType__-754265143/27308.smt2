(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2782 0)
(declare-sort var1686 0)
(declare-sort var64 0)
(declare-sort var1368 0)
(declare-sort var2288 0)
(declare-sort var3149 0)
(declare-sort var3019 0)
(declare-sort var3321 0)
(declare-sort var118 0)
(declare-sort var1873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEntityName/943996358 (var2782 var1686) String)
(declare-fun getPropertyMapping/-1647129805 (var2782 String) var1368)
(declare-fun cast-from-var1368-to-var2288 (var1368) var2288)
(declare-fun var3019_getPropertyType/-1916908419 (var3019 String) var3149)
(declare-fun cast-from-var2288-to-var3019 (var2288) var3019)
(declare-fun var3321-init () var3321)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var118) String)
(declare-fun cast-from-var3149-to-var118 (var3149) var118)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var3321 String) void)
(declare-fun cast-from-var3321-to-var1873 (var3321) var1873)
(declare-const null-var2782 var2782)
(declare-const null-var1686 var1686)
(declare-const null-String String)
(declare-const var549 var2782) ; Statement: r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var549 null-var2782)))
(declare-const var1098 var1686) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var1098 null-var1686)))
(declare-const var95 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var95 null-String)))
(assert true)
(define-const var1283 String (getEntityName/943996358 var549 var1098)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r1) 
(assert true)
(define-const var3779 var1368 (getPropertyMapping/-1647129805 var549 var1283)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r2) 
(define-const var1007 var2288 (cast-from-var1368-to-var2288 var3779)) ; Statement: $r5 = (org.hibernate.persister.entity.Loadable) $r3 
(define-const var1176 var3149 (var3019_getPropertyType/-1916908419 (cast-from-var2288-to-var3019 var1007) var95)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.persister.entity.Loadable: org.hibernate.type.Type getPropertyType(java.lang.String)>(r4) 
(define-const var2499 Bool true) ; Statement: $z0 = r6 instanceof org.hibernate.type.ManyToOneType 
 ; Statement: if $z0 != 0 goto $r8 = (org.hibernate.type.ManyToOneType) r6 
(assert (not (not (= (ite var2499 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2119 var3321 var3321-init) ; Statement: $r16 = new org.hibernate.QueryException 
(define-const var73 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var73)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var73!1 String)
(assert (= var73!1 ""))
(assert true)
(define-const var288 String (append/672562846 var73!1 "Argument to fk() function must be the fk owner of a to-one association, but found ")) ; Statement: $r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Argument to fk() function must be the fk owner of a to-one association, but found ") 
(declare-const var73!2 String)
(assert (= var73!2 (str.++ var73!1 "Argument to fk() function must be the fk owner of a to-one association, but found ")))
(assert true)
(define-const var28 String (append/-1031950772 var288 (cast-from-var3149-to-var118 var1176))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var288!1 String)
(assert (str.prefixof var288 var288!1))
(assert true)
(define-const var2678 String (toString/-2075883882 var28)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2119 var2678)) ; Statement: specialinvoke $r16.<org.hibernate.QueryException: void <init>(java.lang.String)>($r14) 

(declare-const var2119!1 var3321)
(declare-const var2678!1 String)
(define-const var1701 var1873 (cast-from-var3321-to-var1873 var2119!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getEntityName/943996358=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.Criteria], java.lang.String), getPropertyMapping/-1647129805=([org.hibernate.loader.criteria.CriteriaQueryTranslator, java.lang.String], org.hibernate.persister.entity.PropertyMapping), cast-from-var1368-to-var2288=([org.hibernate.persister.entity.PropertyMapping], org.hibernate.persister.entity.Loadable), var3019_getPropertyType/-1916908419=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.type.Type), cast-from-var2288-to-var3019=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.EntityPersister), var3321-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3149-to-var118=([org.hibernate.type.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3321-to-var1873=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2782=org.hibernate.loader.criteria.CriteriaQueryTranslator, var549=r0, var1686=org.hibernate.Criteria, var1098=r1, var95=r4, var64=null_type, var1283=$r2, var1368=org.hibernate.persister.entity.PropertyMapping, var3779=$r3, var2288=org.hibernate.persister.entity.Loadable, var1007=$r5, var3149=org.hibernate.type.Type, var3019=org.hibernate.persister.entity.EntityPersister, var1176=r6, var2499=$z0, var3321=org.hibernate.QueryException, var2119=$r16, var73=$r15, var288=$r12, var118=java.lang.Object, var28=$r13, var2678=$r14, var1873=java.lang.Throwable, var1701=$r17}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var2782, r0=var549, org.hibernate.Criteria=var1686, r1=var1098, r4=var95, null_type=var64, $r2=var1283, org.hibernate.persister.entity.PropertyMapping=var1368, $r3=var3779, org.hibernate.persister.entity.Loadable=var2288, $r5=var1007, org.hibernate.type.Type=var3149, org.hibernate.persister.entity.EntityPersister=var3019, r6=var1176, $z0=var2499, org.hibernate.QueryException=var3321, $r16=var2119, $r15=var73, $r12=var288, java.lang.Object=var118, $r13=var28, $r14=var2678, java.lang.Throwable=var1873, $r17=var1701}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r1 := @parameter0: org.hibernate.Criteria;	r4 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r1);	$r3 = specialinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.persister.entity.PropertyMapping getPropertyMapping(java.lang.String)>($r2);	$r5 = (org.hibernate.persister.entity.Loadable) $r3;	r6 = interfaceinvoke $r5.<org.hibernate.persister.entity.Loadable: org.hibernate.type.Type getPropertyType(java.lang.String)>(r4);	$z0 = r6 instanceof org.hibernate.type.ManyToOneType;	if $z0 != 0 goto $r8 = (org.hibernate.type.ManyToOneType) r6;	$r16 = new org.hibernate.QueryException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Argument to fk() function must be the fk owner of a to-one association, but found ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.QueryException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2