(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3332 0)
(declare-sort var2308 0)
(declare-sort var1993 0)
(declare-sort var857 0)
(declare-sort var1564 0)
(declare-sort var1411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/543978194 (var1564 var2308 var1993 String (Array Int ClassObject) (Array Int var1411) var857) void)
(declare-fun cast-from-var3332-to-var1564 (var3332) var1564)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1411__ ((Array Int String)) (Array Int var1411))
(declare-const null-var3332 var3332)
(declare-const null-var2308 var2308)
(declare-const null-var1993 var1993)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var857 var857)
(declare-const var3332-EXPECTED_TYPES (Array Int ClassObject))
(declare-const var3437 var3332) ; Statement: r0 := @this: freemarker.core.NonMethodException 
(assert (not (= var3437 null-var3332)))
(declare-const var1881 var2308) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var1881 null-var2308)))
(declare-const var1808 var1993) ; Statement: r2 := @parameter1: freemarker.template.TemplateModel 
(assert (not (= var1808 null-var1993)))
(declare-const var2684 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2684 null-Bool)))
(declare-const var3997 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3997 null-Bool)))
(declare-const var2801 (Array Int String)) ; Statement: r7 := @parameter4: java.lang.String[] 
(assert (not (= var2801 null-__Array__Int__String__)))
(declare-const var105 var857) ; Statement: r8 := @parameter5: freemarker.core.Environment 
(assert (not (= var105 null-var857)))
(define-const var1218 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1218)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1218!1 String)
(assert (= var1218!1 ""))
(assert true)
(define-const var1291 String (append/672562846 var1218!1 "method")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method") 
(declare-const var1218!2 String)
(assert (= var1218!2 (str.++ var1218!1 "method")))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (not (= (ite var2684 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var656 String " or function") ; Statement: $r10 = " or function" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var594 String (append/672562846 var1291 var656)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1291!1 String)
(assert (= var1291!1 (str.++ var1291 var656)))
 ; Statement: if z1 == 0 goto $r11 = "" 
(assert (not (= (ite var3997 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2753 String " or lambda expression") ; Statement: $r11 = " or lambda expression" 
 ; Statement: goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3741 String (append/672562846 var594 var2753)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var594!1 String)
(assert (= var594!1 (str.++ var594 var2753)))
(assert true)
(define-const var1708 String (toString/-2075883882 var3741)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert (= (ite var2684 1 0) 0)) ; Cond: z0 == 0 
(define-const var1352 (Array Int ClassObject) var3332-EXPECTED_TYPES) ; Statement: $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543978194 (cast-from-var3332-to-var1564 var3437) var1881 var1808 var1708 var1352 (cast-from-__Array__Int__String__-to-__Array__Int__var1411__ var2801) var105)) ; Statement: specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8) 

(declare-const var3437!1 var3332)
(declare-const var1881!1 var2308)
(declare-const var1808!1 var1993)
(declare-const var1708!1 String)
(declare-const var1352!1 (Array Int ClassObject))
(declare-const var2801!1 (Array Int String))
(declare-const var105!1 var857)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/543978194=([freemarker.core.UnexpectedTypeException, freemarker.core.Expression, freemarker.template.TemplateModel, java.lang.String, java.lang.Class[], java.lang.Object[], freemarker.core.Environment], void), cast-from-var3332-to-var1564=([freemarker.core.NonMethodException], freemarker.core.UnexpectedTypeException), cast-from-__Array__Int__String__-to-__Array__Int__var1411__=([java.lang.String[]], java.lang.Object[])}
; {var3332=freemarker.core.NonMethodException, var3437=r0, var2308=freemarker.core.Expression, var1881=r1, var1993=freemarker.template.TemplateModel, var1808=r2, var2684=z0, var3997=z1, var2801=r7, var857=freemarker.core.Environment, var105=r8, var1218=$r3, var1291=$r4, var656=$r10, var594=$r5, var2753=$r11, var3741=$r6, var1708=$r9, var1352=$r12, var1564=freemarker.core.UnexpectedTypeException, var1411=java.lang.Object}
; {freemarker.core.NonMethodException=var3332, r0=var3437, freemarker.core.Expression=var2308, r1=var1881, freemarker.template.TemplateModel=var1993, r2=var1808, z0=var2684, z1=var3997, r7=var2801, freemarker.core.Environment=var857, r8=var105, $r3=var1218, $r4=var1291, $r10=var656, $r5=var594, $r11=var2753, $r6=var3741, $r9=var1708, $r12=var1352, freemarker.core.UnexpectedTypeException=var1564, java.lang.Object=var1411}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NonMethodException;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.template.TemplateModel;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r7 := @parameter4: java.lang.String[];	r8 := @parameter5: freemarker.core.Environment;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method");	if z0 == 0 goto $r10 = "";	$r10 = " or function";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = "";	$r11 = " or lambda expression";	goto [?= $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11)];	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	$r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8);	return
;block_num 7