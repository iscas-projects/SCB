(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1941 0)
(declare-sort var2665 0)
(declare-sort var309 0)
(declare-sort var3780 0)
(declare-sort var1711 0)
(declare-sort var353 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/543978194 (var1711 var2665 var309 String (Array Int ClassObject) (Array Int var353) var3780) void)
(declare-fun cast-from-var1941-to-var1711 (var1941) var1711)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var353__ ((Array Int String)) (Array Int var353))
(declare-const null-var1941 var1941)
(declare-const null-var2665 var2665)
(declare-const null-var309 var309)
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3780 var3780)
(declare-const var1941-EXPECTED_TYPES_WITH_FUNCTION (Array Int ClassObject))
(declare-const var779 var1941) ; Statement: r0 := @this: freemarker.core.NonMethodException 
(assert (not (= var779 null-var1941)))
(declare-const var1362 var2665) ; Statement: r1 := @parameter0: freemarker.core.Expression 
(assert (not (= var1362 null-var2665)))
(declare-const var532 var309) ; Statement: r2 := @parameter1: freemarker.template.TemplateModel 
(assert (not (= var532 null-var309)))
(declare-const var2816 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2816 null-Bool)))
(declare-const var1535 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1535 null-Bool)))
(declare-const var1767 (Array Int String)) ; Statement: r7 := @parameter4: java.lang.String[] 
(assert (not (= var1767 null-__Array__Int__String__)))
(declare-const var295 var3780) ; Statement: r8 := @parameter5: freemarker.core.Environment 
(assert (not (= var295 null-var3780)))
(define-const var3148 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3148)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3148!1 String)
(assert (= var3148!1 ""))
(assert true)
(define-const var268 String (append/672562846 var3148!1 "method")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method") 
(declare-const var3148!2 String)
(assert (= var3148!2 (str.++ var3148!1 "method")))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (= (ite var2816 1 0) 0)) ; Cond: z0 == 0 
(define-const var2495 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2866 String (append/672562846 var268 var2495)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var268!1 String)
(assert (= var268!1 (str.++ var268 var2495)))
 ; Statement: if z1 == 0 goto $r11 = "" 
(assert (= (ite var1535 1 0) 0)) ; Cond: z1 == 0 
(define-const var1407 String "") ; Statement: $r11 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var64 String (append/672562846 var2866 var1407)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2866!1 String)
(assert (= var2866!1 (str.++ var2866 var1407)))
(assert true)
(define-const var2734 String (toString/-2075883882 var64)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES> 
(assert (not (= (ite var2816 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var489 (Array Int ClassObject) var1941-EXPECTED_TYPES_WITH_FUNCTION) ; Statement: $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES_WITH_FUNCTION> 
 ; Statement: goto [?= specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/543978194 (cast-from-var1941-to-var1711 var779) var1362 var532 var2734 var489 (cast-from-__Array__Int__String__-to-__Array__Int__var353__ var1767) var295)) ; Statement: specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8) 

(declare-const var779!1 var1941)
(declare-const var1362!1 var2665)
(declare-const var532!1 var309)
(declare-const var2734!1 String)
(declare-const var489!1 (Array Int ClassObject))
(declare-const var1767!1 (Array Int String))
(declare-const var295!1 var3780)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/543978194=([freemarker.core.UnexpectedTypeException, freemarker.core.Expression, freemarker.template.TemplateModel, java.lang.String, java.lang.Class[], java.lang.Object[], freemarker.core.Environment], void), cast-from-var1941-to-var1711=([freemarker.core.NonMethodException], freemarker.core.UnexpectedTypeException), cast-from-__Array__Int__String__-to-__Array__Int__var353__=([java.lang.String[]], java.lang.Object[])}
; {var1941=freemarker.core.NonMethodException, var779=r0, var2665=freemarker.core.Expression, var1362=r1, var309=freemarker.template.TemplateModel, var532=r2, var2816=z0, var1535=z1, var1767=r7, var3780=freemarker.core.Environment, var295=r8, var3148=$r3, var268=$r4, var2495=$r10, var2866=$r5, var1407=$r11, var64=$r6, var2734=$r9, var489=$r12, var1711=freemarker.core.UnexpectedTypeException, var353=java.lang.Object}
; {freemarker.core.NonMethodException=var1941, r0=var779, freemarker.core.Expression=var2665, r1=var1362, freemarker.template.TemplateModel=var309, r2=var532, z0=var2816, z1=var1535, r7=var1767, freemarker.core.Environment=var3780, r8=var295, $r3=var3148, $r4=var268, $r10=var2495, $r5=var2866, $r11=var1407, $r6=var64, $r9=var2734, $r12=var489, freemarker.core.UnexpectedTypeException=var1711, java.lang.Object=var353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NonMethodException;	r1 := @parameter0: freemarker.core.Expression;	r2 := @parameter1: freemarker.template.TemplateModel;	z0 := @parameter2: boolean;	z1 := @parameter3: boolean;	r7 := @parameter4: java.lang.String[];	r8 := @parameter5: freemarker.core.Environment;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("method");	if z0 == 0 goto $r10 = "";	$r10 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	if z1 == 0 goto $r11 = "";	$r11 = "";	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	if z0 == 0 goto $r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES>;	$r12 = <freemarker.core.NonMethodException: java.lang.Class[] EXPECTED_TYPES_WITH_FUNCTION>;	goto [?= specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8)];	specialinvoke r0.<freemarker.core.UnexpectedTypeException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,java.lang.String,java.lang.Class[],java.lang.Object[],freemarker.core.Environment)>(r1, r2, $r9, $r12, r7, r8);	return
;block_num 7