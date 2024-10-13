(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var787 0)
(declare-sort var3856 0)
(declare-sort var1409 0)
(declare-sort var2180 0)
(declare-sort var1293 0)
(declare-sort var1894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/543978194 (var1293 var3856 var1409 String (Array Int ClassObject) (Array Int var1894) var2180) void)
(declare-fun cast-from-var787-to-var1293 (var787) var1293)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1894__ ((Array Int String)) (Array Int var1894))
(declare-const null-var787 var787)
(declare-const null-var3856 var3856)
(declare-const null-var1409 var1409)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2180 var2180)
(declare-const var787-EXPECTED_TYPES_WITH_FUNCTION (Array Int ClassObject))
(declare-const var3462 var787) ; Statement: r0 := @this: freemarker.core.NonMethodException 
(assert (not (= var3462 null-var787)))
(declare-const var3527 var3856) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var3527 null-var3856)))
(declare-const var3617 var1409) ; Statement: r2 := @parameter1: freemarker.template.TemplateModel 
(assert (not (= var3617 null-var1409)))
(declare-const var883 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var883 null-Bool)))
(declare-const var1872 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1872 null-Bool)))
(declare-const var2470 (Array Int String)) ; Statement: r7 := @parameter4: java.lang.String[] 
(assert (not (= var2470 null-__Array__Int__String__)))
(declare-const var725 var2180) ; Statement: r8 := @parameter5: freemarker.core.Environment 
(assert (not (= var725 null-var2180)))
(define-const var715 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var715)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var715!1 String)
(assert (= var715!1 ""))
(assert true)
(define-const var667 String (append/672562846 var715!1 "method")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method") 
(declare-const var715!2 String)
(assert (= var715!2 (str.++ var715!1 "method")))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (= (ite var883 1 0) 0)) ; Cond: z0 == 0 
(define-const var1230 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1322 String (append/672562846 var667 var1230)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var667!1 String)
(assert (= var667!1 (str.++ var667 var1230)))
 ; Statement: if z1 == 0 goto $r11 = "" 
(assert (not (= (ite var1872 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var3056 String " or lambda expression") ; Statement: $r11 = " or lambda expression" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1719 String (append/672562846 var1322 var3056)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1322!1 String)
(assert (= var1322!1 (str.++ var1322 var3056)))
(assert true)
(define-const var3164 String (toString/-2075883882 var1719)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert (not (= (ite var883 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2337 (Array Int ClassObject) var787-EXPECTED_TYPES_WITH_FUNCTION) ; Statement: $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES_WITH_FUNCTION> 
 ; Statement: goto [?= specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543978194 (cast-from-var787-to-var1293 var3462) var3527 var3617 var3164 var2337 (cast-from-__Array__Int__String__-to-__Array__Int__var1894__ var2470) var725)) ; Statement: specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8) 

(declare-const var3462!1 var787)
(declare-const var3527!1 var3856)
(declare-const var3617!1 var1409)
(declare-const var3164!1 String)
(declare-const var2337!1 (Array Int ClassObject))
(declare-const var2470!1 (Array Int String))
(declare-const var725!1 var2180)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/543978194=([freemarker.core.UnexpectedTypeException, freemarker.core.Expression, freemarker.template.TemplateModel, java.lang.String, java.lang.Class[], java.lang.Object[], freemarker.core.Environment], void), cast-from-var787-to-var1293=([freemarker.core.NonMethodException], freemarker.core.UnexpectedTypeException), cast-from-__Array__Int__String__-to-__Array__Int__var1894__=([java.lang.String[]], java.lang.Object[])}
; {var787=freemarker.core.NonMethodException, var3462=r0, var3856=freemarker.core.Expression, var3527=r1, var1409=freemarker.template.TemplateModel, var3617=r2, var883=z0, var1872=z1, var2470=r7, var2180=freemarker.core.Environment, var725=r8, var715=$r3, var667=$r4, var1230=$r10, var1322=$r5, var3056=$r11, var1719=$r6, var3164=$r9, var2337=$r12, var1293=freemarker.core.UnexpectedTypeException, var1894=java.lang.Object}
; {freemarker.core.NonMethodException=var787, r0=var3462, freemarker.core.Expression=var3856, r1=var3527, freemarker.template.TemplateModel=var1409, r2=var3617, z0=var883, z1=var1872, r7=var2470, freemarker.core.Environment=var2180, r8=var725, $r3=var715, $r4=var667, $r10=var1230, $r5=var1322, $r11=var3056, $r6=var1719, $r9=var3164, $r12=var2337, freemarker.core.UnexpectedTypeException=var1293, java.lang.Object=var1894}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NonMethodException;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.template.TemplateModel;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r7 := @parameter4: java.lang.String[];	r8 := @parameter5: freemarker.core.Environment;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method");	if z0 == 0 goto $r10 = "";	$r10 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = "";	$r11 = " or lambda expression";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	$r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES_WITH_FUNCTION>;	goto [?= specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8)];	specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8);	return
;block_num 7