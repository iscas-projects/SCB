(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2446 0)
(declare-sort var3366 0)
(declare-sort var2150 0)
(declare-sort var2915 0)
(declare-sort var3207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun assertedValue/-2034445000 (var2446) var2150)
(declare-fun booleanValue/-1820462562 (var2150) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun expression/-2034445000 (var2446) var2915)
(declare-fun cast-from-var2915-to-var3207 (var2915) var3207)
(declare-fun var3207_render/-1233042088 (var3207 var3366) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2446 var2446)
(declare-const null-Bool Bool)
(declare-const null-var3366 var3366)
(declare-const var3338 var2446) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate 
(assert (not (= var3338 null-var2446)))
(declare-const var808 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var808 null-Bool)))
(declare-const var1770 var3366) ; Statement: r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1770 null-var3366)))
 ; Statement: if z0 == 0 goto $r12 = " = " 
(assert (not (= (ite var808 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3736 String " <> ") ; Statement: $r12 = " <> " 
 ; Statement: goto [?= r0 = $r12] 
(assert true) ; Non Conditional
(define-const var1923 String var3736) ; Statement: r0 = $r12 
(define-const var1933 var2150 (assertedValue/-2034445000 var3338)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: java.lang.Boolean assertedValue> 
(assert true)
(define-const var1512 Bool (booleanValue/-1820462562 var1933)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 == 0 goto $r13 = "false" 
(assert (= (ite var1512 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2480 String "false") ; Statement: $r13 = "false" 
(assert true) ; Non Conditional
(define-const var1366 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1366)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1366!1 String)
(assert (= var1366!1 ""))
(define-const var494 var2915 (expression/-2034445000 var3338)) ; Statement: $r4 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: javax.persistence.criteria.Expression expression> 
(define-const var1522 var3207 (cast-from-var2915-to-var3207 var494)) ; Statement: $r6 = (org.hibernate.query.criteria.internal.Renderable) $r4 
(define-const var3791 String (var3207_render/-1233042088 var1522 var1770)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
(define-const var3829 String (append/672562846 var1366!1 var3791)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1366!2 String)
(assert (= var1366!2 (str.++ var1366!1 var3791)))
(assert true)
(define-const var3612 String (append/672562846 var3829 var1923)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3829!1 String)
(assert (= var3829!1 (str.++ var3829 var1923)))
(assert true)
(define-const var1551 String (append/672562846 var3612 var2480)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3612!1 String)
(assert (= var3612!1 (str.++ var3612 var2480)))
(assert true)
(define-const var2615 String (toString/-2075883882 var1551)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {assertedValue/-2034445000=([org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), expression/-2034445000=([org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate], javax.persistence.criteria.Expression), cast-from-var2915-to-var3207=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var3207_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2446=org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate, var3338=r1, var808=z0, var3366=org.hibernate.query.criteria.internal.compile.RenderingContext, var1770=r5, var3736=$r12, var1923=r0, var2150=java.lang.Boolean, var1933=$r2, var1512=$z1, var2480=$r13, var1366=$r3, var2915=javax.persistence.criteria.Expression, var494=$r4, var3207=org.hibernate.query.criteria.internal.Renderable, var1522=$r6, var3791=$r7, var3829=$r8, var3612=$r9, var1551=$r10, var2615=$r11}
; {org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate=var2446, r1=var3338, z0=var808, org.hibernate.query.criteria.internal.compile.RenderingContext=var3366, r5=var1770, $r12=var3736, r0=var1923, java.lang.Boolean=var2150, $r2=var1933, $z1=var1512, $r13=var2480, $r3=var1366, javax.persistence.criteria.Expression=var2915, $r4=var494, org.hibernate.query.criteria.internal.Renderable=var3207, $r6=var1522, $r7=var3791, $r8=var3829, $r9=var3612, $r10=var1551, $r11=var2615}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate;	z0 := @parameter0: boolean;	r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r12 = " = ";	$r12 = " <> ";	goto [?= r0 = $r12];	r0 = $r12;	$r2 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: java.lang.Boolean assertedValue>;	$z1 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>();	if $z1 == 0 goto $r13 = "false";	$r13 = "false";	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: javax.persistence.criteria.Expression expression>;	$r6 = (org.hibernate.query.criteria.internal.Renderable) $r4;	$r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5