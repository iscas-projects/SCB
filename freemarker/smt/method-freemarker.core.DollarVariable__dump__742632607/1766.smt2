(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1465 0)
(declare-sort var2354 0)
(declare-sort var462 0)
(declare-sort var2127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTemplate/-542059899 (var462) var2354)
(declare-fun cast-from-var1465-to-var462 (var1465) var462)
(declare-fun getInterpolationSyntax/-1757168589 (var2354) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1335936351 (var1465) var2127)
(declare-fun getCanonicalForm/-1714059646 (var462) String)
(declare-fun cast-from-var2127-to-var462 (var2127) var462)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1465 var1465)
(declare-const null-Bool Bool)
(declare-const var2863 var1465) ; Statement: r1 := @this: freemarker.core.DollarVariable 
(assert (not (= var2863 null-var1465)))
(declare-const var952 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var952 null-Bool)))
(declare-const var2503 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2503 null-Bool)))
(define-const var1477 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1477)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1477!1 String)
(assert (= var1477!1 ""))
(assert true)
(define-const var2978 var2354 (getTemplate/-542059899 (cast-from-var1465-to-var462 var2863))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var1430 Int (getInterpolationSyntax/-1757168589 var2978)) ; Statement: i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>() 
 ; Statement: if i0 == 22 goto $r7 = "[=" 
(assert (= var1430 22)) ; Cond: i0 == 22 
(define-const var323 String "[=") ; Statement: $r7 = "[=" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1477!1 var323)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1477!2 String)
(assert (= var1477!2 (str.++ var1477!1 var323)))
(define-const var3691 var2127 (expression/1335936351 var2863)) ; Statement: $r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression> 
(assert true)
(define-const var383 String (getCanonicalForm/-1714059646 (cast-from-var2127-to-var462 var3691))) ; Statement: $r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r8 = $r6 
(assert (= (ite var2503 1 0) 0)) ; Cond: z0 == 0 
(define-const var3871 String var383) ; Statement: $r8 = $r6 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1477!2 var3871)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1477!3 String)
(assert (= var1477!3 (str.++ var1477!2 var3871)))
 ; Statement: if i0 == 22 goto $r9 = "]" 
(assert (= var1430 22)) ; Cond: i0 == 22 
(define-const var2223 String "]") ; Statement: $r9 = "]" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1477!3 var2223)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1477!4 String)
(assert (= var1477!4 (str.++ var1477!3 var2223)))
 ; Statement: if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var952 1 0) 0))) ; Cond: z1 != 0 
(assert true)
(define-const var3276 String (toString/-2075883882 var1477!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var1465-to-var462=([freemarker.core.DollarVariable], freemarker.core.TemplateObject), getInterpolationSyntax/-1757168589=([freemarker.template.Template], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1335936351=([freemarker.core.DollarVariable], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var2127-to-var462=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1465=freemarker.core.DollarVariable, var2863=r1, var952=z1, var2503=z0, var1477=$r0, var2354=freemarker.template.Template, var462=freemarker.core.TemplateObject, var2978=$r2, var1430=i0, var323=$r7, var2127=freemarker.core.Expression, var3691=$r3, var383=$r6, var3871=$r8, var2223=$r9, var3276=$r10}
; {freemarker.core.DollarVariable=var1465, r1=var2863, z1=var952, z0=var2503, $r0=var1477, freemarker.template.Template=var2354, freemarker.core.TemplateObject=var462, $r2=var2978, i0=var1430, $r7=var323, freemarker.core.Expression=var2127, $r3=var3691, $r6=var383, $r8=var3871, $r9=var2223, $r10=var3276}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DollarVariable;	z1 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>();	i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>();	if i0 == 22 goto $r7 = "[=";	$r7 = "[=";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression>;	$r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r8 = $r6;	$r8 = $r6;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	if i0 == 22 goto $r9 = "]";	$r9 = "]";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 8