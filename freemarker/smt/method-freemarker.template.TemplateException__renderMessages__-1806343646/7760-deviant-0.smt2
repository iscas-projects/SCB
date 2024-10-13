(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var2759 0)
(declare-sort var2677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/996028399 (var3187) String)
(declare-fun getCause/-638798464 (var2677) var2677)
(declare-fun cast-from-var3187-to-var2677 (var3187) var2677)
(declare-fun messageWithoutStackTop/1424937385 (var3187) String)
(declare-fun getFTLInstructionStackTopFew/-1875609904 (var3187) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun message/1424937385 (var3187) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3187 var3187)
(declare-const null-String String)
(declare-const null-var2677 var2677)
(declare-const var1013 var3187) ; Statement: r0 := @this: freemarker.template.TemplateException 
(assert (not (= var1013 null-var3187)))
(assert true)
(define-const var121 String (getDescription/996028399 var1013)) ; Statement: r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert (= var121 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var3346 var2677 (getCause/-638798464 (cast-from-var3187-to-var2677 var1013))) ; Statement: $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
 ; Statement: if $r2 == null goto r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]" 
(assert (= var3346 null-var2677)) ; Cond: $r2 == null 
(declare-const var1013!1 var3187)
(assert (not (= var1013!1 null-var3187)))
(assert (= (messageWithoutStackTop/1424937385 var1013!1) "[No error description was available.]")) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]" 
(assert true) ; Non Conditional
(assert true)
(define-const var2045 String (getFTLInstructionStackTopFew/-1875609904 var1013!1)) ; Statement: $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>() 
 ; Statement: if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert (not (= var2045 null-String))) ; Negate: Cond: $r29 == null  
(define-const var1761 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1761)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1761!1 String)
(assert (= var1761!1 ""))
(define-const var3065 String (messageWithoutStackTop/1424937385 var1013!1)) ; Statement: $r5 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert true)
(define-const var1325 String (append/672562846 var1761!1 var3065)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1761!2 String)
(assert (= var1761!2 (str.++ var1761!1 var3065)))
(assert true)
(define-const var3318 String (append/672562846 var1325 "\n\n")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n\n") 
(declare-const var1325!1 String)
(assert (= var1325!1 (str.++ var1325 "\n\n")))
(assert true)
(define-const var1157 String (append/672562846 var3318 "----")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("----") 
(declare-const var3318!1 String)
(assert (= var3318!1 (str.++ var3318 "----")))
(assert true)
(define-const var2453 String (append/672562846 var1157 "\n")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1157!1 String)
(assert (= var1157!1 (str.++ var1157 "\n")))
(assert true)
(define-const var1855 String (append/672562846 var2453 "FTL stack trace (\u0022~\u0022 means nesting-related):")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FTL stack trace (\"~\" means nesting-related):") 
(declare-const var2453!1 String)
(assert (= var2453!1 (str.++ var2453 "FTL stack trace (\u0022~\u0022 means nesting-related):")))
(assert true)
(define-const var1275 String (append/672562846 var1855 "\n")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1855!1 String)
(assert (= var1855!1 (str.++ var1855 "\n")))
(assert true)
(define-const var1973 String (append/672562846 var1275 var2045)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var1275!1 String)
(assert (= var1275!1 (str.++ var1275 var2045)))
(assert true)
(define-const var156 String (append/672562846 var1973 "----")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("----") 
(declare-const var1973!1 String)
(assert (= var1973!1 (str.++ var1973 "----")))
(assert true)
(define-const var1217 String (toString/-2075883882 var156)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1013!2 var3187)
(assert (not (= var1013!2 null-var3187)))
(assert (= (message/1424937385 var1013!2) var1217)) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String message> = $r14 
(define-const var1366 String (message/1424937385 var1013!2)) ; Statement: $r16 = r0.<freemarker.template.TemplateException: java.lang.String message> 
(define-const var23 String (messageWithoutStackTop/1424937385 var1013!2)) ; Statement: $r15 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert true)
(define-const var3540 Int (length/-134980193 var23)) ; Statement: $i0 = virtualinvoke $r15.<java.lang.String: int length()>() 
(assert (not (and true (and (>= 0 0) (>= (str.len var1366) var3540) (>= var3540 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/996028399=([freemarker.template.TemplateException], java.lang.String), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var3187-to-var2677=([freemarker.template.TemplateException], java.lang.Throwable), messageWithoutStackTop/1424937385=([freemarker.template.TemplateException], java.lang.String), getFTLInstructionStackTopFew/-1875609904=([freemarker.template.TemplateException], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), message/1424937385=([freemarker.template.TemplateException], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3187=freemarker.template.TemplateException, var1013=r0, var121=r1, var2759=null_type, var2677=java.lang.Throwable, var3346=$r2, var2045=$r29, var1761=$r4, var3065=$r5, var1325=$r6, var3318=$r7, var1157=$r8, var2453=$r9, var1855=$r10, var1275=$r11, var1973=$r12, var156=$r13, var1217=$r14, var1366=$r16, var23=$r15, var3540=$i0, var323=$r17}
; {freemarker.template.TemplateException=var3187, r0=var1013, r1=var121, null_type=var2759, java.lang.Throwable=var2677, $r2=var3346, $r29=var2045, $r4=var1761, $r5=var3065, $r6=var1325, $r7=var3318, $r8=var1157, $r9=var2453, $r10=var1855, $r11=var1275, $r12=var1973, $r13=var156, $r14=var1217, $r16=var1366, $r15=var23, $i0=var3540, $r17=var323}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: freemarker.template.TemplateException;	r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	if $r2 == null goto r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]";	r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]";	$r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>();	if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n\n");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("----");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FTL stack trace (\"~\" means nesting-related):");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("----");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<freemarker.template.TemplateException: java.lang.String message> = $r14;	$r16 = r0.<freemarker.template.TemplateException: java.lang.String message>;	$r15 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$i0 = virtualinvoke $r15.<java.lang.String: int length()>();	$r17 = virtualinvoke $r16.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = $r17;	goto [?= return];	return
;block_num 6