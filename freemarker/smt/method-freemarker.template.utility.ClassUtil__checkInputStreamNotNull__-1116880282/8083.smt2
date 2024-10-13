(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2472 0)
(declare-sort var3214 0)
(declare-sort var1870 0)
(declare-sort var926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1870-init () var1870)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var926_jQuote/1315253176 (String) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1870 String) void)
(declare-const null-var2472 var2472)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var3787 var2472) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var3787 null-var2472)))
(declare-const var1058 ClassObject) ; Statement: r7 := @parameter1: java.lang.Class 
(assert (not (= var1058 null-ClassObject)))
(declare-const var3432 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3432 null-String)))
 ; Statement: if r0 != null goto return 
(assert (not (not (= var3787 null-var2472)))) ; Negate: Cond: r0 != null  
(define-const var1551 var1870 var1870-init) ; Statement: $r1 = new java.io.IOException 
(define-const var3172 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3172)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3172!1 String)
(assert (= var3172!1 ""))
(assert true)
(define-const var2858 String (append/672562846 var3172!1 "Class-loader resource not found (shown quoted): ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class-loader resource not found (shown quoted): ") 
(declare-const var3172!2 String)
(assert (= var3172!2 (str.++ var3172!1 "Class-loader resource not found (shown quoted): ")))
(define-const var1321 String (var926_jQuote/1315253176 var3432)) ; Statement: $r4 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r3) 
(assert true)
(define-const var2208 String (append/672562846 var2858 var1321)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2858!1 String)
(assert (= var2858!1 (str.++ var2858 var1321)))
(assert true)
(define-const var2892 String (append/672562846 var2208 ". The base class was ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". The base class was ") 
(declare-const var2208!1 String)
(assert (= var2208!1 (str.++ var2208 ". The base class was ")))
(assert true)
(define-const var2672 String (getName/-1958580599 var1058)) ; Statement: $r8 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var713 String (append/672562846 var2892 var2672)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2892!1 String)
(assert (= var2892!1 (str.++ var2892 var2672)))
(assert true)
(define-const var3359 String (append/672562846 var713 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var713!1 String)
(assert (= var713!1 (str.++ var713 ".")))
(assert true)
(define-const var1109 String (toString/-2075883882 var3359)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1551 var1109)) ; Statement: specialinvoke $r1.<java.io.IOException: void <init>(java.lang.String)>($r12) 

(declare-const var1551!1 var1870)
(declare-const var1109!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1870-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var926_jQuote/1315253176=([java.lang.String], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2472=java.io.InputStream, var3787=r0, var1058=r7, var3432=r3, var3214=null_type, var1870=java.io.IOException, var1551=$r1, var3172=$r2, var2858=$r5, var926=freemarker.template.utility.StringUtil, var1321=$r4, var2208=$r6, var2892=$r9, var2672=$r8, var713=$r10, var3359=$r11, var1109=$r12}
; {java.io.InputStream=var2472, r0=var3787, r7=var1058, r3=var3432, null_type=var3214, java.io.IOException=var1870, $r1=var1551, $r2=var3172, $r5=var2858, freemarker.template.utility.StringUtil=var926, $r4=var1321, $r6=var2208, $r9=var2892, $r8=var2672, $r10=var713, $r11=var3359, $r12=var1109}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	r7 := @parameter1: java.lang.Class;	r3 := @parameter2: java.lang.String;	if r0 != null goto return;	$r1 = new java.io.IOException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class-loader resource not found (shown quoted): ");	$r4 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". The base class was ");	$r8 = virtualinvoke r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.io.IOException: void <init>(java.lang.String)>($r12);	throw $r1
;block_num 2