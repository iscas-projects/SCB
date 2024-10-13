(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2600 0)
(declare-sort var1444 0)
(declare-sort var557 0)
(declare-sort var3166 0)
(declare-sort var21 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var21_jQuoteNoXSS/34347637 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var21_jQuoteNoXSS/-1670165981 (var3166) String)
(declare-fun cast-from-var557-to-var3166 (var557) var3166)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2600 var2600)
(declare-const null-String String)
(declare-const null-var557 var557)
(declare-const null-var3166 var3166)
(declare-const null-Bool Bool)
(declare-const var1449 var2600) ; Statement: r19 := @this: freemarker.cache.TemplateCache 
(assert (not (= var1449 null-var2600)))
(declare-const var283 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var283 null-String)))
(declare-const var3867 var557) ; Statement: r4 := @parameter1: java.util.Locale 
(assert (not (= var3867 null-var557)))
(declare-const var1790 var3166) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var1790 null-var3166)))
(declare-const var909 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var909 null-String)))
(declare-const var2230 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2230 null-Bool)))
(define-const var437 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var437)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var437!1 String)
(assert (= var437!1 ""))
(define-const var1688 String (var21_jQuoteNoXSS/34347637 var283)) ; Statement: $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1) 
(assert true)
(define-const var2981 String (append/672562846 var437!1 var1688)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var437!2 String)
(assert (= var437!2 (str.++ var437!1 var1688)))
(assert true)
(define-const var1013 String (append/672562846 var2981 "(")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 "(")))
(define-const var81 String (var21_jQuoteNoXSS/-1670165981 (cast-from-var557-to-var3166 var3867))) ; Statement: $r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r4) 
(assert true)
(define-const var1984 String (append/672562846 var1013 var81)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1013!1 String)
(assert (= var1013!1 (str.++ var1013 var81)))
 ; Statement: if r7 == null goto $r20 = "" 
(assert (= var1790 null-var3166)) ; Cond: r7 == null 
(define-const var2803 String "") ; Statement: $r20 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var859 String (append/672562846 var1984 var2803)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1984!1 String)
(assert (= var1984!1 (str.++ var1984 var2803)))
(assert true)
(define-const var1711 String (append/672562846 var859 ", ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var859!1 String)
(assert (= var859!1 (str.++ var859 ", ")))
(assert true)
(define-const var1367 String (append/672562846 var1711 var909)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1711!1 String)
(assert (= var1711!1 (str.++ var1711 var909)))
 ; Statement: if z0 == 0 goto $r21 = ", unparsed]" 
(assert (= (ite var2230 1 0) 0)) ; Cond: z0 == 0 
(define-const var2784 String ", unparsed]") ; Statement: $r21 = ", unparsed]" 
(assert true) ; Non Conditional
(assert true)
(define-const var1724 String (append/672562846 var1367 var2784)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1367!1 String)
(assert (= var1367!1 (str.++ var1367 var2784)))
(assert true)
(define-const var3737 String (toString/-2075883882 var1724)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var21_jQuoteNoXSS/34347637=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var21_jQuoteNoXSS/-1670165981=([java.lang.Object], java.lang.String), cast-from-var557-to-var3166=([java.util.Locale], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2600=freemarker.cache.TemplateCache, var1449=r19, var283=r1, var1444=null_type, var557=java.util.Locale, var3867=r4, var3166=java.lang.Object, var1790=r7, var909=r10, var2230=z0, var437=$r0, var21=freemarker.template.utility.StringUtil, var1688=$r2, var2981=$r3, var1013=$r6, var81=$r5, var1984=$r8, var2803=$r20, var859=$r9, var1711=$r11, var1367=$r12, var2784=$r21, var1724=$r13, var3737=$r14}
; {freemarker.cache.TemplateCache=var2600, r19=var1449, r1=var283, null_type=var1444, java.util.Locale=var557, r4=var3867, java.lang.Object=var3166, r7=var1790, r10=var909, z0=var2230, $r0=var437, freemarker.template.utility.StringUtil=var21, $r2=var1688, $r3=var2981, $r6=var1013, $r5=var81, $r8=var1984, $r20=var2803, $r9=var859, $r11=var1711, $r12=var1367, $r21=var2784, $r13=var1724, $r14=var3737}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r19 := @this: freemarker.cache.TemplateCache;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Locale;	r7 := @parameter2: java.lang.Object;	r10 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if r7 == null goto $r20 = "";	$r20 = "";	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	if z0 == 0 goto $r21 = ", unparsed]";	$r21 = ", unparsed]";	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 5