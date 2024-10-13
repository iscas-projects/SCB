(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var445 0)
(declare-sort var1252 0)
(declare-sort var501 0)
(declare-sort var198 0)
(declare-sort var1694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1694_jQuoteNoXSS/34347637 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1694_jQuoteNoXSS/-1670165981 (var198) String)
(declare-fun cast-from-var501-to-var198 (var501) var198)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var445 var445)
(declare-const null-String String)
(declare-const null-var501 var501)
(declare-const null-var198 var198)
(declare-const null-Bool Bool)
(declare-const var2188 var445) ; Statement: r19 := @this: freemarker.cache.TemplateCache 
(assert (not (= var2188 null-var445)))
(declare-const var2823 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2823 null-String)))
(declare-const var10 var501) ; Statement: r4 := @parameter1: java.util.Locale 
(assert (not (= var10 null-var501)))
(declare-const var1546 var198) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var1546 null-var198)))
(declare-const var956 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var956 null-String)))
(declare-const var125 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var125 null-Bool)))
(define-const var2349 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2349)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2349!1 String)
(assert (= var2349!1 ""))
(define-const var1394 String (var1694_jQuoteNoXSS/34347637 var2823)) ; Statement: $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1) 
(assert true)
(define-const var3586 String (append/672562846 var2349!1 var1394)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2349!2 String)
(assert (= var2349!2 (str.++ var2349!1 var1394)))
(assert true)
(define-const var1328 String (append/672562846 var3586 "(")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3586!1 String)
(assert (= var3586!1 (str.++ var3586 "(")))
(define-const var2959 String (var1694_jQuoteNoXSS/-1670165981 (cast-from-var501-to-var198 var10))) ; Statement: $r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r4) 
(assert true)
(define-const var1152 String (append/672562846 var1328 var2959)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1328!1 String)
(assert (= var1328!1 (str.++ var1328 var2959)))
 ; Statement: if r7 == null goto $r20 = "" 
(assert (not (= var1546 null-var198))) ; Negate: Cond: r7 == null  
(define-const var1161 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1161)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1161!1 String)
(assert (= var1161!1 ""))
(assert true)
(define-const var882 String (append/672562846 var1161!1 ", cond=")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cond=") 
(declare-const var1161!2 String)
(assert (= var1161!2 (str.++ var1161!1 ", cond=")))
(define-const var1933 String (var1694_jQuoteNoXSS/-1670165981 var1546)) ; Statement: $r16 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r7) 
(assert true)
(define-const var2646 String (append/672562846 var882 var1933)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var882!1 String)
(assert (= var882!1 (str.++ var882 var1933)))
(assert true)
(define-const var563 String (toString/-2075883882 var2646)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var659 String (append/672562846 var1152 var563)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1152!1 String)
(assert (= var1152!1 (str.++ var1152 var563)))
(assert true)
(define-const var506 String (append/672562846 var659 ", ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var659!1 String)
(assert (= var659!1 (str.++ var659 ", ")))
(assert true)
(define-const var687 String (append/672562846 var506 var956)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var506!1 String)
(assert (= var506!1 (str.++ var506 var956)))
 ; Statement: if z0 == 0 goto $r21 = ", unparsed]" 
(assert (= (ite var125 1 0) 0)) ; Cond: z0 == 0 
(define-const var2261 String ", unparsed]") ; Statement: $r21 = ", unparsed]" 
(assert true) ; Non Conditional
(assert true)
(define-const var2445 String (append/672562846 var687 var2261)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var687!1 String)
(assert (= var687!1 (str.++ var687 var2261)))
(assert true)
(define-const var3754 String (toString/-2075883882 var2445)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1694_jQuoteNoXSS/34347637=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1694_jQuoteNoXSS/-1670165981=([java.lang.Object], java.lang.String), cast-from-var501-to-var198=([java.util.Locale], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var445=freemarker.cache.TemplateCache, var2188=r19, var2823=r1, var1252=null_type, var501=java.util.Locale, var10=r4, var198=java.lang.Object, var1546=r7, var956=r10, var125=z0, var2349=$r0, var1694=freemarker.template.utility.StringUtil, var1394=$r2, var3586=$r3, var1328=$r6, var2959=$r5, var1152=$r8, var1161=$r15, var882=$r17, var1933=$r16, var2646=$r18, var563=$r20, var659=$r9, var506=$r11, var687=$r12, var2261=$r21, var2445=$r13, var3754=$r14}
; {freemarker.cache.TemplateCache=var445, r19=var2188, r1=var2823, null_type=var1252, java.util.Locale=var501, r4=var10, java.lang.Object=var198, r7=var1546, r10=var956, z0=var125, $r0=var2349, freemarker.template.utility.StringUtil=var1694, $r2=var1394, $r3=var3586, $r6=var1328, $r5=var2959, $r8=var1152, $r15=var1161, $r17=var882, $r16=var1933, $r18=var2646, $r20=var563, $r9=var659, $r11=var506, $r12=var687, $r21=var2261, $r13=var2445, $r14=var3754}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r19 := @this: freemarker.cache.TemplateCache;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Locale;	r7 := @parameter2: java.lang.Object;	r10 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if r7 == null goto $r20 = "";	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cond=");	$r16 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r7);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	if z0 == 0 goto $r21 = ", unparsed]";	$r21 = ", unparsed]";	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 5