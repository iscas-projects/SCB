(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var530 0)
(declare-sort var2949 0)
(declare-sort var1393 0)
(declare-sort var925 0)
(declare-sort var1405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var925_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-167142807 (var1405 String var1393) void)
(declare-fun cast-from-var530-to-var1405 (var530) var1405)
(declare-const null-var530 var530)
(declare-const null-String String)
(declare-const null-var1393 var1393)
(declare-const var3327 var530) ; Statement: r0 := @this: freemarker.ext.servlet.FreemarkerServlet$InitParamValueException 
(assert (not (= var3327 null-var530)))
(declare-const var2052 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2052 null-String)))
(declare-const var1796 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1796 null-String)))
(declare-const var1634 var1393) ; Statement: r11 := @parameter2: java.lang.Throwable 
(assert (not (= var1634 null-var1393)))
(define-const var2551 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2551)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2551!1 String)
(assert (= var2551!1 ""))
(assert true)
(define-const var2535 String (append/672562846 var2551!1 "Failed to set the ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to set the ") 
(declare-const var2551!2 String)
(assert (= var2551!2 (str.++ var2551!1 "Failed to set the ")))
(define-const var1443 String (var925_jQuote/1315253176 var2052)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2) 
(assert true)
(define-const var2615 String (append/672562846 var2535 var1443)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2535!1 String)
(assert (= var2535!1 (str.++ var2535 var1443)))
(assert true)
(define-const var3785 String (append/672562846 var2615 " servlet init-param to ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" servlet init-param to ") 
(declare-const var2615!1 String)
(assert (= var2615!1 (str.++ var2615 " servlet init-param to ")))
(define-const var949 String (var925_jQuote/1315253176 var1796)) ; Statement: $r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r6) 
(assert true)
(define-const var651 String (append/672562846 var3785 var949)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3785!1 String)
(assert (= var3785!1 (str.++ var3785 var949)))
(assert true)
(define-const var3487 String (append/672562846 var651 "; see cause exception.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; see cause exception.") 
(declare-const var651!1 String)
(assert (= var651!1 (str.++ var651 "; see cause exception.")))
(assert true)
(define-const var3295 String (toString/-2075883882 var3487)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-167142807 (cast-from-var530-to-var1405 var3327) var3295 var1634)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String,java.lang.Throwable)>($r12, r11) 

(declare-const var3327!1 var530)
(declare-const var3295!1 String)
(declare-const var1634!1 var1393)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var925_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-167142807=([java.lang.Exception, java.lang.String, java.lang.Throwable], void), cast-from-var530-to-var1405=([freemarker.ext.servlet.FreemarkerServlet$InitParamValueException], java.lang.Exception)}
; {var530=freemarker.ext.servlet.FreemarkerServlet$InitParamValueException, var3327=r0, var2052=r2, var2949=null_type, var1796=r6, var1393=java.lang.Throwable, var1634=r11, var2551=$r1, var2535=$r4, var925=freemarker.template.utility.StringUtil, var1443=$r3, var2615=$r5, var3785=$r8, var949=$r7, var651=$r9, var3487=$r10, var3295=$r12, var1405=java.lang.Exception}
; {freemarker.ext.servlet.FreemarkerServlet$InitParamValueException=var530, r0=var3327, r2=var2052, null_type=var2949, r6=var1796, java.lang.Throwable=var1393, r11=var1634, $r1=var2551, $r4=var2535, freemarker.template.utility.StringUtil=var925, $r3=var1443, $r5=var2615, $r8=var3785, $r7=var949, $r9=var651, $r10=var3487, $r12=var3295, java.lang.Exception=var1405}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.servlet.FreemarkerServlet$InitParamValueException;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r11 := @parameter2: java.lang.Throwable;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to set the ");	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" servlet init-param to ");	$r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; see cause exception.");	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String,java.lang.Throwable)>($r12, r11);	return
;block_num 1