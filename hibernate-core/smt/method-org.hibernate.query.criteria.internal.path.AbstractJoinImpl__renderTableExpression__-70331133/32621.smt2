(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3185 0)
(declare-sort var2548 0)
(declare-sort var2021 0)
(declare-sort var3746 0)
(declare-sort var3452 0)
(declare-sort var3767 0)
(declare-sort var3725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prepareAlias/-1943587451 (var2021 var2548) void)
(declare-fun cast-from-var3185-to-var2021 (var3185) var2021)
(declare-fun getParent/-961979812 (var3185) var3746)
(declare-fun cast-from-var3746-to-var3452 (var3746) var3452)
(declare-fun var3452_prepareAlias/-541012 (var3452 var2548) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3746_getAlias/1760043460 (var3746) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getAttribute/-1229494511 (var3185) var3767)
(declare-fun var3767_getName/782728034 (var3767) String)
(declare-fun getAlias/951562137 (var2021) String)
(declare-fun suppliedJoinCondition/-282013017 (var3185) var3725)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3185 var3185)
(declare-const null-var2548 var2548)
(declare-const null-var3725 var3725)
(declare-const var2346 var3185) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.AbstractJoinImpl 
(assert (not (= var2346 null-var3185)))
(declare-const var3222 var2548) ; Statement: r1 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3222 null-var2548)))
(assert true)
;(assert (prepareAlias/-1943587451 (cast-from-var3185-to-var2021 var2346) var3222)) ; Statement: virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r1) 

(declare-const var2346!1 var3185)
(declare-const var3222!1 var2548)
(assert true)
(define-const var2941 var3746 (getParent/-961979812 var2346!1)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: javax.persistence.criteria.From getParent()>() 
(define-const var2775 var3452 (cast-from-var3746-to-var3452 var2941)) ; Statement: $r3 = (org.hibernate.query.criteria.internal.FromImplementor) $r2 
;(assert (var3452_prepareAlias/-541012 var2775 var3222!1)) ; Statement: interfaceinvoke $r3.<org.hibernate.query.criteria.internal.FromImplementor: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r1) 

(declare-const var2775!1 var3452)
(declare-const var3222!2 var2548)
(define-const var2795 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2795)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2795!1 String)
(assert (= var2795!1 ""))
(assert true)
(define-const var1960 var3746 (getParent/-961979812 var2346!1)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: javax.persistence.criteria.From getParent()>() 
(define-const var2843 String (var3746_getAlias/1760043460 var1960)) ; Statement: $r6 = interfaceinvoke $r5.<javax.persistence.criteria.From: java.lang.String getAlias()>() 
(assert true)
(define-const var917 String (append/672562846 var2795!1 var2843)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2795!2 String)
(assert (= var2795!2 (str.++ var2795!1 var2843)))
(assert true)
(define-const var3786 String (append/-1166366385 var917 46)) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var917!1 String)
(assert (str.prefixof var917 var917!1))
(assert true)
(define-const var263 var3767 (getAttribute/-1229494511 var2346!1)) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: javax.persistence.metamodel.Attribute getAttribute()>() 
(define-const var492 String (var3767_getName/782728034 var263)) ; Statement: $r9 = interfaceinvoke $r8.<javax.persistence.metamodel.Attribute: java.lang.String getName()>() 
(assert true)
(define-const var1987 String (append/672562846 var3786 var492)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3786!1 String)
(assert (= var3786!1 (str.++ var3786 var492)))
(assert true)
(define-const var2290 String (append/672562846 var1987 " as ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ") 
(declare-const var1987!1 String)
(assert (= var1987!1 (str.++ var1987 " as ")))
(assert true)
(define-const var2223 String (getAlias/951562137 (cast-from-var3185-to-var2021 var2346!1))) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: java.lang.String getAlias()>() 
(assert true)
;(assert (append/672562846 var2290 var2223)) ; Statement: virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2290!1 String)
(assert (= var2290!1 (str.++ var2290 var2223)))
(define-const var2032 var3725 (suppliedJoinCondition/-282013017 var2346!1)) ; Statement: $r14 = r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: javax.persistence.criteria.Predicate suppliedJoinCondition> 
 ; Statement: if $r14 == null goto $r15 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2032 null-var3725)) ; Cond: $r14 == null 
(assert true)
(define-const var1966 String (toString/-2075883882 var2795!2)) ; Statement: $r15 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {prepareAlias/-1943587451=([org.hibernate.query.criteria.internal.path.AbstractFromImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], void), cast-from-var3185-to-var2021=([org.hibernate.query.criteria.internal.path.AbstractJoinImpl], org.hibernate.query.criteria.internal.path.AbstractFromImpl), getParent/-961979812=([org.hibernate.query.criteria.internal.path.AbstractJoinImpl], javax.persistence.criteria.From), cast-from-var3746-to-var3452=([javax.persistence.criteria.From], org.hibernate.query.criteria.internal.FromImplementor), var3452_prepareAlias/-541012=([org.hibernate.query.criteria.internal.FromImplementor, org.hibernate.query.criteria.internal.compile.RenderingContext], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3746_getAlias/1760043460=([javax.persistence.criteria.From], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getAttribute/-1229494511=([org.hibernate.query.criteria.internal.path.AbstractJoinImpl], javax.persistence.metamodel.Attribute), var3767_getName/782728034=([javax.persistence.metamodel.Attribute], java.lang.String), getAlias/951562137=([org.hibernate.query.criteria.internal.path.AbstractFromImpl], java.lang.String), suppliedJoinCondition/-282013017=([org.hibernate.query.criteria.internal.path.AbstractJoinImpl], javax.persistence.criteria.Predicate), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3185=org.hibernate.query.criteria.internal.path.AbstractJoinImpl, var2346=r0, var2548=org.hibernate.query.criteria.internal.compile.RenderingContext, var3222=r1, var2021=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var3746=javax.persistence.criteria.From, var2941=$r2, var3452=org.hibernate.query.criteria.internal.FromImplementor, var2775=$r3, var2795=$r4, var1960=$r5, var2843=$r6, var917=$r7, var3786=$r10, var3767=javax.persistence.metamodel.Attribute, var263=$r8, var492=$r9, var1987=$r11, var2290=$r13, var2223=$r12, var3725=javax.persistence.criteria.Predicate, var2032=$r14, var1966=$r15}
; {org.hibernate.query.criteria.internal.path.AbstractJoinImpl=var3185, r0=var2346, org.hibernate.query.criteria.internal.compile.RenderingContext=var2548, r1=var3222, org.hibernate.query.criteria.internal.path.AbstractFromImpl=var2021, javax.persistence.criteria.From=var3746, $r2=var2941, org.hibernate.query.criteria.internal.FromImplementor=var3452, $r3=var2775, $r4=var2795, $r5=var1960, $r6=var2843, $r7=var917, $r10=var3786, javax.persistence.metamodel.Attribute=var3767, $r8=var263, $r9=var492, $r11=var1987, $r13=var2290, $r12=var2223, javax.persistence.criteria.Predicate=var3725, $r14=var2032, $r15=var1966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.AbstractJoinImpl;	r1 := @parameter0: org.hibernate.query.criteria.internal.compile.RenderingContext;	virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r1);	$r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: javax.persistence.criteria.From getParent()>();	$r3 = (org.hibernate.query.criteria.internal.FromImplementor) $r2;	interfaceinvoke $r3.<org.hibernate.query.criteria.internal.FromImplementor: void prepareAlias(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r1);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: javax.persistence.criteria.From getParent()>();	$r6 = interfaceinvoke $r5.<javax.persistence.criteria.From: java.lang.String getAlias()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r8 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: javax.persistence.metamodel.Attribute getAttribute()>();	$r9 = interfaceinvoke $r8.<javax.persistence.metamodel.Attribute: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as ");	$r12 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: java.lang.String getAlias()>();	virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r14 = r0.<org.hibernate.query.criteria.internal.path.AbstractJoinImpl: javax.persistence.criteria.Predicate suppliedJoinCondition>;	if $r14 == null goto $r15 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2