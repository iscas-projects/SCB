(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3644 0)
(declare-sort var1541 0)
(declare-sort var2507 0)
(declare-sort var723 0)
(declare-sort var1103 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var723-init () var723)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1103) String)
(declare-fun cast-from-var2507-to-var1103 (var2507) var1103)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var723 String var1103) void)
(declare-const null-var3644 var3644)
(declare-const null-String String)
(declare-const null-var2507 var2507)
(declare-const var2703 var3644) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var2703 null-var3644)))
(declare-const var3716 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3716 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2709 var2507) ; Statement: $r5 := @caughtexception 
(assert (not (= var2709 null-var2507)))
(define-const var1249 var723 var723-init) ; Statement: $r23 = new java.lang.IllegalStateException 
(define-const var2503 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2503)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2503!1 String)
(assert (= var2503!1 ""))
(assert true)
(define-const var3224 String (append/672562846 var2503!1 "c14n error: ")) ; Statement: $r9 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("c14n error: ") 
(declare-const var2503!2 String)
(assert (= var2503!2 (str.++ var2503!1 "c14n error: ")))
(assert true)
(define-const var683 String (getMessage/849299655 (cast-from-var2507-to-var1103 var2709))) ; Statement: $r8 = virtualinvoke $r5.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var3110 String (append/672562846 var3224 var683)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3224!1 String)
(assert (= var3224!1 (str.++ var3224 var683)))
(assert true)
(define-const var530 String (toString/-2075883882 var3110)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var1249 var530 (cast-from-var2507-to-var1103 var2709))) ; Statement: specialinvoke $r23.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var1249!1 var723)
(declare-const var530!1 String)
(declare-const var2709!1 var2507)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var723-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2507-to-var1103=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void)}
; {var3644=java.util.List, var2703=r1, var3716=r3, var1541=null_type, var2507=java.lang.Exception, var2709=$r5, var723=java.lang.IllegalStateException, var1249=$r23, var2503=$r22, var3224=$r9, var1103=java.lang.Throwable, var683=$r8, var3110=$r10, var530=$r11}
; {java.util.List=var3644, r1=var2703, r3=var3716, null_type=var1541, java.lang.Exception=var2507, $r5=var2709, java.lang.IllegalStateException=var723, $r23=var1249, $r22=var2503, $r9=var3224, java.lang.Throwable=var1103, $r8=var683, $r10=var3110, $r11=var530}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.List;	r3 := @parameter1: java.lang.String;	$r5 := @caughtexception;	$r23 = new java.lang.IllegalStateException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("c14n error: ");	$r8 = virtualinvoke $r5.<java.lang.Exception: java.lang.String getMessage()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r23
;block_num 2