(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var255 0)
(declare-sort var1720 0)
(declare-sort var1581 0)
(declare-sort var3406 0)
(declare-sort var1156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTemplate/-542059899 (var1581) var1720)
(declare-fun cast-from-var255-to-var1581 (var255) var1581)
(declare-fun getInterpolationSyntax/-1757168589 (var1720) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1335936351 (var255) var3406)
(declare-fun getCanonicalForm/-1714059646 (var1581) String)
(declare-fun cast-from-var3406-to-var1581 (var3406) var1581)
(declare-fun var1156_FTLStringLiteralEnc/2039231916 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var255 var255)
(declare-const null-Bool Bool)
(declare-const var3131 var255) ; Statement: r1 := @this: freemarker.core.DollarVariable 
(assert (not (= var3131 null-var255)))
(declare-const var1299 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1299 null-Bool)))
(declare-const var1681 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1681 null-Bool)))
(define-const var3870 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3870)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3870!1 String)
(assert (= var3870!1 ""))
(assert true)
(define-const var3884 var1720 (getTemplate/-542059899 (cast-from-var255-to-var1581 var3131))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var2422 Int (getInterpolationSyntax/-1757168589 var3884)) ; Statement: i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>() 
 ; Statement: if i0 == 22 goto $r7 = "[=" 
(assert (= var2422 22)) ; Cond: i0 == 22 
(define-const var1140 String "[=") ; Statement: $r7 = "[=" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3870!1 var1140)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3870!2 String)
(assert (= var3870!2 (str.++ var3870!1 var1140)))
(define-const var1737 var3406 (expression/1335936351 var3131)) ; Statement: $r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression> 
(assert true)
(define-const var2549 String (getCanonicalForm/-1714059646 (cast-from-var3406-to-var1581 var1737))) ; Statement: $r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r8 = $r6 
(assert (not (= (ite var1681 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3902 String (var1156_FTLStringLiteralEnc/2039231916 var2549 34)) ; Statement: $r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>($r6, 34) 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3870!2 var3902)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3870!3 String)
(assert (= var3870!3 (str.++ var3870!2 var3902)))
 ; Statement: if i0 == 22 goto $r9 = "]" 
(assert (= var2422 22)) ; Cond: i0 == 22 
(define-const var622 String "]") ; Statement: $r9 = "]" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3870!3 var622)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3870!4 String)
(assert (= var3870!4 (str.++ var3870!3 var622)))
 ; Statement: if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1299 1 0) 0))) ; Cond: z1 != 0 
(assert true)
(define-const var1904 String (toString/-2075883882 var3870!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var255-to-var1581=([freemarker.core.DollarVariable], freemarker.core.TemplateObject), getInterpolationSyntax/-1757168589=([freemarker.template.Template], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1335936351=([freemarker.core.DollarVariable], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3406-to-var1581=([freemarker.core.Expression], freemarker.core.TemplateObject), var1156_FTLStringLiteralEnc/2039231916=([java.lang.String, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var255=freemarker.core.DollarVariable, var3131=r1, var1299=z1, var1681=z0, var3870=$r0, var1720=freemarker.template.Template, var1581=freemarker.core.TemplateObject, var3884=$r2, var2422=i0, var1140=$r7, var3406=freemarker.core.Expression, var1737=$r3, var2549=$r6, var1156=freemarker.template.utility.StringUtil, var3902=$r8, var622=$r9, var1904=$r10}
; {freemarker.core.DollarVariable=var255, r1=var3131, z1=var1299, z0=var1681, $r0=var3870, freemarker.template.Template=var1720, freemarker.core.TemplateObject=var1581, $r2=var3884, i0=var2422, $r7=var1140, freemarker.core.Expression=var3406, $r3=var1737, $r6=var2549, freemarker.template.utility.StringUtil=var1156, $r8=var3902, $r9=var622, $r10=var1904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DollarVariable;	z1 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>();	i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>();	if i0 == 22 goto $r7 = "[=";	$r7 = "[=";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression>;	$r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r8 = $r6;	$r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>($r6, 34);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	if i0 == 22 goto $r9 = "]";	$r9 = "]";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 8