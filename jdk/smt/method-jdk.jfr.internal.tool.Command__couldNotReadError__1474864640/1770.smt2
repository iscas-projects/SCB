(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var767 0)
(declare-sort var2265 0)
(declare-sort var1515 0)
(declare-sort var1593 0)
(declare-sort var862 0)
(declare-sort var170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1593-init () var1593)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2265_toAbsolutePath/1541310346 (var2265) var2265)
(declare-fun append/-1031950772 (String var862) String)
(declare-fun cast-from-var2265-to-var862 (var2265) var862)
(declare-fun getMessage/849299655 (var170) String)
(declare-fun cast-from-var1515-to-var170 (var1515) var170)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/184329998 (var1593 String) void)
(declare-const null-var767 var767)
(declare-const null-var2265 var2265)
(declare-const null-var1515 var1515)
(declare-const var3202 var767) ; Statement: r11 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var3202 null-var767)))
(declare-const var2241 var2265) ; Statement: r2 := @parameter0: java.nio.file.Path 
(assert (not (= var2241 null-var2265)))
(declare-const var1991 var1515) ; Statement: r6 := @parameter1: java.io.IOException 
(assert (not (= var1991 null-var1515)))
(define-const var3454 var1593 var1593-init) ; Statement: $r0 = new jdk.jfr.internal.tool.UserDataException 
(define-const var1142 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1142)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1142!1 String)
(assert (= var1142!1 ""))
(assert true)
(define-const var3728 String (append/672562846 var1142!1 "could not read recording at ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not read recording at ") 
(declare-const var1142!2 String)
(assert (= var1142!2 (str.++ var1142!1 "could not read recording at ")))
(define-const var2088 var2265 (var2265_toAbsolutePath/1541310346 var2241)) ; Statement: $r3 = interfaceinvoke r2.<java.nio.file.Path: java.nio.file.Path toAbsolutePath()>() 
(assert true)
(define-const var2604 String (append/-1031950772 var3728 (cast-from-var2265-to-var862 var2088))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3728!1 String)
(assert (str.prefixof var3728 var3728!1))
(assert true)
(define-const var1113 String (append/672562846 var2604 ". ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ") 
(declare-const var2604!1 String)
(assert (= var2604!1 (str.++ var2604 ". ")))
(assert true)
(define-const var1499 String (getMessage/849299655 (cast-from-var1515-to-var170 var1991))) ; Statement: $r7 = virtualinvoke r6.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var696 String (append/672562846 var1113 var1499)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1113!1 String)
(assert (= var1113!1 (str.++ var1113 var1499)))
(assert true)
(define-const var3426 String (toString/-2075883882 var696)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var3454 var3426)) ; Statement: specialinvoke $r0.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r10) 

(declare-const var3454!1 var1593)
(declare-const var3426!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1593-init=([], jdk.jfr.internal.tool.UserDataException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2265_toAbsolutePath/1541310346=([java.nio.file.Path], java.nio.file.Path), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2265-to-var862=([java.nio.file.Path], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1515-to-var170=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var767=jdk.jfr.internal.tool.Command, var3202=r11, var2265=java.nio.file.Path, var2241=r2, var1515=java.io.IOException, var1991=r6, var1593=jdk.jfr.internal.tool.UserDataException, var3454=$r0, var1142=$r1, var3728=$r4, var2088=$r3, var862=java.lang.Object, var2604=$r5, var1113=$r8, var170=java.lang.Throwable, var1499=$r7, var696=$r9, var3426=$r10}
; {jdk.jfr.internal.tool.Command=var767, r11=var3202, java.nio.file.Path=var2265, r2=var2241, java.io.IOException=var1515, r6=var1991, jdk.jfr.internal.tool.UserDataException=var1593, $r0=var3454, $r1=var1142, $r4=var3728, $r3=var2088, java.lang.Object=var862, $r5=var2604, $r8=var1113, java.lang.Throwable=var170, $r7=var1499, $r9=var696, $r10=var3426}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: jdk.jfr.internal.tool.Command;	r2 := @parameter0: java.nio.file.Path;	r6 := @parameter1: java.io.IOException;	$r0 = new jdk.jfr.internal.tool.UserDataException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not read recording at ");	$r3 = interfaceinvoke r2.<java.nio.file.Path: java.nio.file.Path toAbsolutePath()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ");	$r7 = virtualinvoke r6.<java.io.IOException: java.lang.String getMessage()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r10);	throw $r0
;block_num 1