(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1234 0)
(declare-sort var3779 0)
(declare-sort var2056 0)
(declare-sort var2307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getOperand/575402503 (var1234) var2056)
(declare-fun render/1530814564 (var2307 var3779) String)
(declare-fun cast-from-var2056-to-var2307 (var2056) var2307)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1234 var1234)
(declare-const null-Bool Bool)
(declare-const null-var3779 var3779)
(declare-const var231 var1234) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate 
(assert (not (= var231 null-var1234)))
(declare-const var3406 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3406 null-Bool)))
(declare-const var3165 var3779) ; Statement: r2 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3165 null-var3779)))
 ; Statement: if z0 == 0 goto $r8 = " is empty" 
(assert (not (= (ite var3406 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3258 String " is not empty") ; Statement: $r8 = " is not empty" 
 ; Statement: goto [?= $r0 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1078 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1078)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1078!1 String)
(assert (= var1078!1 ""))
(assert true)
(define-const var1576 var2056 (getOperand/575402503 var231)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate: org.hibernate.query.criteria.internal.path.PluralAttributePath getOperand()>() 
(assert true)
(define-const var1453 String (render/1530814564 (cast-from-var2056-to-var2307 var1576) var3165)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var3114 String (append/672562846 var1078!1 var1453)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1078!2 String)
(assert (= var1078!2 (str.++ var1078!1 var1453)))
(assert true)
(define-const var314 String (append/672562846 var3114 var3258)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3114!1 String)
(assert (= var3114!1 (str.++ var3114 var3258)))
(assert true)
(define-const var362 String (toString/-2075883882 var314)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getOperand/575402503=([org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate], org.hibernate.query.criteria.internal.path.PluralAttributePath), render/1530814564=([org.hibernate.query.criteria.internal.path.AbstractPathImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var2056-to-var2307=([org.hibernate.query.criteria.internal.path.PluralAttributePath], org.hibernate.query.criteria.internal.path.AbstractPathImpl), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1234=org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate, var231=r1, var3406=z0, var3779=org.hibernate.query.criteria.internal.compile.RenderingContext, var3165=r2, var3258=$r8, var1078=$r0, var2056=org.hibernate.query.criteria.internal.path.PluralAttributePath, var1576=$r3, var2307=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var1453=$r4, var3114=$r5, var314=$r6, var362=$r7}
; {org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate=var1234, r1=var231, z0=var3406, org.hibernate.query.criteria.internal.compile.RenderingContext=var3779, r2=var3165, $r8=var3258, $r0=var1078, org.hibernate.query.criteria.internal.path.PluralAttributePath=var2056, $r3=var1576, org.hibernate.query.criteria.internal.path.AbstractPathImpl=var2307, $r4=var1453, $r5=var3114, $r6=var314, $r7=var362}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate;	z0 := @parameter0: boolean;	r2 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r8 = " is empty";	$r8 = " is not empty";	goto [?= $r0 = new java.lang.StringBuilder];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate: org.hibernate.query.criteria.internal.path.PluralAttributePath getOperand()>();	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3