(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var310 0)
(declare-sort var3361 0)
(declare-sort var444 0)
(declare-sort var187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTemplate/-542059899 (var444) var3361)
(declare-fun cast-from-var310-to-var444 (var310) var444)
(declare-fun getInterpolationSyntax/-1757168589 (var3361) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1335936351 (var310) var187)
(declare-fun getCanonicalForm/-1714059646 (var444) String)
(declare-fun cast-from-var187-to-var444 (var187) var444)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var310 var310)
(declare-const null-Bool Bool)
(declare-const var2253 var310) ; Statement: r1 := @this: freemarker.core.DollarVariable 
(assert (not (= var2253 null-var310)))
(declare-const var1566 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var1566 null-Bool)))
(declare-const var1849 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1849 null-Bool)))
(define-const var3159 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3159)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3159!1 String)
(assert (= var3159!1 ""))
(assert true)
(define-const var2763 var3361 (getTemplate/-542059899 (cast-from-var310-to-var444 var2253))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var3492 Int (getInterpolationSyntax/-1757168589 var2763)) ; Statement: i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>() 
 ; Statement: if i0 == 22 goto $r7 = "[=" 
(assert (not (= var3492 22))) ; Negate: Cond: i0 == 22  
(define-const var1025 String "${") ; Statement: $r7 = "${" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3159!1 var1025)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3159!2 String)
(assert (= var3159!2 (str.++ var3159!1 var1025)))
(define-const var3071 var187 (expression/1335936351 var2253)) ; Statement: $r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression> 
(assert true)
(define-const var3578 String (getCanonicalForm/-1714059646 (cast-from-var187-to-var444 var3071))) ; Statement: $r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r8 = $r6 
(assert (= (ite var1849 1 0) 0)) ; Cond: z0 == 0 
(define-const var3814 String var3578) ; Statement: $r8 = $r6 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3159!2 var3814)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3159!3 String)
(assert (= var3159!3 (str.++ var3159!2 var3814)))
 ; Statement: if i0 == 22 goto $r9 = "]" 
(assert (not (= var3492 22))) ; Negate: Cond: i0 == 22  
(define-const var1964 String "}") ; Statement: $r9 = "}" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3159!3 var1964)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3159!4 String)
(assert (= var3159!4 (str.++ var3159!3 var1964)))
 ; Statement: if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1566 1 0) 0))) ; Cond: z1 != 0 
(assert true)
(define-const var1017 String (toString/-2075883882 var3159!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var310-to-var444=([freemarker.core.DollarVariable], freemarker.core.TemplateObject), getInterpolationSyntax/-1757168589=([freemarker.template.Template], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1335936351=([freemarker.core.DollarVariable], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var187-to-var444=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var310=freemarker.core.DollarVariable, var2253=r1, var1566=z1, var1849=z0, var3159=$r0, var3361=freemarker.template.Template, var444=freemarker.core.TemplateObject, var2763=$r2, var3492=i0, var1025=$r7, var187=freemarker.core.Expression, var3071=$r3, var3578=$r6, var3814=$r8, var1964=$r9, var1017=$r10}
; {freemarker.core.DollarVariable=var310, r1=var2253, z1=var1566, z0=var1849, $r0=var3159, freemarker.template.Template=var3361, freemarker.core.TemplateObject=var444, $r2=var2763, i0=var3492, $r7=var1025, freemarker.core.Expression=var187, $r3=var3071, $r6=var3578, $r8=var3814, $r9=var1964, $r10=var1017}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DollarVariable;	z1 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>();	i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>();	if i0 == 22 goto $r7 = "[=";	$r7 = "${";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression>;	$r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r8 = $r6;	$r8 = $r6;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	if i0 == 22 goto $r9 = "]";	$r9 = "}";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 8