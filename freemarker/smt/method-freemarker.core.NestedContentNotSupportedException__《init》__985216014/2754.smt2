(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3513 0)
(declare-sort var3784 0)
(declare-sort var2089 0)
(declare-sort var33 0)
(declare-sort var761 0)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var761_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-330439642 (var2616 String var2089 var33) void)
(declare-fun cast-from-var3513-to-var2616 (var3513) var2616)
(declare-const null-var3513 var3513)
(declare-const null-String String)
(declare-const null-var2089 var2089)
(declare-const null-var33 var33)
(declare-const var1906 var3513) ; Statement: r0 := @this: freemarker.core.NestedContentNotSupportedException 
(assert (not (= var1906 null-var3513)))
(declare-const var383 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var383 null-String)))
(declare-const var1784 var2089) ; Statement: r5 := @parameter1: java.lang.Exception 
(assert (not (= var1784 null-var2089)))
(declare-const var3516 var33) ; Statement: r6 := @parameter2: freemarker.core.Environment 
(assert (not (= var3516 null-var33)))
(define-const var1306 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1306)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1306!1 String)
(assert (= var1306!1 ""))
(assert true)
(define-const var3624 String (append/672562846 var1306!1 "Nested content (body) not supported.")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Nested content (body) not supported.") 
(declare-const var1306!2 String)
(assert (= var1306!2 (str.++ var1306!1 "Nested content (body) not supported.")))
 ; Statement: if r2 == null goto $r12 = "" 
(assert (not (= var383 null-String))) ; Negate: Cond: r2 == null  
(define-const var1350 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1350)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1350!1 String)
(assert (= var1350!1 ""))
(assert true)
(define-const var3113 String (append/672562846 var1350!1 " ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1350!2 String)
(assert (= var1350!2 (str.++ var1350!1 " ")))
(define-const var1800 String (var761_jQuote/1315253176 var383)) ; Statement: $r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2) 
(assert true)
(define-const var992 String (append/672562846 var3113 var1800)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3113!1 String)
(assert (= var3113!1 (str.++ var3113 var1800)))
(assert true)
(define-const var3223 String (toString/-2075883882 var992)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var646 String (append/672562846 var3624 var3223)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3624!1 String)
(assert (= var3624!1 (str.++ var3624 var3223)))
(assert true)
(define-const var797 String (toString/-2075883882 var646)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-330439642 (cast-from-var3513-to-var2616 var1906) var797 var1784 var3516)) ; Statement: specialinvoke r0.<freemarker.template.TemplateException: void <init>(java.lang.String,java.lang.Exception,freemarker.core.Environment)>($r7, r5, r6) 

(declare-const var1906!1 var3513)
(declare-const var797!1 String)
(declare-const var1784!1 var2089)
(declare-const var3516!1 var33)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var761_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-330439642=([freemarker.template.TemplateException, java.lang.String, java.lang.Exception, freemarker.core.Environment], void), cast-from-var3513-to-var2616=([freemarker.core.NestedContentNotSupportedException], freemarker.template.TemplateException)}
; {var3513=freemarker.core.NestedContentNotSupportedException, var1906=r0, var383=r2, var3784=null_type, var2089=java.lang.Exception, var1784=r5, var33=freemarker.core.Environment, var3516=r6, var1306=$r1, var3624=$r3, var1350=$r8, var3113=$r10, var761=freemarker.template.utility.StringUtil, var1800=$r9, var992=$r11, var3223=$r12, var646=$r4, var797=$r7, var2616=freemarker.template.TemplateException}
; {freemarker.core.NestedContentNotSupportedException=var3513, r0=var1906, r2=var383, null_type=var3784, java.lang.Exception=var2089, r5=var1784, freemarker.core.Environment=var33, r6=var3516, $r1=var1306, $r3=var3624, $r8=var1350, $r10=var3113, freemarker.template.utility.StringUtil=var761, $r9=var1800, $r11=var992, $r12=var3223, $r4=var646, $r7=var797, freemarker.template.TemplateException=var2616}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: freemarker.core.NestedContentNotSupportedException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Exception;	r6 := @parameter2: freemarker.core.Environment;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Nested content (body) not supported.");	if r2 == null goto $r12 = "";	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<freemarker.template.TemplateException: void <init>(java.lang.String,java.lang.Exception,freemarker.core.Environment)>($r7, r5, r6);	return
;block_num 3