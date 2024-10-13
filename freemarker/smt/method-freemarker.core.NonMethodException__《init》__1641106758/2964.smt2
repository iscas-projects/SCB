(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1052 0)
(declare-sort var3493 0)
(declare-sort var2894 0)
(declare-sort var2911 0)
(declare-sort var2883 0)
(declare-sort var1656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/543978194 (var2883 var3493 var2894 String (Array Int ClassObject) (Array Int var1656) var2911) void)
(declare-fun cast-from-var1052-to-var2883 (var1052) var2883)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1656__ ((Array Int String)) (Array Int var1656))
(declare-const null-var1052 var1052)
(declare-const null-var3493 var3493)
(declare-const null-var2894 var2894)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2911 var2911)
(declare-const var1052-EXPECTED_TYPES_WITH_FUNCTION (Array Int ClassObject))
(declare-const var53 var1052) ; Statement: r0 := @this: freemarker.core.NonMethodException 
(assert (not (= var53 null-var1052)))
(declare-const var171 var3493) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var171 null-var3493)))
(declare-const var135 var2894) ; Statement: r2 := @parameter1: freemarker.template.TemplateModel 
(assert (not (= var135 null-var2894)))
(declare-const var1185 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1185 null-Bool)))
(declare-const var2800 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var2800 null-Bool)))
(declare-const var3843 (Array Int String)) ; Statement: r7 := @parameter4: java.lang.String[] 
(assert (not (= var3843 null-__Array__Int__String__)))
(declare-const var996 var2911) ; Statement: r8 := @parameter5: freemarker.core.Environment 
(assert (not (= var996 null-var2911)))
(define-const var2156 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2156)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2156!1 String)
(assert (= var2156!1 ""))
(assert true)
(define-const var2724 String (append/672562846 var2156!1 "method")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method") 
(declare-const var2156!2 String)
(assert (= var2156!2 (str.++ var2156!1 "method")))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (not (= (ite var1185 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3293 String " or function") ; Statement: $r10 = " or function" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var304 String (append/672562846 var2724 var3293)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2724!1 String)
(assert (= var2724!1 (str.++ var2724 var3293)))
 ; Statement: if z1 == 0 goto $r11 = "" 
(assert (not (= (ite var2800 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var151 String " or lambda expression") ; Statement: $r11 = " or lambda expression" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3628 String (append/672562846 var304 var151)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var304!1 String)
(assert (= var304!1 (str.++ var304 var151)))
(assert true)
(define-const var1295 String (toString/-2075883882 var3628)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert (not (= (ite var1185 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var410 (Array Int ClassObject) var1052-EXPECTED_TYPES_WITH_FUNCTION) ; Statement: $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES_WITH_FUNCTION> 
 ; Statement: goto [?= specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543978194 (cast-from-var1052-to-var2883 var53) var171 var135 var1295 var410 (cast-from-__Array__Int__String__-to-__Array__Int__var1656__ var3843) var996)) ; Statement: specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8) 

(declare-const var53!1 var1052)
(declare-const var171!1 var3493)
(declare-const var135!1 var2894)
(declare-const var1295!1 String)
(declare-const var410!1 (Array Int ClassObject))
(declare-const var3843!1 (Array Int String))
(declare-const var996!1 var2911)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/543978194=([freemarker.core.UnexpectedTypeException, freemarker.core.Expression, freemarker.template.TemplateModel, java.lang.String, java.lang.Class[], java.lang.Object[], freemarker.core.Environment], void), cast-from-var1052-to-var2883=([freemarker.core.NonMethodException], freemarker.core.UnexpectedTypeException), cast-from-__Array__Int__String__-to-__Array__Int__var1656__=([java.lang.String[]], java.lang.Object[])}
; {var1052=freemarker.core.NonMethodException, var53=r0, var3493=freemarker.core.Expression, var171=r1, var2894=freemarker.template.TemplateModel, var135=r2, var1185=z0, var2800=z1, var3843=r7, var2911=freemarker.core.Environment, var996=r8, var2156=$r3, var2724=$r4, var3293=$r10, var304=$r5, var151=$r11, var3628=$r6, var1295=$r9, var410=$r12, var2883=freemarker.core.UnexpectedTypeException, var1656=java.lang.Object}
; {freemarker.core.NonMethodException=var1052, r0=var53, freemarker.core.Expression=var3493, r1=var171, freemarker.template.TemplateModel=var2894, r2=var135, z0=var1185, z1=var2800, r7=var3843, freemarker.core.Environment=var2911, r8=var996, $r3=var2156, $r4=var2724, $r10=var3293, $r5=var304, $r11=var151, $r6=var3628, $r9=var1295, $r12=var410, freemarker.core.UnexpectedTypeException=var2883, java.lang.Object=var1656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NonMethodException;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.template.TemplateModel;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r7 := @parameter4: java.lang.String[];	r8 := @parameter5: freemarker.core.Environment;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method");	if z0 == 0 goto $r10 = "";	$r10 = " or function";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = "";	$r11 = " or lambda expression";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	$r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES_WITH_FUNCTION>;	goto [?= specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8)];	specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8);	return
;block_num 7