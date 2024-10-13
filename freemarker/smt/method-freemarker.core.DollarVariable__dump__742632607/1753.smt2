(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3404 0)
(declare-sort var843 0)
(declare-sort var2750 0)
(declare-sort var882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTemplate/-542059899 (var2750) var843)
(declare-fun cast-from-var3404-to-var2750 (var3404) var2750)
(declare-fun getInterpolationSyntax/-1757168589 (var843) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1335936351 (var3404) var882)
(declare-fun getCanonicalForm/-1714059646 (var2750) String)
(declare-fun cast-from-var882-to-var2750 (var882) var2750)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3404 var3404)
(declare-const null-Bool Bool)
(declare-const var1731 var3404) ; Statement: r1 := @this: freemarker.core.DollarVariable 
(assert (not (= var1731 null-var3404)))
(declare-const var1675 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1675 null-Bool)))
(declare-const var3670 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3670 null-Bool)))
(define-const var3921 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3921)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3921!1 String)
(assert (= var3921!1 ""))
(assert true)
(define-const var609 var843 (getTemplate/-542059899 (cast-from-var3404-to-var2750 var1731))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var3255 Int (getInterpolationSyntax/-1757168589 var609)) ; Statement: i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>() 
 ; Statement: if i0 == 22 goto $r7 = "[=" 
(assert (= var3255 22)) ; Cond: i0 == 22 
(define-const var2894 String "[=") ; Statement: $r7 = "[=" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3921!1 var2894)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3921!2 String)
(assert (= var3921!2 (str.++ var3921!1 var2894)))
(define-const var1270 var882 (expression/1335936351 var1731)) ; Statement: $r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression> 
(assert true)
(define-const var157 String (getCanonicalForm/-1714059646 (cast-from-var882-to-var2750 var1270))) ; Statement: $r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r8 = $r6 
(assert (= (ite var3670 1 0) 0)) ; Cond: z0 == 0 
(define-const var3316 String var157) ; Statement: $r8 = $r6 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3921!2 var3316)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3921!3 String)
(assert (= var3921!3 (str.++ var3921!2 var3316)))
 ; Statement: if i0 == 22 goto $r9 = "]" 
(assert (not (= var3255 22))) ; Negate: Cond: i0 == 22  
(define-const var2730 String "}") ; Statement: $r9 = "}" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3921!3 var2730)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3921!4 String)
(assert (= var3921!4 (str.++ var3921!3 var2730)))
 ; Statement: if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1675 1 0) 0))) ; Cond: z1 != 0 
(assert true)
(define-const var1425 String (toString/-2075883882 var3921!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var3404-to-var2750=([freemarker.core.DollarVariable], freemarker.core.TemplateObject), getInterpolationSyntax/-1757168589=([freemarker.template.Template], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1335936351=([freemarker.core.DollarVariable], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var882-to-var2750=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3404=freemarker.core.DollarVariable, var1731=r1, var1675=z1, var3670=z0, var3921=$r0, var843=freemarker.template.Template, var2750=freemarker.core.TemplateObject, var609=$r2, var3255=i0, var2894=$r7, var882=freemarker.core.Expression, var1270=$r3, var157=$r6, var3316=$r8, var2730=$r9, var1425=$r10}
; {freemarker.core.DollarVariable=var3404, r1=var1731, z1=var1675, z0=var3670, $r0=var3921, freemarker.template.Template=var843, freemarker.core.TemplateObject=var2750, $r2=var609, i0=var3255, $r7=var2894, freemarker.core.Expression=var882, $r3=var1270, $r6=var157, $r8=var3316, $r9=var2730, $r10=var1425}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DollarVariable;	z1 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>();	i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>();	if i0 == 22 goto $r7 = "[=";	$r7 = "[=";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression>;	$r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r8 = $r6;	$r8 = $r6;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	if i0 == 22 goto $r9 = "]";	$r9 = "}";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 8