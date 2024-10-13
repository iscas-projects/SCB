(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var870 0)
(declare-sort var871 0)
(declare-sort var3642 0)
(declare-sort var2350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getOperand/575402503 (var870) var3642)
(declare-fun render/1530814564 (var2350 var871) String)
(declare-fun cast-from-var3642-to-var2350 (var3642) var2350)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var870 var870)
(declare-const null-Bool Bool)
(declare-const null-var871 var871)
(declare-const var3902 var870) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate 
(assert (not (= var3902 null-var870)))
(declare-const var811 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var811 null-Bool)))
(declare-const var2783 var871) ; Statement: r2 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var2783 null-var871)))
 ; Statement: if z0 == 0 goto $r8 = " is empty" 
(assert (= (ite var811 1 0) 0)) ; Cond: z0 == 0 
(define-const var1808 String " is empty") ; Statement: $r8 = " is empty" 
(assert true) ; Non Conditional
(define-const var641 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var641)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var641!1 String)
(assert (= var641!1 ""))
(assert true)
(define-const var2937 var3642 (getOperand/575402503 var3902)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate: org.hibernate.query.criteria.internal.path.PluralAttributePath getOperand()>() 
(assert true)
(define-const var3154 String (render/1530814564 (cast-from-var3642-to-var2350 var2937) var2783)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2) 
(assert true)
(define-const var3913 String (append/672562846 var641!1 var3154)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var641!2 String)
(assert (= var641!2 (str.++ var641!1 var3154)))
(assert true)
(define-const var2717 String (append/672562846 var3913 var1808)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3913!1 String)
(assert (= var3913!1 (str.++ var3913 var1808)))
(assert true)
(define-const var308 String (toString/-2075883882 var2717)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getOperand/575402503=([org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate], org.hibernate.query.criteria.internal.path.PluralAttributePath), render/1530814564=([org.hibernate.query.criteria.internal.path.AbstractPathImpl, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), cast-from-var3642-to-var2350=([org.hibernate.query.criteria.internal.path.PluralAttributePath], org.hibernate.query.criteria.internal.path.AbstractPathImpl), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var870=org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate, var3902=r1, var811=z0, var871=org.hibernate.query.criteria.internal.compile.RenderingContext, var2783=r2, var1808=$r8, var641=$r0, var3642=org.hibernate.query.criteria.internal.path.PluralAttributePath, var2937=$r3, var2350=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var3154=$r4, var3913=$r5, var2717=$r6, var308=$r7}
; {org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate=var870, r1=var3902, z0=var811, org.hibernate.query.criteria.internal.compile.RenderingContext=var871, r2=var2783, $r8=var1808, $r0=var641, org.hibernate.query.criteria.internal.path.PluralAttributePath=var3642, $r3=var2937, org.hibernate.query.criteria.internal.path.AbstractPathImpl=var2350, $r4=var3154, $r5=var3913, $r6=var2717, $r7=var308}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate;	z0 := @parameter0: boolean;	r2 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r8 = " is empty";	$r8 = " is empty";	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.query.criteria.internal.predicate.IsEmptyPredicate: org.hibernate.query.criteria.internal.path.PluralAttributePath getOperand()>();	$r4 = virtualinvoke $r3.<org.hibernate.query.criteria.internal.path.PluralAttributePath: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3