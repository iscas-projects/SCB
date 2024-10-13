(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var403 0)
(declare-sort var2445 0)
(declare-sort var2217 0)
(declare-sort var3113 0)
(declare-sort var2618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTemplate/-542059899 (var2217) var2445)
(declare-fun cast-from-var403-to-var2217 (var403) var2217)
(declare-fun getInterpolationSyntax/-1757168589 (var2445) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1335936351 (var403) var3113)
(declare-fun getCanonicalForm/-1714059646 (var2217) String)
(declare-fun cast-from-var3113-to-var2217 (var3113) var2217)
(declare-fun var2618_FTLStringLiteralEnc/2039231916 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var403 var403)
(declare-const null-Bool Bool)
(declare-const var1921 var403) ; Statement: r1 := @this: freemarker.core.DollarVariable 
(assert (not (= var1921 null-var403)))
(declare-const var909 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var909 null-Bool)))
(declare-const var3154 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3154 null-Bool)))
(define-const var285 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var285)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var285!1 String)
(assert (= var285!1 ""))
(assert true)
(define-const var2608 var2445 (getTemplate/-542059899 (cast-from-var403-to-var2217 var1921))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var2450 Int (getInterpolationSyntax/-1757168589 var2608)) ; Statement: i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>() 
 ; Statement: if i0 == 22 goto $r7 = "[=" 
(assert (not (= var2450 22))) ; Negate: Cond: i0 == 22  
(define-const var1145 String "${") ; Statement: $r7 = "${" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var285!1 var1145)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var285!2 String)
(assert (= var285!2 (str.++ var285!1 var1145)))
(define-const var553 var3113 (expression/1335936351 var1921)) ; Statement: $r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression> 
(assert true)
(define-const var615 String (getCanonicalForm/-1714059646 (cast-from-var3113-to-var2217 var553))) ; Statement: $r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r8 = $r6 
(assert (not (= (ite var3154 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1879 String (var2618_FTLStringLiteralEnc/2039231916 var615 34)) ; Statement: $r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>($r6, 34) 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var285!2 var1879)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var285!3 String)
(assert (= var285!3 (str.++ var285!2 var1879)))
 ; Statement: if i0 == 22 goto $r9 = "]" 
(assert (= var2450 22)) ; Cond: i0 == 22 
(define-const var2611 String "]") ; Statement: $r9 = "]" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var285!3 var2611)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var285!4 String)
(assert (= var285!4 (str.++ var285!3 var2611)))
 ; Statement: if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var909 1 0) 0))) ; Cond: z1 != 0 
(assert true)
(define-const var160 String (toString/-2075883882 var285!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var403-to-var2217=([freemarker.core.DollarVariable], freemarker.core.TemplateObject), getInterpolationSyntax/-1757168589=([freemarker.template.Template], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1335936351=([freemarker.core.DollarVariable], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3113-to-var2217=([freemarker.core.Expression], freemarker.core.TemplateObject), var2618_FTLStringLiteralEnc/2039231916=([java.lang.String, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var403=freemarker.core.DollarVariable, var1921=r1, var909=z1, var3154=z0, var285=$r0, var2445=freemarker.template.Template, var2217=freemarker.core.TemplateObject, var2608=$r2, var2450=i0, var1145=$r7, var3113=freemarker.core.Expression, var553=$r3, var615=$r6, var2618=freemarker.template.utility.StringUtil, var1879=$r8, var2611=$r9, var160=$r10}
; {freemarker.core.DollarVariable=var403, r1=var1921, z1=var909, z0=var3154, $r0=var285, freemarker.template.Template=var2445, freemarker.core.TemplateObject=var2217, $r2=var2608, i0=var2450, $r7=var1145, freemarker.core.Expression=var3113, $r3=var553, $r6=var615, freemarker.template.utility.StringUtil=var2618, $r8=var1879, $r9=var2611, $r10=var160}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DollarVariable;	z1 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>();	i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>();	if i0 == 22 goto $r7 = "[=";	$r7 = "${";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression>;	$r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r8 = $r6;	$r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>($r6, 34);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	if i0 == 22 goto $r9 = "]";	$r9 = "]";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 8