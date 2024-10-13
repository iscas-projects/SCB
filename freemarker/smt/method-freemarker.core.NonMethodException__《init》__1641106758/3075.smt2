(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1202 0)
(declare-sort var2572 0)
(declare-sort var2495 0)
(declare-sort var359 0)
(declare-sort var2126 0)
(declare-sort var1808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/543978194 (var2126 var2572 var2495 String (Array Int ClassObject) (Array Int var1808) var359) void)
(declare-fun cast-from-var1202-to-var2126 (var1202) var2126)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1808__ ((Array Int String)) (Array Int var1808))
(declare-const null-var1202 var1202)
(declare-const null-var2572 var2572)
(declare-const null-var2495 var2495)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var359 var359)
(declare-const var1202-EXPECTED_TYPES (Array Int ClassObject))
(declare-const var2101 var1202) ; Statement: r0 := @this: freemarker.core.NonMethodException 
(assert (not (= var2101 null-var1202)))
(declare-const var107 var2572) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var107 null-var2572)))
(declare-const var435 var2495) ; Statement: r2 := @parameter1: freemarker.template.TemplateModel 
(assert (not (= var435 null-var2495)))
(declare-const var525 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var525 null-Bool)))
(declare-const var248 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var248 null-Bool)))
(declare-const var1926 (Array Int String)) ; Statement: r7 := @parameter4: java.lang.String[] 
(assert (not (= var1926 null-__Array__Int__String__)))
(declare-const var3798 var359) ; Statement: r8 := @parameter5: freemarker.core.Environment 
(assert (not (= var3798 null-var359)))
(define-const var3245 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3245)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3245!1 String)
(assert (= var3245!1 ""))
(assert true)
(define-const var1484 String (append/672562846 var3245!1 "method")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method") 
(declare-const var3245!2 String)
(assert (= var3245!2 (str.++ var3245!1 "method")))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (= (ite var525 1 0) 0)) ; Cond: z0 == 0 
(define-const var2650 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2382 String (append/672562846 var1484 var2650)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1484!1 String)
(assert (= var1484!1 (str.++ var1484 var2650)))
 ; Statement: if z1 == 0 goto $r11 = "" 
(assert (= (ite var248 1 0) 0)) ; Cond: z1 == 0 
(define-const var2675 String "") ; Statement: $r11 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2749 String (append/672562846 var2382 var2675)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2382!1 String)
(assert (= var2382!1 (str.++ var2382 var2675)))
(assert true)
(define-const var597 String (toString/-2075883882 var2749)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert (= (ite var525 1 0) 0)) ; Cond: z0 == 0 
(define-const var1880 (Array Int ClassObject) var1202-EXPECTED_TYPES) ; Statement: $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543978194 (cast-from-var1202-to-var2126 var2101) var107 var435 var597 var1880 (cast-from-__Array__Int__String__-to-__Array__Int__var1808__ var1926) var3798)) ; Statement: specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8) 

(declare-const var2101!1 var1202)
(declare-const var107!1 var2572)
(declare-const var435!1 var2495)
(declare-const var597!1 String)
(declare-const var1880!1 (Array Int ClassObject))
(declare-const var1926!1 (Array Int String))
(declare-const var3798!1 var359)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/543978194=([freemarker.core.UnexpectedTypeException, freemarker.core.Expression, freemarker.template.TemplateModel, java.lang.String, java.lang.Class[], java.lang.Object[], freemarker.core.Environment], void), cast-from-var1202-to-var2126=([freemarker.core.NonMethodException], freemarker.core.UnexpectedTypeException), cast-from-__Array__Int__String__-to-__Array__Int__var1808__=([java.lang.String[]], java.lang.Object[])}
; {var1202=freemarker.core.NonMethodException, var2101=r0, var2572=freemarker.core.Expression, var107=r1, var2495=freemarker.template.TemplateModel, var435=r2, var525=z0, var248=z1, var1926=r7, var359=freemarker.core.Environment, var3798=r8, var3245=$r3, var1484=$r4, var2650=$r10, var2382=$r5, var2675=$r11, var2749=$r6, var597=$r9, var1880=$r12, var2126=freemarker.core.UnexpectedTypeException, var1808=java.lang.Object}
; {freemarker.core.NonMethodException=var1202, r0=var2101, freemarker.core.Expression=var2572, r1=var107, freemarker.template.TemplateModel=var2495, r2=var435, z0=var525, z1=var248, r7=var1926, freemarker.core.Environment=var359, r8=var3798, $r3=var3245, $r4=var1484, $r10=var2650, $r5=var2382, $r11=var2675, $r6=var2749, $r9=var597, $r12=var1880, freemarker.core.UnexpectedTypeException=var2126, java.lang.Object=var1808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NonMethodException;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.template.TemplateModel;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r7 := @parameter4: java.lang.String[];	r8 := @parameter5: freemarker.core.Environment;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method");	if z0 == 0 goto $r10 = "";	$r10 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = "";	$r11 = "";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	$r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8);	return
;block_num 7