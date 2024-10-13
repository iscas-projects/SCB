(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3998 0)
(declare-sort var1400 0)
(declare-sort var2121 0)
(declare-sort var2209 0)
(declare-sort var1177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1177_jQuoteNoXSS/34347637 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1177_jQuoteNoXSS/-1670165981 (var2209) String)
(declare-fun cast-from-var2121-to-var2209 (var2121) var2209)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3998 var3998)
(declare-const null-String String)
(declare-const null-var2121 var2121)
(declare-const null-var2209 var2209)
(declare-const null-Bool Bool)
(declare-const var3749 var3998) ; Statement: r19 := @this: freemarker.cache.TemplateCache 
(assert (not (= var3749 null-var3998)))
(declare-const var3255 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3255 null-String)))
(declare-const var3899 var2121) ; Statement: r4 := @parameter1: java.util.Locale 
(assert (not (= var3899 null-var2121)))
(declare-const var458 var2209) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var458 null-var2209)))
(declare-const var2867 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var2867 null-String)))
(declare-const var1754 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1754 null-Bool)))
(define-const var2147 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2147)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2147!1 String)
(assert (= var2147!1 ""))
(define-const var2956 String (var1177_jQuoteNoXSS/34347637 var3255)) ; Statement: $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1) 
(assert true)
(define-const var287 String (append/672562846 var2147!1 var2956)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2147!2 String)
(assert (= var2147!2 (str.++ var2147!1 var2956)))
(assert true)
(define-const var1422 String (append/672562846 var287 "(")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var287!1 String)
(assert (= var287!1 (str.++ var287 "(")))
(define-const var1128 String (var1177_jQuoteNoXSS/-1670165981 (cast-from-var2121-to-var2209 var3899))) ; Statement: $r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r4) 
(assert true)
(define-const var2152 String (append/672562846 var1422 var1128)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1422!1 String)
(assert (= var1422!1 (str.++ var1422 var1128)))
 ; Statement: if r7 == null goto $r20 = "" 
(assert (= var458 null-var2209)) ; Cond: r7 == null 
(define-const var3467 String "") ; Statement: $r20 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1326 String (append/672562846 var2152 var3467)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2152!1 String)
(assert (= var2152!1 (str.++ var2152 var3467)))
(assert true)
(define-const var3490 String (append/672562846 var1326 ", ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1326!1 String)
(assert (= var1326!1 (str.++ var1326 ", ")))
(assert true)
(define-const var2907 String (append/672562846 var3490 var2867)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3490!1 String)
(assert (= var3490!1 (str.++ var3490 var2867)))
 ; Statement: if z0 == 0 goto $r21 = ", unparsed]" 
(assert (not (= (ite var1754 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3253 String ", parsed)") ; Statement: $r21 = ", parsed)" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3045 String (append/672562846 var2907 var3253)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2907!1 String)
(assert (= var2907!1 (str.++ var2907 var3253)))
(assert true)
(define-const var3217 String (toString/-2075883882 var3045)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1177_jQuoteNoXSS/34347637=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1177_jQuoteNoXSS/-1670165981=([java.lang.Object], java.lang.String), cast-from-var2121-to-var2209=([java.util.Locale], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3998=freemarker.cache.TemplateCache, var3749=r19, var3255=r1, var1400=null_type, var2121=java.util.Locale, var3899=r4, var2209=java.lang.Object, var458=r7, var2867=r10, var1754=z0, var2147=$r0, var1177=freemarker.template.utility.StringUtil, var2956=$r2, var287=$r3, var1422=$r6, var1128=$r5, var2152=$r8, var3467=$r20, var1326=$r9, var3490=$r11, var2907=$r12, var3253=$r21, var3045=$r13, var3217=$r14}
; {freemarker.cache.TemplateCache=var3998, r19=var3749, r1=var3255, null_type=var1400, java.util.Locale=var2121, r4=var3899, java.lang.Object=var2209, r7=var458, r10=var2867, z0=var1754, $r0=var2147, freemarker.template.utility.StringUtil=var1177, $r2=var2956, $r3=var287, $r6=var1422, $r5=var1128, $r8=var2152, $r20=var3467, $r9=var1326, $r11=var3490, $r12=var2907, $r21=var3253, $r13=var3045, $r14=var3217}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r19 := @this: freemarker.cache.TemplateCache;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Locale;	r7 := @parameter2: java.lang.Object;	r10 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if r7 == null goto $r20 = "";	$r20 = "";	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	if z0 == 0 goto $r21 = ", unparsed]";	$r21 = ", parsed)";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 5