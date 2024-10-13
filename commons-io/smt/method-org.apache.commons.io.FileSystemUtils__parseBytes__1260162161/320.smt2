(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var13 0)
(declare-sort var1804 0)
(declare-sort var2141 0)
(declare-sort var984 0)
(declare-sort var3004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var984-init () var984)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-252871109 (var984 String var3004) void)
(declare-fun cast-from-var2141-to-var3004 (var2141) var3004)
(declare-const null-var13 var13)
(declare-const null-String String)
(declare-const null-var2141 var2141)
(declare-const var13-DF String)
(declare-const var1017 var13) ; Statement: r21 := @this: org.apache.commons.io.FileSystemUtils 
(assert (not (= var1017 null-var13)))
(declare-const var2361 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2361 null-String)))
(declare-const var1887 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1887 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3143 var2141) ; Statement: $r11 := @caughtexception 
(assert (not (= var3143 null-var2141)))
(define-const var528 var984 var984-init) ; Statement: $r25 = new java.io.IOException 
(define-const var3967 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3967)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3967!1 String)
(assert (= var3967!1 ""))
(assert true)
(define-const var1747 String (append/672562846 var3967!1 "Command line \u0027")) ; Statement: $r15 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command line \'") 
(declare-const var3967!2 String)
(assert (= var3967!2 (str.++ var3967!1 "Command line \u0027")))
(define-const var3754 String var13-DF) ; Statement: $r14 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF> 
(assert true)
(define-const var691 String (append/672562846 var1747 var3754)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1747!1 String)
(assert (= var1747!1 (str.++ var1747 var3754)))
(assert true)
(define-const var2555 String (append/672562846 var691 "\u0027 did not return numeric data as expected for path \u0027")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' did not return numeric data as expected for path \'") 
(declare-const var691!1 String)
(assert (= var691!1 (str.++ var691 "\u0027 did not return numeric data as expected for path \u0027")))
(assert true)
(define-const var939 String (append/672562846 var2555 var1887)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2555!1 String)
(assert (= var2555!1 (str.++ var2555 var1887)))
(assert true)
(define-const var2882 String (append/672562846 var939 "\u0027- check path is valid")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'- check path is valid") 
(declare-const var939!1 String)
(assert (= var939!1 (str.++ var939 "\u0027- check path is valid")))
(assert true)
(define-const var2016 String (toString/-2075883882 var2882)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-252871109 var528 var2016 (cast-from-var2141-to-var3004 var3143))) ; Statement: specialinvoke $r25.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r11) 

(declare-const var528!1 var984)
(declare-const var2016!1 String)
(declare-const var3143!1 var2141)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {var984-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-252871109=([java.io.IOException, java.lang.String, java.lang.Throwable], void), cast-from-var2141-to-var3004=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var13=org.apache.commons.io.FileSystemUtils, var1017=r21, var2361=r0, var1804=null_type, var1887=r6, var2141=java.lang.NumberFormatException, var3143=$r11, var984=java.io.IOException, var528=$r25, var3967=$r24, var1747=$r15, var3754=$r14, var691=$r16, var2555=$r17, var939=$r18, var2882=$r19, var2016=$r20, var3004=java.lang.Throwable}
; {org.apache.commons.io.FileSystemUtils=var13, r21=var1017, r0=var2361, null_type=var1804, r6=var1887, java.lang.NumberFormatException=var2141, $r11=var3143, java.io.IOException=var984, $r25=var528, $r24=var3967, $r15=var1747, $r14=var3754, $r16=var691, $r17=var2555, $r18=var939, $r19=var2882, $r20=var2016, java.lang.Throwable=var3004}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r21 := @this: org.apache.commons.io.FileSystemUtils;	r0 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$r11 := @caughtexception;	$r25 = new java.io.IOException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Command line \'");	$r14 = <org.apache.commons.io.FileSystemUtils: java.lang.String DF>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' did not return numeric data as expected for path \'");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'- check path is valid");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r11);	throw $r25
;block_num 2