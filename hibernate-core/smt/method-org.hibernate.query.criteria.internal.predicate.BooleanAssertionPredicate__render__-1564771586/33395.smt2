(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2156 0)
(declare-sort var1283 0)
(declare-sort var2826 0)
(declare-sort var483 0)
(declare-sort var3377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun assertedValue/-2034445000 (var2156) var2826)
(declare-fun booleanValue/-1820462562 (var2826) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun expression/-2034445000 (var2156) var483)
(declare-fun cast-from-var483-to-var3377 (var483) var3377)
(declare-fun var3377_render/-1233042088 (var3377 var1283) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2156 var2156)
(declare-const null-Bool Bool)
(declare-const null-var1283 var1283)
(declare-const var1035 var2156) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate 
(assert (not (= var1035 null-var2156)))
(declare-const var78 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var78 null-Bool)))
(declare-const var1750 var1283) ; Statement: r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var1750 null-var1283)))
 ; Statement: if z0 == 0 goto $r12 = " = " 
(assert (= (ite var78 1 0) 0)) ; Cond: z0 == 0 
(define-const var3128 String " = ") ; Statement: $r12 = " = " 
(assert true) ; Non Conditional
(define-const var1157 String var3128) ; Statement: r0 = $r12 
(define-const var1084 var2826 (assertedValue/-2034445000 var1035)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: java.lang.Boolean assertedValue> 
(assert true)
(define-const var360 Bool (booleanValue/-1820462562 var1084)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 == 0 goto $r13 = "false" 
(assert (not (= (ite var360 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1665 String "true") ; Statement: $r13 = "true" 
 ; Statement: goto [?= $r3 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2815 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2815)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2815!1 String)
(assert (= var2815!1 ""))
(define-const var1771 var483 (expression/-2034445000 var1035)) ; Statement: $r4 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: javax.persistence.criteria.Expression expression> 
(define-const var347 var3377 (cast-from-var483-to-var3377 var1771)) ; Statement: $r6 = (org.hibernate.query.criteria.internal.Renderable) $r4 
(define-const var1456 String (var3377_render/-1233042088 var347 var1750)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
(define-const var2412 String (append/672562846 var2815!1 var1456)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2815!2 String)
(assert (= var2815!2 (str.++ var2815!1 var1456)))
(assert true)
(define-const var76 String (append/672562846 var2412 var1157)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2412!1 String)
(assert (= var2412!1 (str.++ var2412 var1157)))
(assert true)
(define-const var1624 String (append/672562846 var76 var1665)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var76!1 String)
(assert (= var76!1 (str.++ var76 var1665)))
(assert true)
(define-const var3252 String (toString/-2075883882 var1624)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {assertedValue/-2034445000=([org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), expression/-2034445000=([org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate], javax.persistence.criteria.Expression), cast-from-var483-to-var3377=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var3377_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2156=org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate, var1035=r1, var78=z0, var1283=org.hibernate.query.criteria.internal.compile.RenderingContext, var1750=r5, var3128=$r12, var1157=r0, var2826=java.lang.Boolean, var1084=$r2, var360=$z1, var1665=$r13, var2815=$r3, var483=javax.persistence.criteria.Expression, var1771=$r4, var3377=org.hibernate.query.criteria.internal.Renderable, var347=$r6, var1456=$r7, var2412=$r8, var76=$r9, var1624=$r10, var3252=$r11}
; {org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate=var2156, r1=var1035, z0=var78, org.hibernate.query.criteria.internal.compile.RenderingContext=var1283, r5=var1750, $r12=var3128, r0=var1157, java.lang.Boolean=var2826, $r2=var1084, $z1=var360, $r13=var1665, $r3=var2815, javax.persistence.criteria.Expression=var483, $r4=var1771, org.hibernate.query.criteria.internal.Renderable=var3377, $r6=var347, $r7=var1456, $r8=var2412, $r9=var76, $r10=var1624, $r11=var3252}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate;	z0 := @parameter0: boolean;	r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r12 = " = ";	$r12 = " = ";	r0 = $r12;	$r2 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: java.lang.Boolean assertedValue>;	$z1 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>();	if $z1 == 0 goto $r13 = "false";	$r13 = "true";	goto [?= $r3 = new java.lang.StringBuilder];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: javax.persistence.criteria.Expression expression>;	$r6 = (org.hibernate.query.criteria.internal.Renderable) $r4;	$r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5