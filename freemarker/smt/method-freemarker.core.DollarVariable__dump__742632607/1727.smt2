(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1133 0)
(declare-sort var1970 0)
(declare-sort var3243 0)
(declare-sort var3656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTemplate/-542059899 (var3243) var1970)
(declare-fun cast-from-var1133-to-var3243 (var1133) var3243)
(declare-fun getInterpolationSyntax/-1757168589 (var1970) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1335936351 (var1133) var3656)
(declare-fun getCanonicalForm/-1714059646 (var3243) String)
(declare-fun cast-from-var3656-to-var3243 (var3656) var3243)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1133 var1133)
(declare-const null-Bool Bool)
(declare-const var841 var1133) ; Statement: r1 := @this: freemarker.core.DollarVariable 
(assert (not (= var841 null-var1133)))
(declare-const var203 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var203 null-Bool)))
(declare-const var2510 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2510 null-Bool)))
(define-const var3508 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3508)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3508!1 String)
(assert (= var3508!1 ""))
(assert true)
(define-const var2955 var1970 (getTemplate/-542059899 (cast-from-var1133-to-var3243 var841))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var1784 Int (getInterpolationSyntax/-1757168589 var2955)) ; Statement: i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>() 
 ; Statement: if i0 == 22 goto $r7 = "[=" 
(assert (not (= var1784 22))) ; Negate: Cond: i0 == 22  
(define-const var2503 String "${") ; Statement: $r7 = "${" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3508!1 var2503)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3508!2 String)
(assert (= var3508!2 (str.++ var3508!1 var2503)))
(define-const var2471 var3656 (expression/1335936351 var841)) ; Statement: $r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression> 
(assert true)
(define-const var1388 String (getCanonicalForm/-1714059646 (cast-from-var3656-to-var3243 var2471))) ; Statement: $r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r8 = $r6 
(assert (= (ite var2510 1 0) 0)) ; Cond: z0 == 0 
(define-const var804 String var1388) ; Statement: $r8 = $r6 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3508!2 var804)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3508!3 String)
(assert (= var3508!3 (str.++ var3508!2 var804)))
 ; Statement: if i0 == 22 goto $r9 = "]" 
(assert (= var1784 22)) ; Cond: i0 == 22 
(define-const var3447 String "]") ; Statement: $r9 = "]" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3508!3 var3447)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3508!4 String)
(assert (= var3508!4 (str.++ var3508!3 var3447)))
 ; Statement: if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var203 1 0) 0))) ; Cond: z1 != 0 
(assert true)
(define-const var2365 String (toString/-2075883882 var3508!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var1133-to-var3243=([freemarker.core.DollarVariable], freemarker.core.TemplateObject), getInterpolationSyntax/-1757168589=([freemarker.template.Template], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1335936351=([freemarker.core.DollarVariable], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3656-to-var3243=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1133=freemarker.core.DollarVariable, var841=r1, var203=z1, var2510=z0, var3508=$r0, var1970=freemarker.template.Template, var3243=freemarker.core.TemplateObject, var2955=$r2, var1784=i0, var2503=$r7, var3656=freemarker.core.Expression, var2471=$r3, var1388=$r6, var804=$r8, var3447=$r9, var2365=$r10}
; {freemarker.core.DollarVariable=var1133, r1=var841, z1=var203, z0=var2510, $r0=var3508, freemarker.template.Template=var1970, freemarker.core.TemplateObject=var3243, $r2=var2955, i0=var1784, $r7=var2503, freemarker.core.Expression=var3656, $r3=var2471, $r6=var1388, $r8=var804, $r9=var3447, $r10=var2365}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DollarVariable;	z1 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>();	i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>();	if i0 == 22 goto $r7 = "[=";	$r7 = "${";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression>;	$r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r8 = $r6;	$r8 = $r6;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	if i0 == 22 goto $r9 = "]";	$r9 = "]";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 8