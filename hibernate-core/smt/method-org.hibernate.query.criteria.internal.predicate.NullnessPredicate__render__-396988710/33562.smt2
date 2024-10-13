(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var3344 0)
(declare-sort var3972 0)
(declare-sort var3013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun operand/1792597012 (var1368) var3972)
(declare-fun cast-from-var3972-to-var3013 (var3972) var3013)
(declare-fun var3013_render/-1233042088 (var3013 var3344) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun check/874796032 (var1368 Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1368 var1368)
(declare-const null-Bool Bool)
(declare-const null-var3344 var3344)
(declare-const var457 var1368) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.NullnessPredicate 
(assert (not (= var457 null-var1368)))
(declare-const var66 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var66 null-Bool)))
(declare-const var3123 var3344) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3123 null-var3344)))
(define-const var2122 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2122)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2122!1 String)
(assert (= var2122!1 ""))
(define-const var867 var3972 (operand/1792597012 var457)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.predicate.NullnessPredicate: javax.persistence.criteria.Expression operand> 
(define-const var3038 var3013 (cast-from-var3972-to-var3013 var867)) ; Statement: $r4 = (org.hibernate.query.criteria.internal.Renderable) $r2 
(define-const var3023 String (var3013_render/-1233042088 var3038 var3123)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3) 
(assert true)
(define-const var228 String (append/672562846 var2122!1 var3023)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2122!2 String)
(assert (= var2122!2 (str.++ var2122!1 var3023)))
(assert true)
(define-const var3916 String (check/874796032 var457 var66)) ; Statement: $r6 = specialinvoke r1.<org.hibernate.query.criteria.internal.predicate.NullnessPredicate: java.lang.String check(boolean)>(z0) 
(assert true)
(define-const var51 String (append/672562846 var228 var3916)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var228!1 String)
(assert (= var228!1 (str.++ var228 var3916)))
(assert true)
(define-const var739 String (toString/-2075883882 var51)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), operand/1792597012=([org.hibernate.query.criteria.internal.predicate.NullnessPredicate], javax.persistence.criteria.Expression), cast-from-var3972-to-var3013=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var3013_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), check/874796032=([org.hibernate.query.criteria.internal.predicate.NullnessPredicate, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1368=org.hibernate.query.criteria.internal.predicate.NullnessPredicate, var457=r1, var66=z0, var3344=org.hibernate.query.criteria.internal.compile.RenderingContext, var3123=r3, var2122=$r0, var3972=javax.persistence.criteria.Expression, var867=$r2, var3013=org.hibernate.query.criteria.internal.Renderable, var3038=$r4, var3023=$r5, var228=$r7, var3916=$r6, var51=$r8, var739=$r9}
; {org.hibernate.query.criteria.internal.predicate.NullnessPredicate=var1368, r1=var457, z0=var66, org.hibernate.query.criteria.internal.compile.RenderingContext=var3344, r3=var3123, $r0=var2122, javax.persistence.criteria.Expression=var3972, $r2=var867, org.hibernate.query.criteria.internal.Renderable=var3013, $r4=var3038, $r5=var3023, $r7=var228, $r6=var3916, $r8=var51, $r9=var739}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.NullnessPredicate;	z0 := @parameter0: boolean;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.query.criteria.internal.predicate.NullnessPredicate: javax.persistence.criteria.Expression operand>;	$r4 = (org.hibernate.query.criteria.internal.Renderable) $r2;	$r5 = interfaceinvoke $r4.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r3);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = specialinvoke r1.<org.hibernate.query.criteria.internal.predicate.NullnessPredicate: java.lang.String check(boolean)>(z0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1