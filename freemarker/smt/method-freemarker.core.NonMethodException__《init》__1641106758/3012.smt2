(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1149 0)
(declare-sort var2353 0)
(declare-sort var3591 0)
(declare-sort var303 0)
(declare-sort var665 0)
(declare-sort var2253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/543978194 (var665 var2353 var3591 String (Array Int ClassObject) (Array Int var2253) var303) void)
(declare-fun cast-from-var1149-to-var665 (var1149) var665)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2253__ ((Array Int String)) (Array Int var2253))
(declare-const null-var1149 var1149)
(declare-const null-var2353 var2353)
(declare-const null-var3591 var3591)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var303 var303)
(declare-const var1149-EXPECTED_TYPES (Array Int ClassObject))
(declare-const var2538 var1149) ; Statement: r0 := @this: freemarker.core.NonMethodException 
(assert (not (= var2538 null-var1149)))
(declare-const var3168 var2353) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var3168 null-var2353)))
(declare-const var1891 var3591) ; Statement: r2 := @parameter1: freemarker.template.TemplateModel 
(assert (not (= var1891 null-var3591)))
(declare-const var3102 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3102 null-Bool)))
(declare-const var814 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var814 null-Bool)))
(declare-const var2609 (Array Int String)) ; Statement: r7 := @parameter4: java.lang.String[] 
(assert (not (= var2609 null-__Array__Int__String__)))
(declare-const var2528 var303) ; Statement: r8 := @parameter5: freemarker.core.Environment 
(assert (not (= var2528 null-var303)))
(define-const var600 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var600)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var600!1 String)
(assert (= var600!1 ""))
(assert true)
(define-const var1693 String (append/672562846 var600!1 "method")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method") 
(declare-const var600!2 String)
(assert (= var600!2 (str.++ var600!1 "method")))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (not (= (ite var3102 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var199 String " or function") ; Statement: $r10 = " or function" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3891 String (append/672562846 var1693 var199)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1693!1 String)
(assert (= var1693!1 (str.++ var1693 var199)))
 ; Statement: if z1 == 0 goto $r11 = "" 
(assert (= (ite var814 1 0) 0)) ; Cond: z1 == 0 
(define-const var1079 String "") ; Statement: $r11 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1698 String (append/672562846 var3891 var1079)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3891!1 String)
(assert (= var3891!1 (str.++ var3891 var1079)))
(assert true)
(define-const var3411 String (toString/-2075883882 var1698)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert (= (ite var3102 1 0) 0)) ; Cond: z0 == 0 
(define-const var1832 (Array Int ClassObject) var1149-EXPECTED_TYPES) ; Statement: $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543978194 (cast-from-var1149-to-var665 var2538) var3168 var1891 var3411 var1832 (cast-from-__Array__Int__String__-to-__Array__Int__var2253__ var2609) var2528)) ; Statement: specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8) 

(declare-const var2538!1 var1149)
(declare-const var3168!1 var2353)
(declare-const var1891!1 var3591)
(declare-const var3411!1 String)
(declare-const var1832!1 (Array Int ClassObject))
(declare-const var2609!1 (Array Int String))
(declare-const var2528!1 var303)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/543978194=([freemarker.core.UnexpectedTypeException, freemarker.core.Expression, freemarker.template.TemplateModel, java.lang.String, java.lang.Class[], java.lang.Object[], freemarker.core.Environment], void), cast-from-var1149-to-var665=([freemarker.core.NonMethodException], freemarker.core.UnexpectedTypeException), cast-from-__Array__Int__String__-to-__Array__Int__var2253__=([java.lang.String[]], java.lang.Object[])}
; {var1149=freemarker.core.NonMethodException, var2538=r0, var2353=freemarker.core.Expression, var3168=r1, var3591=freemarker.template.TemplateModel, var1891=r2, var3102=z0, var814=z1, var2609=r7, var303=freemarker.core.Environment, var2528=r8, var600=$r3, var1693=$r4, var199=$r10, var3891=$r5, var1079=$r11, var1698=$r6, var3411=$r9, var1832=$r12, var665=freemarker.core.UnexpectedTypeException, var2253=java.lang.Object}
; {freemarker.core.NonMethodException=var1149, r0=var2538, freemarker.core.Expression=var2353, r1=var3168, freemarker.template.TemplateModel=var3591, r2=var1891, z0=var3102, z1=var814, r7=var2609, freemarker.core.Environment=var303, r8=var2528, $r3=var600, $r4=var1693, $r10=var199, $r5=var3891, $r11=var1079, $r6=var1698, $r9=var3411, $r12=var1832, freemarker.core.UnexpectedTypeException=var665, java.lang.Object=var2253}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NonMethodException;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.template.TemplateModel;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r7 := @parameter4: java.lang.String[];	r8 := @parameter5: freemarker.core.Environment;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method");	if z0 == 0 goto $r10 = "";	$r10 = " or function";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = "";	$r11 = "";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	$r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8);	return
;block_num 7