(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3422 0)
(declare-sort var2688 0)
(declare-sort var3640 0)
(declare-sort var1924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3640_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var1924 String) void)
(declare-fun cast-from-var3422-to-var1924 (var3422) var1924)
(declare-const null-var3422 var3422)
(declare-const null-String String)
(declare-const var3710 var3422) ; Statement: r0 := @this: freemarker.ext.servlet.FreemarkerServlet$ConflictingInitParamsException 
(assert (not (= var3710 null-var3422)))
(declare-const var3718 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3718 null-String)))
(declare-const var1402 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1402 null-String)))
(define-const var775 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var775)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var775!1 String)
(assert (= var775!1 ""))
(assert true)
(define-const var3140 String (append/672562846 var775!1 "Conflicting servlet init-params: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Conflicting servlet init-params: ") 
(declare-const var775!2 String)
(assert (= var775!2 (str.++ var775!1 "Conflicting servlet init-params: ")))
(define-const var3526 String (var3640_jQuote/1315253176 var3718)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2) 
(assert true)
(define-const var3696 String (append/672562846 var3140 var3526)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3140!1 String)
(assert (= var3140!1 (str.++ var3140 var3526)))
(assert true)
(define-const var1012 String (append/672562846 var3696 " and ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var3696!1 String)
(assert (= var3696!1 (str.++ var3696 " and ")))
(define-const var1853 String (var3640_jQuote/1315253176 var1402)) ; Statement: $r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r6) 
(assert true)
(define-const var3345 String (append/672562846 var1012 var1853)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1012!1 String)
(assert (= var1012!1 (str.++ var1012 var1853)))
(assert true)
(define-const var20 String (append/672562846 var3345 ". Only use ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Only use ") 
(declare-const var3345!1 String)
(assert (= var3345!1 (str.++ var3345 ". Only use ")))
(define-const var2133 String (var3640_jQuote/1315253176 var3718)) ; Statement: $r10 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2) 
(assert true)
(define-const var379 String (append/672562846 var20 var2133)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var20!1 String)
(assert (= var20!1 (str.++ var20 var2133)))
(assert true)
(define-const var1543 String (append/672562846 var379 ".")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var379!1 String)
(assert (= var379!1 (str.++ var379 ".")))
(assert true)
(define-const var2033 String (toString/-2075883882 var1543)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var3422-to-var1924 var3710) var2033)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r14) 

(declare-const var3710!1 var3422)
(declare-const var2033!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3640_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var3422-to-var1924=([freemarker.ext.servlet.FreemarkerServlet$ConflictingInitParamsException], java.lang.Exception)}
; {var3422=freemarker.ext.servlet.FreemarkerServlet$ConflictingInitParamsException, var3710=r0, var3718=r2, var2688=null_type, var1402=r6, var775=$r1, var3140=$r4, var3640=freemarker.template.utility.StringUtil, var3526=$r3, var3696=$r5, var1012=$r8, var1853=$r7, var3345=$r9, var20=$r11, var2133=$r10, var379=$r12, var1543=$r13, var2033=$r14, var1924=java.lang.Exception}
; {freemarker.ext.servlet.FreemarkerServlet$ConflictingInitParamsException=var3422, r0=var3710, r2=var3718, null_type=var2688, r6=var1402, $r1=var775, $r4=var3140, freemarker.template.utility.StringUtil=var3640, $r3=var3526, $r5=var3696, $r8=var1012, $r7=var1853, $r9=var3345, $r11=var20, $r10=var2133, $r12=var379, $r13=var1543, $r14=var2033, java.lang.Exception=var1924}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.servlet.FreemarkerServlet$ConflictingInitParamsException;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Conflicting servlet init-params: ");	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Only use ");	$r10 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r14);	return
;block_num 1