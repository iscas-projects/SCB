(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3266 0)
(declare-sort var143 0)
(declare-sort var2690 0)
(declare-sort var727 0)
(declare-sort var3251 0)
(declare-sort var2798 0)
(declare-sort var1541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nameCriteriaInfoMap/333213257 (var3266) var2690)
(declare-fun var2690_get/1088891777 (var2690 var727) var727)
(declare-fun cast-from-String-to-var727 (String) var727)
(declare-fun cast-from-var727-to-var3251 (var727) var3251)
(declare-fun var2798-init () var2798)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2798 String) void)
(declare-fun cast-from-var2798-to-var1541 (var2798) var1541)
(declare-const null-var3266 var3266)
(declare-const null-String String)
(declare-const null-var3251 var3251)
(declare-const var360 var3266) ; Statement: r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var360 null-var3266)))
(declare-const var2282 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2282 null-String)))
(define-const var2346 var2690 (nameCriteriaInfoMap/333213257 var360)) ; Statement: $r2 = r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.util.Map nameCriteriaInfoMap> 
(define-const var2235 var727 (var2690_get/1088891777 var2346 (cast-from-String-to-var727 var2282))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var684 var3251 (cast-from-var727-to-var3251 var2235)) ; Statement: r4 = (org.hibernate.loader.criteria.CriteriaInfoProvider) $r3 
 ; Statement: if r4 != null goto $r5 = interfaceinvoke r4.<org.hibernate.loader.criteria.CriteriaInfoProvider: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>() 
(assert (not (not (= var684 null-var3251)))) ; Negate: Cond: r4 != null  
(define-const var2133 var2798 var2798-init) ; Statement: $r12 = new org.hibernate.HibernateException 
(define-const var3348 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3348)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3348!1 String)
(assert (= var3348!1 ""))
(assert true)
(define-const var621 String (append/672562846 var3348!1 "Unknown entity: ")) ; Statement: $r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown entity: ") 
(declare-const var3348!2 String)
(assert (= var3348!2 (str.++ var3348!1 "Unknown entity: ")))
(assert true)
(define-const var1108 String (append/672562846 var621 var2282)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var621!1 String)
(assert (= var621!1 (str.++ var621 var2282)))
(assert true)
(define-const var1748 String (toString/-2075883882 var1108)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2133 var1748)) ; Statement: specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10) 

(declare-const var2133!1 var2798)
(declare-const var1748!1 String)
(define-const var84 var1541 (cast-from-var2798-to-var1541 var2133!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {nameCriteriaInfoMap/333213257=([org.hibernate.loader.criteria.CriteriaQueryTranslator], java.util.Map), var2690_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var727=([java.lang.String], java.lang.Object), cast-from-var727-to-var3251=([java.lang.Object], org.hibernate.loader.criteria.CriteriaInfoProvider), var2798-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2798-to-var1541=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3266=org.hibernate.loader.criteria.CriteriaQueryTranslator, var360=r0, var2282=r1, var143=null_type, var2690=java.util.Map, var2346=$r2, var727=java.lang.Object, var2235=$r3, var3251=org.hibernate.loader.criteria.CriteriaInfoProvider, var684=r4, var2798=org.hibernate.HibernateException, var2133=$r12, var3348=$r11, var621=$r8, var1108=$r9, var1748=$r10, var1541=java.lang.Throwable, var84=$r13}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var3266, r0=var360, r1=var2282, null_type=var143, java.util.Map=var2690, $r2=var2346, java.lang.Object=var727, $r3=var2235, org.hibernate.loader.criteria.CriteriaInfoProvider=var3251, r4=var684, org.hibernate.HibernateException=var2798, $r12=var2133, $r11=var3348, $r8=var621, $r9=var1108, $r10=var1748, java.lang.Throwable=var1541, $r13=var84}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.util.Map nameCriteriaInfoMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.loader.criteria.CriteriaInfoProvider) $r3;	if r4 != null goto $r5 = interfaceinvoke r4.<org.hibernate.loader.criteria.CriteriaInfoProvider: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>();	$r12 = new org.hibernate.HibernateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown entity: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2