(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3392 0)
(declare-sort var891 0)
(declare-sort var3147 0)
(declare-sort var1756 0)
(declare-sort var3995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTemplate/-542059899 (var3147) var891)
(declare-fun cast-from-var3392-to-var3147 (var3392) var3147)
(declare-fun getInterpolationSyntax/-1757168589 (var891) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1335936351 (var3392) var1756)
(declare-fun getCanonicalForm/-1714059646 (var3147) String)
(declare-fun cast-from-var1756-to-var3147 (var1756) var3147)
(declare-fun var3995_FTLStringLiteralEnc/2039231916 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3392 var3392)
(declare-const null-Bool Bool)
(declare-const var1997 var3392) ; Statement: r1 := @this: freemarker.core.DollarVariable 
(assert (not (= var1997 null-var3392)))
(declare-const var1641 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1641 null-Bool)))
(declare-const var492 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var492 null-Bool)))
(define-const var135 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var135)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var135!1 String)
(assert (= var135!1 ""))
(assert true)
(define-const var1076 var891 (getTemplate/-542059899 (cast-from-var3392-to-var3147 var1997))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var123 Int (getInterpolationSyntax/-1757168589 var1076)) ; Statement: i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>() 
 ; Statement: if i0 == 22 goto $r7 = "[=" 
(assert (not (= var123 22))) ; Negate: Cond: i0 == 22  
(define-const var3412 String "${") ; Statement: $r7 = "${" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var135!1 var3412)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var135!2 String)
(assert (= var135!2 (str.++ var135!1 var3412)))
(define-const var606 var1756 (expression/1335936351 var1997)) ; Statement: $r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression> 
(assert true)
(define-const var2498 String (getCanonicalForm/-1714059646 (cast-from-var1756-to-var3147 var606))) ; Statement: $r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r8 = $r6 
(assert (not (= (ite var492 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1946 String (var3995_FTLStringLiteralEnc/2039231916 var2498 34)) ; Statement: $r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>($r6, 34) 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var135!2 var1946)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var135!3 String)
(assert (= var135!3 (str.++ var135!2 var1946)))
 ; Statement: if i0 == 22 goto $r9 = "]" 
(assert (not (= var123 22))) ; Negate: Cond: i0 == 22  
(define-const var1001 String "}") ; Statement: $r9 = "}" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var135!3 var1001)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var135!4 String)
(assert (= var135!4 (str.++ var135!3 var1001)))
 ; Statement: if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1641 1 0) 0))) ; Cond: z1 != 0 
(assert true)
(define-const var2809 String (toString/-2075883882 var135!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var3392-to-var3147=([freemarker.core.DollarVariable], freemarker.core.TemplateObject), getInterpolationSyntax/-1757168589=([freemarker.template.Template], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1335936351=([freemarker.core.DollarVariable], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var1756-to-var3147=([freemarker.core.Expression], freemarker.core.TemplateObject), var3995_FTLStringLiteralEnc/2039231916=([java.lang.String, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3392=freemarker.core.DollarVariable, var1997=r1, var1641=z1, var492=z0, var135=$r0, var891=freemarker.template.Template, var3147=freemarker.core.TemplateObject, var1076=$r2, var123=i0, var3412=$r7, var1756=freemarker.core.Expression, var606=$r3, var2498=$r6, var3995=freemarker.template.utility.StringUtil, var1946=$r8, var1001=$r9, var2809=$r10}
; {freemarker.core.DollarVariable=var3392, r1=var1997, z1=var1641, z0=var492, $r0=var135, freemarker.template.Template=var891, freemarker.core.TemplateObject=var3147, $r2=var1076, i0=var123, $r7=var3412, freemarker.core.Expression=var1756, $r3=var606, $r6=var2498, freemarker.template.utility.StringUtil=var3995, $r8=var1946, $r9=var1001, $r10=var2809}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DollarVariable;	z1 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>();	i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>();	if i0 == 22 goto $r7 = "[=";	$r7 = "${";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression>;	$r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r8 = $r6;	$r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>($r6, 34);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	if i0 == 22 goto $r9 = "]";	$r9 = "}";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 8