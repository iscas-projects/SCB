(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2417 0)
(declare-sort var2080 0)
(declare-sort var1537 0)
(declare-sort var1155 0)
(declare-sort var1302 0)
(declare-sort var1037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/543978194 (var1302 var2080 var1537 String (Array Int ClassObject) (Array Int var1037) var1155) void)
(declare-fun cast-from-var2417-to-var1302 (var2417) var1302)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1037__ ((Array Int String)) (Array Int var1037))
(declare-const null-var2417 var2417)
(declare-const null-var2080 var2080)
(declare-const null-var1537 var1537)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var1155 var1155)
(declare-const var2417-EXPECTED_TYPES (Array Int ClassObject))
(declare-const var300 var2417) ; Statement: r0 := @this: freemarker.core.NonMethodException 
(assert (not (= var300 null-var2417)))
(declare-const var3059 var2080) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var3059 null-var2080)))
(declare-const var3525 var1537) ; Statement: r2 := @parameter1: freemarker.template.TemplateModel 
(assert (not (= var3525 null-var1537)))
(declare-const var2291 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2291 null-Bool)))
(declare-const var3323 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3323 null-Bool)))
(declare-const var795 (Array Int String)) ; Statement: r7 := @parameter4: java.lang.String[] 
(assert (not (= var795 null-__Array__Int__String__)))
(declare-const var235 var1155) ; Statement: r8 := @parameter5: freemarker.core.Environment 
(assert (not (= var235 null-var1155)))
(define-const var3294 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3294)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3294!1 String)
(assert (= var3294!1 ""))
(assert true)
(define-const var477 String (append/672562846 var3294!1 "method")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method") 
(declare-const var3294!2 String)
(assert (= var3294!2 (str.++ var3294!1 "method")))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (= (ite var2291 1 0) 0)) ; Cond: z0 == 0 
(define-const var190 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3450 String (append/672562846 var477 var190)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var477!1 String)
(assert (= var477!1 (str.++ var477 var190)))
 ; Statement: if z1 == 0 goto $r11 = "" 
(assert (not (= (ite var3323 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var1340 String " or lambda expression") ; Statement: $r11 = " or lambda expression" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1258 String (append/672562846 var3450 var1340)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3450!1 String)
(assert (= var3450!1 (str.++ var3450 var1340)))
(assert true)
(define-const var2930 String (toString/-2075883882 var1258)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert (= (ite var2291 1 0) 0)) ; Cond: z0 == 0 
(define-const var1062 (Array Int ClassObject) var2417-EXPECTED_TYPES) ; Statement: $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543978194 (cast-from-var2417-to-var1302 var300) var3059 var3525 var2930 var1062 (cast-from-__Array__Int__String__-to-__Array__Int__var1037__ var795) var235)) ; Statement: specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8) 

(declare-const var300!1 var2417)
(declare-const var3059!1 var2080)
(declare-const var3525!1 var1537)
(declare-const var2930!1 String)
(declare-const var1062!1 (Array Int ClassObject))
(declare-const var795!1 (Array Int String))
(declare-const var235!1 var1155)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/543978194=([freemarker.core.UnexpectedTypeException, freemarker.core.Expression, freemarker.template.TemplateModel, java.lang.String, java.lang.Class[], java.lang.Object[], freemarker.core.Environment], void), cast-from-var2417-to-var1302=([freemarker.core.NonMethodException], freemarker.core.UnexpectedTypeException), cast-from-__Array__Int__String__-to-__Array__Int__var1037__=([java.lang.String[]], java.lang.Object[])}
; {var2417=freemarker.core.NonMethodException, var300=r0, var2080=freemarker.core.Expression, var3059=r1, var1537=freemarker.template.TemplateModel, var3525=r2, var2291=z0, var3323=z1, var795=r7, var1155=freemarker.core.Environment, var235=r8, var3294=$r3, var477=$r4, var190=$r10, var3450=$r5, var1340=$r11, var1258=$r6, var2930=$r9, var1062=$r12, var1302=freemarker.core.UnexpectedTypeException, var1037=java.lang.Object}
; {freemarker.core.NonMethodException=var2417, r0=var300, freemarker.core.Expression=var2080, r1=var3059, freemarker.template.TemplateModel=var1537, r2=var3525, z0=var2291, z1=var3323, r7=var795, freemarker.core.Environment=var1155, r8=var235, $r3=var3294, $r4=var477, $r10=var190, $r5=var3450, $r11=var1340, $r6=var1258, $r9=var2930, $r12=var1062, freemarker.core.UnexpectedTypeException=var1302, java.lang.Object=var1037}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NonMethodException;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.template.TemplateModel;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r7 := @parameter4: java.lang.String[];	r8 := @parameter5: freemarker.core.Environment;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method");	if z0 == 0 goto $r10 = "";	$r10 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = "";	$r11 = " or lambda expression";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	$r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8);	return
;block_num 7