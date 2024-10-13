(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3425 0)
(declare-sort var2360 0)
(declare-sort var3655 0)
(declare-sort var40 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3655_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var40 String) void)
(declare-fun cast-from-var3425-to-var40 (var3425) var40)
(declare-const null-var3425 var3425)
(declare-const null-String String)
(declare-const var2610 var3425) ; Statement: r0 := @this: freemarker.ext.servlet.FreemarkerServlet$InitParamValueException 
(assert (not (= var2610 null-var3425)))
(declare-const var3260 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3260 null-String)))
(declare-const var80 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var80 null-String)))
(declare-const var68 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var68 null-String)))
(define-const var391 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var391)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var391!1 String)
(assert (= var391!1 ""))
(assert true)
(define-const var3709 String (append/672562846 var391!1 "Failed to set the ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to set the ") 
(declare-const var391!2 String)
(assert (= var391!2 (str.++ var391!1 "Failed to set the ")))
(define-const var1013 String (var3655_jQuote/1315253176 var3260)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2) 
(assert true)
(define-const var2273 String (append/672562846 var3709 var1013)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3709!1 String)
(assert (= var3709!1 (str.++ var3709 var1013)))
(assert true)
(define-const var2948 String (append/672562846 var2273 " servlet init-param to ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" servlet init-param to ") 
(declare-const var2273!1 String)
(assert (= var2273!1 (str.++ var2273 " servlet init-param to ")))
(define-const var3174 String (var3655_jQuote/1315253176 var80)) ; Statement: $r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r6) 
(assert true)
(define-const var2664 String (append/672562846 var2948 var3174)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2948!1 String)
(assert (= var2948!1 (str.++ var2948 var3174)))
(assert true)
(define-const var2929 String (append/672562846 var2664 ": ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2664!1 String)
(assert (= var2664!1 (str.++ var2664 ": ")))
(assert true)
(define-const var371 String (append/672562846 var2929 var68)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var2929!1 String)
(assert (= var2929!1 (str.++ var2929 var68)))
(assert true)
(define-const var1706 String (toString/-2075883882 var371)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 (cast-from-var3425-to-var40 var2610) var1706)) ; Statement: specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r13) 

(declare-const var2610!1 var3425)
(declare-const var1706!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3655_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void), cast-from-var3425-to-var40=([freemarker.ext.servlet.FreemarkerServlet$InitParamValueException], java.lang.Exception)}
; {var3425=freemarker.ext.servlet.FreemarkerServlet$InitParamValueException, var2610=r0, var3260=r2, var2360=null_type, var80=r6, var68=r10, var391=$r1, var3709=$r4, var3655=freemarker.template.utility.StringUtil, var1013=$r3, var2273=$r5, var2948=$r8, var3174=$r7, var2664=$r9, var2929=$r11, var371=$r12, var1706=$r13, var40=java.lang.Exception}
; {freemarker.ext.servlet.FreemarkerServlet$InitParamValueException=var3425, r0=var2610, r2=var3260, null_type=var2360, r6=var80, r10=var68, $r1=var391, $r4=var3709, freemarker.template.utility.StringUtil=var3655, $r3=var1013, $r5=var2273, $r8=var2948, $r7=var3174, $r9=var2664, $r11=var2929, $r12=var371, $r13=var1706, java.lang.Exception=var40}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.servlet.FreemarkerServlet$InitParamValueException;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to set the ");	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" servlet init-param to ");	$r7 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.Exception: void <init>(java.lang.String)>($r13);	return
;block_num 1