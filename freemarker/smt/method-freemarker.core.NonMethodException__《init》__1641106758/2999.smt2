(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1646 0)
(declare-sort var2596 0)
(declare-sort var3360 0)
(declare-sort var207 0)
(declare-sort var319 0)
(declare-sort var429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/543978194 (var319 var2596 var3360 String (Array Int ClassObject) (Array Int var429) var207) void)
(declare-fun cast-from-var1646-to-var319 (var1646) var319)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var429__ ((Array Int String)) (Array Int var429))
(declare-const null-var1646 var1646)
(declare-const null-var2596 var2596)
(declare-const null-var3360 var3360)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var207 var207)
(declare-const var1646-EXPECTED_TYPES_WITH_FUNCTION (Array Int ClassObject))
(declare-const var3867 var1646) ; Statement: r0 := @this: freemarker.core.NonMethodException 
(assert (not (= var3867 null-var1646)))
(declare-const var1429 var2596) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var1429 null-var2596)))
(declare-const var1576 var3360) ; Statement: r2 := @parameter1: freemarker.template.TemplateModel 
(assert (not (= var1576 null-var3360)))
(declare-const var676 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var676 null-Bool)))
(declare-const var3455 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3455 null-Bool)))
(declare-const var1005 (Array Int String)) ; Statement: r7 := @parameter4: java.lang.String[] 
(assert (not (= var1005 null-__Array__Int__String__)))
(declare-const var1476 var207) ; Statement: r8 := @parameter5: freemarker.core.Environment 
(assert (not (= var1476 null-var207)))
(define-const var215 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var215)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var215!1 String)
(assert (= var215!1 ""))
(assert true)
(define-const var2473 String (append/672562846 var215!1 "method")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method") 
(declare-const var215!2 String)
(assert (= var215!2 (str.++ var215!1 "method")))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (not (= (ite var676 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var400 String " or function") ; Statement: $r10 = " or function" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var89 String (append/672562846 var2473 var400)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2473!1 String)
(assert (= var2473!1 (str.++ var2473 var400)))
 ; Statement: if z1 == 0 goto $r11 = "" 
(assert (= (ite var3455 1 0) 0)) ; Cond: z1 == 0 
(define-const var3105 String "") ; Statement: $r11 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2152 String (append/672562846 var89 var3105)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var89!1 String)
(assert (= var89!1 (str.++ var89 var3105)))
(assert true)
(define-const var3922 String (toString/-2075883882 var2152)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert (not (= (ite var676 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3513 (Array Int ClassObject) var1646-EXPECTED_TYPES_WITH_FUNCTION) ; Statement: $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES_WITH_FUNCTION> 
 ; Statement: goto [?= specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543978194 (cast-from-var1646-to-var319 var3867) var1429 var1576 var3922 var3513 (cast-from-__Array__Int__String__-to-__Array__Int__var429__ var1005) var1476)) ; Statement: specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8) 

(declare-const var3867!1 var1646)
(declare-const var1429!1 var2596)
(declare-const var1576!1 var3360)
(declare-const var3922!1 String)
(declare-const var3513!1 (Array Int ClassObject))
(declare-const var1005!1 (Array Int String))
(declare-const var1476!1 var207)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/543978194=([freemarker.core.UnexpectedTypeException, freemarker.core.Expression, freemarker.template.TemplateModel, java.lang.String, java.lang.Class[], java.lang.Object[], freemarker.core.Environment], void), cast-from-var1646-to-var319=([freemarker.core.NonMethodException], freemarker.core.UnexpectedTypeException), cast-from-__Array__Int__String__-to-__Array__Int__var429__=([java.lang.String[]], java.lang.Object[])}
; {var1646=freemarker.core.NonMethodException, var3867=r0, var2596=freemarker.core.Expression, var1429=r1, var3360=freemarker.template.TemplateModel, var1576=r2, var676=z0, var3455=z1, var1005=r7, var207=freemarker.core.Environment, var1476=r8, var215=$r3, var2473=$r4, var400=$r10, var89=$r5, var3105=$r11, var2152=$r6, var3922=$r9, var3513=$r12, var319=freemarker.core.UnexpectedTypeException, var429=java.lang.Object}
; {freemarker.core.NonMethodException=var1646, r0=var3867, freemarker.core.Expression=var2596, r1=var1429, freemarker.template.TemplateModel=var3360, r2=var1576, z0=var676, z1=var3455, r7=var1005, freemarker.core.Environment=var207, r8=var1476, $r3=var215, $r4=var2473, $r10=var400, $r5=var89, $r11=var3105, $r6=var2152, $r9=var3922, $r12=var3513, freemarker.core.UnexpectedTypeException=var319, java.lang.Object=var429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NonMethodException;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.template.TemplateModel;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r7 := @parameter4: java.lang.String[];	r8 := @parameter5: freemarker.core.Environment;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method");	if z0 == 0 goto $r10 = "";	$r10 = " or function";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = "";	$r11 = "";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	$r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES_WITH_FUNCTION>;	goto [?= specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8)];	specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8);	return
;block_num 7