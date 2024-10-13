(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3395 0)
(declare-sort var3911 0)
(declare-sort var866 0)
(declare-sort var149 0)
(declare-sort var3919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTemplate/-542059899 (var866) var3911)
(declare-fun cast-from-var3395-to-var866 (var3395) var866)
(declare-fun getInterpolationSyntax/-1757168589 (var3911) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1335936351 (var3395) var149)
(declare-fun getCanonicalForm/-1714059646 (var866) String)
(declare-fun cast-from-var149-to-var866 (var149) var866)
(declare-fun var3919_FTLStringLiteralEnc/2039231916 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3395 var3395)
(declare-const null-Bool Bool)
(declare-const var52 var3395) ; Statement: r1 := @this: freemarker.core.DollarVariable 
(assert (not (= var52 null-var3395)))
(declare-const var3830 Bool) ; Statement: z1 := @parameter0: boolean 
(assert (not (= var3830 null-Bool)))
(declare-const var3367 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3367 null-Bool)))
(define-const var1966 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1966)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1966!1 String)
(assert (= var1966!1 ""))
(assert true)
(define-const var2572 var3911 (getTemplate/-542059899 (cast-from-var3395-to-var866 var52))) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>() 
(assert true)
(define-const var1902 Int (getInterpolationSyntax/-1757168589 var2572)) ; Statement: i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>() 
 ; Statement: if i0 == 22 goto $r7 = "[=" 
(assert (= var1902 22)) ; Cond: i0 == 22 
(define-const var1885 String "[=") ; Statement: $r7 = "[=" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1966!1 var1885)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1966!2 String)
(assert (= var1966!2 (str.++ var1966!1 var1885)))
(define-const var1029 var149 (expression/1335936351 var52)) ; Statement: $r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression> 
(assert true)
(define-const var3374 String (getCanonicalForm/-1714059646 (cast-from-var149-to-var866 var1029))) ; Statement: $r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
 ; Statement: if z0 == 0 goto $r8 = $r6 
(assert (not (= (ite var3367 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var343 String (var3919_FTLStringLiteralEnc/2039231916 var3374 34)) ; Statement: $r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>($r6, 34) 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1966!2 var343)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1966!3 String)
(assert (= var1966!3 (str.++ var1966!2 var343)))
 ; Statement: if i0 == 22 goto $r9 = "]" 
(assert (not (= var1902 22))) ; Negate: Cond: i0 == 22  
(define-const var2835 String "}") ; Statement: $r9 = "}" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1966!3 var2835)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1966!4 String)
(assert (= var1966!4 (str.++ var1966!3 var2835)))
 ; Statement: if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var3830 1 0) 0))) ; Cond: z1 != 0 
(assert true)
(define-const var374 String (toString/-2075883882 var1966!4)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var3395-to-var866=([freemarker.core.DollarVariable], freemarker.core.TemplateObject), getInterpolationSyntax/-1757168589=([freemarker.template.Template], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1335936351=([freemarker.core.DollarVariable], freemarker.core.Expression), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var149-to-var866=([freemarker.core.Expression], freemarker.core.TemplateObject), var3919_FTLStringLiteralEnc/2039231916=([java.lang.String, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3395=freemarker.core.DollarVariable, var52=r1, var3830=z1, var3367=z0, var1966=$r0, var3911=freemarker.template.Template, var866=freemarker.core.TemplateObject, var2572=$r2, var1902=i0, var1885=$r7, var149=freemarker.core.Expression, var1029=$r3, var3374=$r6, var3919=freemarker.template.utility.StringUtil, var343=$r8, var2835=$r9, var374=$r10}
; {freemarker.core.DollarVariable=var3395, r1=var52, z1=var3830, z0=var3367, $r0=var1966, freemarker.template.Template=var3911, freemarker.core.TemplateObject=var866, $r2=var2572, i0=var1902, $r7=var1885, freemarker.core.Expression=var149, $r3=var1029, $r6=var3374, freemarker.template.utility.StringUtil=var3919, $r8=var343, $r9=var2835, $r10=var374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.DollarVariable;	z1 := @parameter0: boolean;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<freemarker.core.DollarVariable: freemarker.template.Template getTemplate()>();	i0 = virtualinvoke $r2.<freemarker.template.Template: int getInterpolationSyntax()>();	if i0 == 22 goto $r7 = "[=";	$r7 = "[=";	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r3 = r1.<freemarker.core.DollarVariable: freemarker.core.Expression expression>;	$r6 = virtualinvoke $r3.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	if z0 == 0 goto $r8 = $r6;	$r8 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralEnc(java.lang.String,char)>($r6, 34);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	if i0 == 22 goto $r9 = "]";	$r9 = "}";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	if z1 != 0 goto $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 8