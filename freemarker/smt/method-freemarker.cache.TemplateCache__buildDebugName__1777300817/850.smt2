(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3337 0)
(declare-sort var2222 0)
(declare-sort var1100 0)
(declare-sort var2812 0)
(declare-sort var1111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1111_jQuoteNoXSS/34347637 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1111_jQuoteNoXSS/-1670165981 (var2812) String)
(declare-fun cast-from-var1100-to-var2812 (var1100) var2812)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3337 var3337)
(declare-const null-String String)
(declare-const null-var1100 var1100)
(declare-const null-var2812 var2812)
(declare-const null-Bool Bool)
(declare-const var457 var3337) ; Statement: r19 := @this: freemarker.cache.TemplateCache 
(assert (not (= var457 null-var3337)))
(declare-const var28 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var28 null-String)))
(declare-const var408 var1100) ; Statement: r4 := @parameter1: java.util.Locale 
(assert (not (= var408 null-var1100)))
(declare-const var1885 var2812) ; Statement: r7 := @parameter2: java.lang.Object 
(assert (not (= var1885 null-var2812)))
(declare-const var843 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var843 null-String)))
(declare-const var847 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var847 null-Bool)))
(define-const var3411 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3411)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3411!1 String)
(assert (= var3411!1 ""))
(define-const var2317 String (var1111_jQuoteNoXSS/34347637 var28)) ; Statement: $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1) 
(assert true)
(define-const var53 String (append/672562846 var3411!1 var2317)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3411!2 String)
(assert (= var3411!2 (str.++ var3411!1 var2317)))
(assert true)
(define-const var3469 String (append/672562846 var53 "(")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var53!1 String)
(assert (= var53!1 (str.++ var53 "(")))
(define-const var1552 String (var1111_jQuoteNoXSS/-1670165981 (cast-from-var1100-to-var2812 var408))) ; Statement: $r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r4) 
(assert true)
(define-const var2039 String (append/672562846 var3469 var1552)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3469!1 String)
(assert (= var3469!1 (str.++ var3469 var1552)))
 ; Statement: if r7 == null goto $r20 = "" 
(assert (not (= var1885 null-var2812))) ; Negate: Cond: r7 == null  
(define-const var3641 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3641)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3641!1 String)
(assert (= var3641!1 ""))
(assert true)
(define-const var204 String (append/672562846 var3641!1 ", cond=")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cond=") 
(declare-const var3641!2 String)
(assert (= var3641!2 (str.++ var3641!1 ", cond=")))
(define-const var252 String (var1111_jQuoteNoXSS/-1670165981 var1885)) ; Statement: $r16 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r7) 
(assert true)
(define-const var1963 String (append/672562846 var204 var252)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var204!1 String)
(assert (= var204!1 (str.++ var204 var252)))
(assert true)
(define-const var1333 String (toString/-2075883882 var1963)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)] 
(assert true) ; Non Conditional
(assert true)
(define-const var623 String (append/672562846 var2039 var1333)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2039!1 String)
(assert (= var2039!1 (str.++ var2039 var1333)))
(assert true)
(define-const var2140 String (append/672562846 var623 ", ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var623!1 String)
(assert (= var623!1 (str.++ var623 ", ")))
(assert true)
(define-const var1876 String (append/672562846 var2140 var843)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2140!1 String)
(assert (= var2140!1 (str.++ var2140 var843)))
 ; Statement: if z0 == 0 goto $r21 = ", unparsed]" 
(assert (not (= (ite var847 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3309 String ", parsed)") ; Statement: $r21 = ", parsed)" 
 ; Statement: goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var115 String (append/672562846 var1876 var3309)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1876!1 String)
(assert (= var1876!1 (str.++ var1876 var3309)))
(assert true)
(define-const var1370 String (toString/-2075883882 var115)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1111_jQuoteNoXSS/34347637=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1111_jQuoteNoXSS/-1670165981=([java.lang.Object], java.lang.String), cast-from-var1100-to-var2812=([java.util.Locale], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3337=freemarker.cache.TemplateCache, var457=r19, var28=r1, var2222=null_type, var1100=java.util.Locale, var408=r4, var2812=java.lang.Object, var1885=r7, var843=r10, var847=z0, var3411=$r0, var1111=freemarker.template.utility.StringUtil, var2317=$r2, var53=$r3, var3469=$r6, var1552=$r5, var2039=$r8, var3641=$r15, var204=$r17, var252=$r16, var1963=$r18, var1333=$r20, var623=$r9, var2140=$r11, var1876=$r12, var3309=$r21, var115=$r13, var1370=$r14}
; {freemarker.cache.TemplateCache=var3337, r19=var457, r1=var28, null_type=var2222, java.util.Locale=var1100, r4=var408, java.lang.Object=var2812, r7=var1885, r10=var843, z0=var847, $r0=var3411, freemarker.template.utility.StringUtil=var1111, $r2=var2317, $r3=var53, $r6=var3469, $r5=var1552, $r8=var2039, $r15=var3641, $r17=var204, $r16=var252, $r18=var1963, $r20=var1333, $r9=var623, $r11=var2140, $r12=var1876, $r21=var3309, $r13=var115, $r14=var1370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r19 := @this: freemarker.cache.TemplateCache;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Locale;	r7 := @parameter2: java.lang.Object;	r10 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.String)>(r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r5 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	if r7 == null goto $r20 = "";	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", cond=");	$r16 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuoteNoXSS(java.lang.Object)>(r7);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	if z0 == 0 goto $r21 = ", unparsed]";	$r21 = ", parsed)";	goto [?= $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 5