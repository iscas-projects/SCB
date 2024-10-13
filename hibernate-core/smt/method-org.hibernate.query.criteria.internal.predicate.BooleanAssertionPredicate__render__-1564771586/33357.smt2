(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3490 0)
(declare-sort var835 0)
(declare-sort var528 0)
(declare-sort var2557 0)
(declare-sort var2913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun assertedValue/-2034445000 (var3490) var528)
(declare-fun booleanValue/-1820462562 (var528) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun expression/-2034445000 (var3490) var2557)
(declare-fun cast-from-var2557-to-var2913 (var2557) var2913)
(declare-fun var2913_render/-1233042088 (var2913 var835) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3490 var3490)
(declare-const null-Bool Bool)
(declare-const null-var835 var835)
(declare-const var473 var3490) ; Statement: r1 := @this: org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate 
(assert (not (= var473 null-var3490)))
(declare-const var2762 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2762 null-Bool)))
(declare-const var3589 var835) ; Statement: r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3589 null-var835)))
 ; Statement: if z0 == 0 goto $r12 = " = " 
(assert (not (= (ite var2762 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2330 String " <> ") ; Statement: $r12 = " <> " 
 ; Statement: goto [?= r0 = $r12] 
(assert true) ; Non Conditional
(define-const var1911 String var2330) ; Statement: r0 = $r12 
(define-const var2276 var528 (assertedValue/-2034445000 var473)) ; Statement: $r2 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: java.lang.Boolean assertedValue> 
(assert true)
(define-const var3296 Bool (booleanValue/-1820462562 var2276)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 == 0 goto $r13 = "false" 
(assert (not (= (ite var3296 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2327 String "true") ; Statement: $r13 = "true" 
 ; Statement: goto [?= $r3 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1520 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1520)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1520!1 String)
(assert (= var1520!1 ""))
(define-const var856 var2557 (expression/-2034445000 var473)) ; Statement: $r4 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: javax.persistence.criteria.Expression expression> 
(define-const var2354 var2913 (cast-from-var2557-to-var2913 var856)) ; Statement: $r6 = (org.hibernate.query.criteria.internal.Renderable) $r4 
(define-const var3526 String (var2913_render/-1233042088 var2354 var3589)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5) 
(assert true)
(define-const var813 String (append/672562846 var1520!1 var3526)) ; Statement: $r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1520!2 String)
(assert (= var1520!2 (str.++ var1520!1 var3526)))
(assert true)
(define-const var1245 String (append/672562846 var813 var1911)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var813!1 String)
(assert (= var813!1 (str.++ var813 var1911)))
(assert true)
(define-const var2225 String (append/672562846 var1245 var2327)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1245!1 String)
(assert (= var1245!1 (str.++ var1245 var2327)))
(assert true)
(define-const var1016 String (toString/-2075883882 var2225)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {assertedValue/-2034445000=([org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), expression/-2034445000=([org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate], javax.persistence.criteria.Expression), cast-from-var2557-to-var2913=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.Renderable), var2913_render/-1233042088=([org.hibernate.query.criteria.internal.Renderable, org.hibernate.query.criteria.internal.compile.RenderingContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3490=org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate, var473=r1, var2762=z0, var835=org.hibernate.query.criteria.internal.compile.RenderingContext, var3589=r5, var2330=$r12, var1911=r0, var528=java.lang.Boolean, var2276=$r2, var3296=$z1, var2327=$r13, var1520=$r3, var2557=javax.persistence.criteria.Expression, var856=$r4, var2913=org.hibernate.query.criteria.internal.Renderable, var2354=$r6, var3526=$r7, var813=$r8, var1245=$r9, var2225=$r10, var1016=$r11}
; {org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate=var3490, r1=var473, z0=var2762, org.hibernate.query.criteria.internal.compile.RenderingContext=var835, r5=var3589, $r12=var2330, r0=var1911, java.lang.Boolean=var528, $r2=var2276, $z1=var3296, $r13=var2327, $r3=var1520, javax.persistence.criteria.Expression=var2557, $r4=var856, org.hibernate.query.criteria.internal.Renderable=var2913, $r6=var2354, $r7=var3526, $r8=var813, $r9=var1245, $r10=var2225, $r11=var1016}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate;	z0 := @parameter0: boolean;	r5 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	if z0 == 0 goto $r12 = " = ";	$r12 = " <> ";	goto [?= r0 = $r12];	r0 = $r12;	$r2 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: java.lang.Boolean assertedValue>;	$z1 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>();	if $z1 == 0 goto $r13 = "false";	$r13 = "true";	goto [?= $r3 = new java.lang.StringBuilder];	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r1.<org.hibernate.query.criteria.internal.predicate.BooleanAssertionPredicate: javax.persistence.criteria.Expression expression>;	$r6 = (org.hibernate.query.criteria.internal.Renderable) $r4;	$r7 = interfaceinvoke $r6.<org.hibernate.query.criteria.internal.Renderable: java.lang.String render(org.hibernate.query.criteria.internal.compile.RenderingContext)>(r5);	$r8 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 5