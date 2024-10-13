(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3029 0)
(declare-sort var3374 0)
(declare-sort var3829 0)
(declare-sort var3504 0)
(declare-sort var2600 0)
(declare-sort var2012 0)
(declare-sort var2309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3829-init () var3829)
(declare-fun var2600-init () var2600)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2012) String)
(declare-fun cast-from-var3374-to-var2012 (var3374) var2012)
(declare-fun getMessage/849299655 (var2309) String)
(declare-fun cast-from-var3504-to-var2309 (var3504) var2309)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/184329998 (var2600 String) void)
(declare-const null-var3029 var3029)
(declare-const null-var3374 var3374)
(declare-const null-var3504 var3504)
(declare-const var3895 var3029) ; Statement: r29 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var3895 null-var3029)))
(declare-const var2280 var3374) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var2280 null-var3374)))
(define-const var1295 var3829 var3829-init) ; Statement: $r0 = new java.io.RandomAccessFile 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var472 var3504) ; Statement: $r9 := @caughtexception 
(assert (not (= var472 null-var3504)))
(define-const var1100 var2600 var2600-init) ; Statement: $r10 = new jdk.jfr.internal.tool.UserDataException 
(define-const var296 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var296)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var296!1 String)
(assert (= var296!1 ""))
(assert true)
(define-const var1046 String (append/672562846 var296!1 "i/o error reading file \u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("i/o error reading file \'") 
(declare-const var296!2 String)
(assert (= var296!2 (str.++ var296!1 "i/o error reading file \u0027")))
(assert true)
(define-const var2581 String (append/-1031950772 var1046 (cast-from-var3374-to-var2012 var2280))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1046!1 String)
(assert (str.prefixof var1046 var1046!1))
(assert true)
(define-const var988 String (append/672562846 var2581 "\u0027, ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', ") 
(declare-const var2581!1 String)
(assert (= var2581!1 (str.++ var2581 "\u0027, ")))
(assert true)
(define-const var3473 String (getMessage/849299655 (cast-from-var3504-to-var2309 var472))) ; Statement: $r14 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var1424 String (append/672562846 var988 var3473)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var988!1 String)
(assert (= var988!1 (str.++ var988 var3473)))
(assert true)
(define-const var3890 String (toString/-2075883882 var1424)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var1100 var3890)) ; Statement: specialinvoke $r10.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r17) 

(declare-const var1100!1 var2600)
(declare-const var3890!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3829-init=([], java.io.RandomAccessFile), var2600-init=([], jdk.jfr.internal.tool.UserDataException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3374-to-var2012=([java.nio.file.Path], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3504-to-var2309=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var3029=jdk.jfr.internal.tool.Command, var3895=r29, var3374=java.nio.file.Path, var2280=r1, var3829=java.io.RandomAccessFile, var1295=$r0, var3504=java.io.IOException, var472=$r9, var2600=jdk.jfr.internal.tool.UserDataException, var1100=$r10, var296=$r11, var1046=$r12, var2012=java.lang.Object, var2581=$r13, var988=$r15, var2309=java.lang.Throwable, var3473=$r14, var1424=$r16, var3890=$r17}
; {jdk.jfr.internal.tool.Command=var3029, r29=var3895, java.nio.file.Path=var3374, r1=var2280, java.io.RandomAccessFile=var3829, $r0=var1295, java.io.IOException=var3504, $r9=var472, jdk.jfr.internal.tool.UserDataException=var2600, $r10=var1100, $r11=var296, $r12=var1046, java.lang.Object=var2012, $r13=var2581, $r15=var988, java.lang.Throwable=var2309, $r14=var3473, $r16=var1424, $r17=var3890}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r29 := @this: jdk.jfr.internal.tool.Command;	r1 := @parameter0: java.nio.file.Path;	$r0 = new java.io.RandomAccessFile;	$r9 := @caughtexception;	$r10 = new jdk.jfr.internal.tool.UserDataException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("i/o error reading file \'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', ");	$r14 = virtualinvoke $r9.<java.io.IOException: java.lang.String getMessage()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r17);	throw $r10
;block_num 2