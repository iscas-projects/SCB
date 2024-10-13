(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1959 0)
(declare-sort var3604 0)
(declare-sort var1263 0)
(declare-sort var309 0)
(declare-sort var639 0)
(declare-sort var2839 0)
(declare-sort var1286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun javaNumberFormat/-268239677 (var1959) var1263)
(declare-fun var639-init () var639)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2839) String)
(declare-fun cast-from-var3604-to-var2839 (var3604) var2839)
(declare-fun getMessage/849299655 (var1286) String)
(declare-fun cast-from-var309-to-var1286 (var309) var1286)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1989123901 (var639 String var1286) void)
(declare-const null-var1959 var1959)
(declare-const null-var3604 var3604)
(declare-const null-var309 var309)
(declare-const var2004 var1959) ; Statement: r0 := @this: freemarker.core.JavaTemplateNumberFormat 
(assert (not (= var2004 null-var1959)))
(declare-const var1291 var3604) ; Statement: r1 := @parameter0: java.lang.Number 
(assert (not (= var1291 null-var3604)))
(define-const var732 var1263 (javaNumberFormat/-268239677 var2004)) ; Statement: $r2 = r0.<freemarker.core.JavaTemplateNumberFormat: java.text.NumberFormat javaNumberFormat> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2863 var309) ; Statement: $r4 := @caughtexception 
(assert (not (= var2863 null-var309)))
(define-const var2540 var639 var639-init) ; Statement: $r5 = new freemarker.core.UnformattableValueException 
(define-const var2865 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2865)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2865!1 String)
(assert (= var2865!1 ""))
(assert true)
(define-const var1154 String (append/672562846 var2865!1 "This format can\u0027t format the ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("This format can\'t format the ") 
(declare-const var2865!2 String)
(assert (= var2865!2 (str.++ var2865!1 "This format can\u0027t format the ")))
(assert true)
(define-const var3476 String (append/-1031950772 var1154 (cast-from-var3604-to-var2839 var1291))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1154!1 String)
(assert (str.prefixof var1154 var1154!1))
(assert true)
(define-const var41 String (append/672562846 var3476 " number. Reason: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" number. Reason: ") 
(declare-const var3476!1 String)
(assert (= var3476!1 (str.++ var3476 " number. Reason: ")))
(assert true)
(define-const var2803 String (getMessage/849299655 (cast-from-var309-to-var1286 var2863))) ; Statement: $r9 = virtualinvoke $r4.<java.lang.ArithmeticException: java.lang.String getMessage()>() 
(assert true)
(define-const var2547 String (append/672562846 var41 var2803)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var41!1 String)
(assert (= var41!1 (str.++ var41 var2803)))
(assert true)
(define-const var768 String (toString/-2075883882 var2547)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1989123901 var2540 var768 (cast-from-var309-to-var1286 var2863))) ; Statement: specialinvoke $r5.<freemarker.core.UnformattableValueException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r4) 

(declare-const var2540!1 var639)
(declare-const var768!1 String)
(declare-const var2863!1 var309)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {javaNumberFormat/-268239677=([freemarker.core.JavaTemplateNumberFormat], java.text.NumberFormat), var639-init=([], freemarker.core.UnformattableValueException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3604-to-var2839=([java.lang.Number], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var309-to-var1286=([java.lang.ArithmeticException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1989123901=([freemarker.core.UnformattableValueException, java.lang.String, java.lang.Throwable], void)}
; {var1959=freemarker.core.JavaTemplateNumberFormat, var2004=r0, var3604=java.lang.Number, var1291=r1, var1263=java.text.NumberFormat, var732=$r2, var309=java.lang.ArithmeticException, var2863=$r4, var639=freemarker.core.UnformattableValueException, var2540=$r5, var2865=$r6, var1154=$r7, var2839=java.lang.Object, var3476=$r8, var41=$r10, var1286=java.lang.Throwable, var2803=$r9, var2547=$r11, var768=$r12}
; {freemarker.core.JavaTemplateNumberFormat=var1959, r0=var2004, java.lang.Number=var3604, r1=var1291, java.text.NumberFormat=var1263, $r2=var732, java.lang.ArithmeticException=var309, $r4=var2863, freemarker.core.UnformattableValueException=var639, $r5=var2540, $r6=var2865, $r7=var1154, java.lang.Object=var2839, $r8=var3476, $r10=var41, java.lang.Throwable=var1286, $r9=var2803, $r11=var2547, $r12=var768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.JavaTemplateNumberFormat;	r1 := @parameter0: java.lang.Number;	$r2 = r0.<freemarker.core.JavaTemplateNumberFormat: java.text.NumberFormat javaNumberFormat>;	$r4 := @caughtexception;	$r5 = new freemarker.core.UnformattableValueException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("This format can\'t format the ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" number. Reason: ");	$r9 = virtualinvoke $r4.<java.lang.ArithmeticException: java.lang.String getMessage()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<freemarker.core.UnformattableValueException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r4);	throw $r5
;block_num 2