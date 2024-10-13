(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var671 0)
(declare-sort var2460 0)
(declare-sort var3812 0)
(declare-sort var240 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3812_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var240 String) void)
(declare-fun cast-from-var671-to-var240 (var671) var240)
(declare-fun templateName/131424891 (var671) String)
(declare-fun malformednessDescription/131424891 (var671) String)
(declare-const null-var671 var671)
(declare-const null-String String)
(declare-const var3501 var671) ; Statement: r0 := @this: freemarker.template.MalformedTemplateNameException 
(assert (not (= var3501 null-var671)))
(declare-const var1963 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1963 null-String)))
(declare-const var3617 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3617 null-String)))
(define-const var3695 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3695)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3695!1 String)
(assert (= var3695!1 ""))
(assert true)
(define-const var569 String (append/672562846 var3695!1 "Malformed template name, ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Malformed template name, ") 
(declare-const var3695!2 String)
(assert (= var3695!2 (str.++ var3695!1 "Malformed template name, ")))
(define-const var231 String (var3812_jQuote/1315253176 var1963)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2) 
(assert true)
(define-const var698 String (append/672562846 var569 var231)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var569!1 String)
(assert (= var569!1 (str.++ var569 var231)))
(assert true)
(define-const var494 String (append/672562846 var698 ": ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var698!1 String)
(assert (= var698!1 (str.++ var698 ": ")))
(assert true)
(define-const var1803 String (append/672562846 var494 var3617)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var494!1 String)
(assert (= var494!1 (str.++ var494 var3617)))
(assert true)
(define-const var1377 String (toString/-2075883882 var1803)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 (cast-from-var671-to-var240 var3501) var1377)) ; Statement: specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r9) 

(declare-const var3501!1 var671)
(declare-const var1377!1 String)
(declare-const var3501!2 var671)
(assert (not (= var3501!2 null-var671)))
(assert (= (templateName/131424891 var3501!2) var1963)) ; Statement: r0.<freemarker.template.MalformedTemplateNameException: java.lang.String templateName> = r2 
(declare-const var3501!3 var671)
(assert (not (= var3501!3 null-var671)))
(assert (= (malformednessDescription/131424891 var3501!3) var3617)) ; Statement: r0.<freemarker.template.MalformedTemplateNameException: java.lang.String malformednessDescription> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3812_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void), cast-from-var671-to-var240=([freemarker.template.MalformedTemplateNameException], java.io.IOException), templateName/131424891=([freemarker.template.MalformedTemplateNameException], java.lang.String), malformednessDescription/131424891=([freemarker.template.MalformedTemplateNameException], java.lang.String)}
; {var671=freemarker.template.MalformedTemplateNameException, var3501=r0, var1963=r2, var2460=null_type, var3617=r6, var3695=$r1, var569=$r4, var3812=freemarker.template.utility.StringUtil, var231=$r3, var698=$r5, var494=$r7, var1803=$r8, var1377=$r9, var240=java.io.IOException}
; {freemarker.template.MalformedTemplateNameException=var671, r0=var3501, r2=var1963, null_type=var2460, r6=var3617, $r1=var3695, $r4=var569, freemarker.template.utility.StringUtil=var3812, $r3=var231, $r5=var698, $r7=var494, $r8=var1803, $r9=var1377, java.io.IOException=var240}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.MalformedTemplateNameException;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Malformed template name, ");	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.io.IOException: void <init>(java.lang.String)>($r9);	r0.<freemarker.template.MalformedTemplateNameException: java.lang.String templateName> = r2;	r0.<freemarker.template.MalformedTemplateNameException: java.lang.String malformednessDescription> = r6;	return
;block_num 1