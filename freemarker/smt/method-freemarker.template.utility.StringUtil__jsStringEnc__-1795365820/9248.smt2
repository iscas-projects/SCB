(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1091 0)
(declare-sort var547 0)
(declare-sort var365 0)
(declare-sort var3256 0)
(declare-sort var2947 0)
(declare-sort var1861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3256_check/-951860758 (String var2947) void)
(declare-fun cast-from-String-to-var2947 (String) var2947)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var547_access$000/-254855739 (var547) Bool)
(declare-fun var1861-init () var1861)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2947) String)
(declare-fun cast-from-var365-to-var2947 (var365) var2947)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1861 String) void)
(declare-const null-String String)
(declare-const null-var547 var547)
(declare-const null-var365 var365)
(declare-const var365-APOSTROPHE var365)
(declare-const var373 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var373 null-String)))
(declare-const var2378 var547) ; Statement: r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility 
(assert (not (= var2378 null-var547)))
(declare-const var837 var365) ; Statement: r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation 
(assert (not (= var837 null-var365)))
;(assert (var3256_check/-951860758 "s" (cast-from-String-to-var2947 var373))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0) 

(declare-const var550 String)
(declare-const var373!1 String)
(assert true)
(define-const var3940 Int (length/-134980193 var373!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
(assert (not (= var837 null-var365))) ; Cond: r1 != null 
(define-const var2849 var365 var365-APOSTROPHE) ; Statement: $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE> 
 ; Statement: if r1 != $r2 goto $r17 = new java.lang.StringBuilder 
(assert (not (not (= var837 var2849)))) ; Negate: Cond: r1 != $r2  
(define-const var103 Bool (var547_access$000/-254855739 var2378)) ; Statement: $z4 = staticinvoke <freemarker.template.utility.StringUtil$JsStringEncCompatibility: boolean access$000(freemarker.template.utility.StringUtil$JsStringEncCompatibility)>(r4) 
 ; Statement: if $z4 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (not (= (ite var103 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var322 var1861 var1861-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var227 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var227)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var227!1 String)
(assert (= var227!1 ""))
(assert true)
(define-const var111 String (append/672562846 var227!1 "JSON compatible mode doesn\u0027t allow quotationMode=")) ; Statement: $r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON compatible mode doesn\'t allow quotationMode=") 
(declare-const var227!2 String)
(assert (= var227!2 (str.++ var227!1 "JSON compatible mode doesn\u0027t allow quotationMode=")))
(assert true)
(define-const var2463 String (append/-1031950772 var111 (cast-from-var365-to-var2947 var837))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var111!1 String)
(assert (str.prefixof var111 var111!1))
(assert true)
(define-const var1015 String (toString/-2075883882 var2463)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var322 var1015)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var322!1 var1861)
(declare-const var1015!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var3256_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var2947=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), var547_access$000/-254855739=([freemarker.template.utility.StringUtil$JsStringEncCompatibility], boolean), var1861-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var365-to-var2947=([freemarker.template.utility.StringUtil$JsStringEncQuotation], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var373=r0, var1091=null_type, var547=freemarker.template.utility.StringUtil$JsStringEncCompatibility, var2378=r4, var365=freemarker.template.utility.StringUtil$JsStringEncQuotation, var837=r1, var3256=freemarker.template.utility.NullArgumentException, var2947=java.lang.Object, var550="s", var3940=i0, var2849=$r2, var103=$z4, var1861=java.lang.IllegalArgumentException, var322=$r16, var227=$r15, var111=$r10, var2463=$r11, var1015=$r12}
; {r0=var373, null_type=var1091, freemarker.template.utility.StringUtil$JsStringEncCompatibility=var547, r4=var2378, freemarker.template.utility.StringUtil$JsStringEncQuotation=var365, r1=var837, freemarker.template.utility.NullArgumentException=var3256, java.lang.Object=var2947, "s"=var550, i0=var3940, $r2=var2849, $z4=var103, java.lang.IllegalArgumentException=var1861, $r16=var322, $r15=var227, $r10=var111, $r11=var2463, $r12=var1015}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.template.utility.StringUtil$JsStringEncCompatibility;	r1 := @parameter2: freemarker.template.utility.StringUtil$JsStringEncQuotation;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("s", r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if r1 != null goto $r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	$r2 = <freemarker.template.utility.StringUtil$JsStringEncQuotation: freemarker.template.utility.StringUtil$JsStringEncQuotation APOSTROPHE>;	if r1 != $r2 goto $r17 = new java.lang.StringBuilder;	$z4 = staticinvoke <freemarker.template.utility.StringUtil$JsStringEncCompatibility: boolean access$000(freemarker.template.utility.StringUtil$JsStringEncCompatibility)>(r4);	if $z4 == 0 goto $r17 = new java.lang.StringBuilder;	$r16 = new java.lang.IllegalArgumentException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON compatible mode doesn\'t allow quotationMode=");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r16
;block_num 4