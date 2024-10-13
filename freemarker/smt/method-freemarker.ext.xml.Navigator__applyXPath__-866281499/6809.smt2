(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2820 0)
(declare-sort var1997 0)
(declare-sort var2972 0)
(declare-sort var3334 0)
(declare-sort var3747 0)
(declare-sort var1975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1975-init () var1975)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-800092479 (var1975 String var3747) void)
(declare-const null-var2820 var2820)
(declare-const null-var1997 var1997)
(declare-const null-String String)
(declare-const null-var3334 var3334)
(declare-const null-var3747 var3747)
(declare-const var341 var2820) ; Statement: r0 := @this: freemarker.ext.xml.Navigator 
(assert (not (= var341 null-var2820)))
(declare-const var1900 var1997) ; Statement: r5 := @parameter0: java.util.List 
(assert (not (= var1900 null-var1997)))
(declare-const var3205 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3205 null-String)))
(declare-const var749 var3334) ; Statement: r6 := @parameter2: java.lang.Object 
(assert (not (= var749 null-var3334)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3528 var3747) ; Statement: $r10 := @caughtexception 
(assert (not (= var3528 null-var3747)))
(define-const var2080 var1975 var1975-init) ; Statement: $r11 = new freemarker.template.TemplateModelException 
(define-const var2510 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2510)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2510!1 String)
(assert (= var2510!1 ""))
(assert true)
(define-const var1299 String (append/672562846 var2510!1 "Could not evaulate XPath expression ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not evaulate XPath expression ") 
(declare-const var2510!2 String)
(assert (= var2510!2 (str.++ var2510!1 "Could not evaulate XPath expression ")))
(assert true)
(define-const var2827 String (append/672562846 var1299 var3205)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1299!1 String)
(assert (= var1299!1 (str.++ var1299 var3205)))
(assert true)
(define-const var2082 String (toString/-2075883882 var2827)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-800092479 var2080 var2082 var3528)) ; Statement: specialinvoke $r11.<freemarker.template.TemplateModelException: void <init>(java.lang.String,java.lang.Exception)>($r15, $r10) 

(declare-const var2080!1 var1975)
(declare-const var2082!1 String)
(declare-const var3528!1 var3747)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1975-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-800092479=([freemarker.template.TemplateModelException, java.lang.String, java.lang.Exception], void)}
; {var2820=freemarker.ext.xml.Navigator, var341=r0, var1997=java.util.List, var1900=r5, var3205=r2, var2972=null_type, var3334=java.lang.Object, var749=r6, var3747=java.lang.Exception, var3528=$r10, var1975=freemarker.template.TemplateModelException, var2080=$r11, var2510=$r12, var1299=$r13, var2827=$r14, var2082=$r15}
; {freemarker.ext.xml.Navigator=var2820, r0=var341, java.util.List=var1997, r5=var1900, r2=var3205, null_type=var2972, java.lang.Object=var3334, r6=var749, java.lang.Exception=var3747, $r10=var3528, freemarker.template.TemplateModelException=var1975, $r11=var2080, $r12=var2510, $r13=var1299, $r14=var2827, $r15=var2082}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.xml.Navigator;	r5 := @parameter0: java.util.List;	r2 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.Object;	$r10 := @caughtexception;	$r11 = new freemarker.template.TemplateModelException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not evaulate XPath expression ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<freemarker.template.TemplateModelException: void <init>(java.lang.String,java.lang.Exception)>($r15, $r10);	throw $r11
;block_num 2