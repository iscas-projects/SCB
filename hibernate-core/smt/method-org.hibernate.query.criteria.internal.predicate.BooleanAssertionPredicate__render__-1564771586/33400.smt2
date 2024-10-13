(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2129 0)
(declare-sort var268 0)
(declare-sort var1030 0)
(declare-sort var3830 0)
(declare-sort var607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun assertedValue/-2034445000 (var2129) var1030)
(declare-fun booleanValue/-1820462562 (var1030) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun expression/-2034445000 (var2129) var3830)
(declare-fun cast-from-var3830-to-var607 (var3830) var607)
(declare-fun var607_render/-1233042088 (var607 var268) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2129 var2129)
(declare-const null-Bool Bool)
(declare-const null-var268 var268)
(declare-const var3938 var2129) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate 
(assert (not (= var3938 null-var2129)))
(declare-const var3312 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3312 null-Bool)))
(declare-const var1028 var268) ; Statement: r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1028 null-var268)))
 ; Statement: if z0 == 0 goto $r12 = " = " 
(assert (= (ite var3312 1 0) 0)) ; Cond: z0 == 0 
(define-const var2579 String " = ") ; Statement: $r12 = " = " 
(assert true) ; Non Conditional
(define-const var2769 String var2579) ; Statement: r0 = $r12 
(define-const var2617 var1030 (assertedValue/-2034445000 var3938)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: java.lang.Boolean assertedValue> 
(assert true)
(define-const var2424 Bool (booleanValue/-1820462562 var2617)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 == 0 goto $r13 = "false" 
(assert (= (ite var2424 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3331 String "false") ; Statement: $r13 = "false" 
(assert true) ; Non Conditional
(define-const var259 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var259)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var259!1 String)
(assert (= var259!1 ""))
(define-const var3782 var3830 (expression/-2034445000 var3938)) ; Statement: $r4 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: javax.persistence.criteria.Expression expression> 
(define-const var2003 var607 (cast-from-var3830-to-var607 var3782)) ; Statement: $r6 = (org.hibernate.query.criteria.internal.Renderable) $r4 
(define-const var877 String (var607_render/-1233042088 var2003 var1028)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
(define-const var3847 String (append/672562846 var259!1 var877)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var259!2 String)
(assert (= var259!2 (str.++ var259!1 var877)))
(assert true)
(define-const var195 String (append/672562846 var3847 var2769)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 var2769)))
(assert true)
(define-const var3444 String (append/672562846 var195 var3331)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var195!1 String)
(assert (= var195!1 (str.++ var195 var3331)))
(assert true)
(define-const var1645 String (toString/-2075883882 var3444)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {assertedValue/-2034445000=([org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), expression/-2034445000=([org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate], javax.persistence.criteria.Expression), cast-from-var3830-to-var607=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var607_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2129=org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate, var3938=r1, var3312=z0, var268=org.hibernate.query.criteria.internal.compile.RenderingContext, var1028=r5, var2579=$r12, var2769=r0, var1030=java.lang.Boolean, var2617=$r2, var2424=$z1, var3331=$r13, var259=$r3, var3830=javax.persistence.criteria.Expression, var3782=$r4, var607=org.hibernate.query.criteria.internal.Renderable, var2003=$r6, var877=$r7, var3847=$r8, var195=$r9, var3444=$r10, var1645=$r11}
; {org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate=var2129, r1=var3938, z0=var3312, org.hibernate.query.criteria.internal.compile.RenderingContext=var268, r5=var1028, $r12=var2579, r0=var2769, java.lang.Boolean=var1030, $r2=var2617, $z1=var2424, $r13=var3331, $r3=var259, javax.persistence.criteria.Expression=var3830, $r4=var3782, org.hibernate.query.criteria.internal.Renderable=var607, $r6=var2003, $r7=var877, $r8=var3847, $r9=var195, $r10=var3444, $r11=var1645}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate;	z0 := @parameter0: boolean;	r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r12 = " = ";	$r12 = " = ";	r0 = $r12;	$r2 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: java.lang.Boolean assertedValue>;	$z1 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>();	if $z1 == 0 goto $r13 = "false";	$r13 = "false";	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: javax.persistence.criteria.Expression expression>;	$r6 = (org.hibernate.query.criteria.internal.Renderable) $r4;	$r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5