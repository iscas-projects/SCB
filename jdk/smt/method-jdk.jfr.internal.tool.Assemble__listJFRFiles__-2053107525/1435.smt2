(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var75 0)
(declare-sort var313 0)
(declare-sort var998 0)
(declare-sort var889 0)
(declare-sort var802 0)
(declare-sort var571 0)
(declare-sort var349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var998-init () var998)
(declare-fun var802-init () var802)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var571) String)
(declare-fun cast-from-var313-to-var571 (var313) var571)
(declare-fun getMessage/849299655 (var349) String)
(declare-fun cast-from-var889-to-var349 (var889) var349)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/184329998 (var802 String) void)
(declare-const null-var75 var75)
(declare-const null-var313 var313)
(declare-const null-var889 var889)
(declare-const var336 var75) ; Statement: r20 := @this: jdk.jfr.internal.tool.Assemble 
(assert (not (= var336 null-var75)))
(declare-const var3907 var313) ; Statement: r1 := @parameter0: java.nio.file.Path 
(assert (not (= var3907 null-var313)))
(define-const var2880 var998 var998-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2912 var889) ; Statement: $r7 := @caughtexception 
(assert (not (= var2912 null-var889)))
(define-const var76 var802 var802-init) ; Statement: $r8 = new jdk.jfr.internal.tool.UserDataException 
(define-const var3620 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3620)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3620!1 String)
(assert (= var3620!1 ""))
(assert true)
(define-const var1831 String (append/672562846 var3620!1 "could not list *.jfr for directory ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not list *.jfr for directory ") 
(declare-const var3620!2 String)
(assert (= var3620!2 (str.++ var3620!1 "could not list *.jfr for directory ")))
(assert true)
(define-const var1010 String (append/-1031950772 var1831 (cast-from-var313-to-var571 var3907))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1831!1 String)
(assert (str.prefixof var1831 var1831!1))
(assert true)
(define-const var3029 String (append/672562846 var1010 ". ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ") 
(declare-const var1010!1 String)
(assert (= var1010!1 (str.++ var1010 ". ")))
(assert true)
(define-const var1896 String (getMessage/849299655 (cast-from-var889-to-var349 var2912))) ; Statement: $r12 = virtualinvoke $r7.<java.io.IOException: java.lang.String getMessage()>() 
(assert true)
(define-const var2179 String (append/672562846 var3029 var1896)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3029!1 String)
(assert (= var3029!1 (str.++ var3029 var1896)))
(assert true)
(define-const var2427 String (toString/-2075883882 var2179)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/184329998 var76 var2427)) ; Statement: specialinvoke $r8.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r15) 

(declare-const var76!1 var802)
(declare-const var2427!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var998-init=([], java.util.ArrayList), var802-init=([], jdk.jfr.internal.tool.UserDataException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var313-to-var571=([java.nio.file.Path], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var889-to-var349=([java.io.IOException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/184329998=([jdk.jfr.internal.tool.UserDataException, java.lang.String], void)}
; {var75=jdk.jfr.internal.tool.Assemble, var336=r20, var313=java.nio.file.Path, var3907=r1, var998=java.util.ArrayList, var2880=$r0, var889=java.io.IOException, var2912=$r7, var802=jdk.jfr.internal.tool.UserDataException, var76=$r8, var3620=$r9, var1831=$r10, var571=java.lang.Object, var1010=$r11, var3029=$r13, var349=java.lang.Throwable, var1896=$r12, var2179=$r14, var2427=$r15}
; {jdk.jfr.internal.tool.Assemble=var75, r20=var336, java.nio.file.Path=var313, r1=var3907, java.util.ArrayList=var998, $r0=var2880, java.io.IOException=var889, $r7=var2912, jdk.jfr.internal.tool.UserDataException=var802, $r8=var76, $r9=var3620, $r10=var1831, java.lang.Object=var571, $r11=var1010, $r13=var3029, java.lang.Throwable=var349, $r12=var1896, $r14=var2179, $r15=var2427}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: jdk.jfr.internal.tool.Assemble;	r1 := @parameter0: java.nio.file.Path;	$r0 = new java.util.ArrayList;	$r7 := @caughtexception;	$r8 = new jdk.jfr.internal.tool.UserDataException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not list *.jfr for directory ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ");	$r12 = virtualinvoke $r7.<java.io.IOException: java.lang.String getMessage()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<jdk.jfr.internal.tool.UserDataException: void <init>(java.lang.String)>($r15);	throw $r8
;block_num 2