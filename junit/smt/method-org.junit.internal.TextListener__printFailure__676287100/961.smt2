(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var2681 0)
(declare-sort var1854 0)
(declare-sort var3000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWriter/-951248331 (var3830) var3000)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTestHeader/1156609022 (var2681) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3000 String) void)
(declare-fun getTrimmedTrace/364788546 (var2681) String)
(declare-fun print/-1969040762 (var3000 String) void)
(declare-const null-var3830 var3830)
(declare-const null-var2681 var2681)
(declare-const null-String String)
(declare-const var3931 var3830) ; Statement: r0 := @this: org.junit.internal.TextListener 
(assert (not (= var3931 null-var3830)))
(declare-const var1203 var2681) ; Statement: r4 := @parameter0: org.junit.runner.notification.Failure 
(assert (not (= var1203 null-var2681)))
(declare-const var2521 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2521 null-String)))
(assert true)
(define-const var3937 var3000 (getWriter/-951248331 var3931)) ; Statement: $r9 = specialinvoke r0.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(define-const var3165 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3165)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3165!1 String)
(assert (= var3165!1 ""))
(assert true)
(define-const var2759 String (append/672562846 var3165!1 var2521)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3165!2 String)
(assert (= var3165!2 (str.++ var3165!1 var2521)))
(assert true)
(define-const var2761 String (append/672562846 var2759 ") ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2759!1 String)
(assert (= var2759!1 (str.++ var2759 ") ")))
(assert true)
(define-const var3910 String (getTestHeader/1156609022 var1203)) ; Statement: $r5 = virtualinvoke r4.<org.junit.runner.notification.Failure: java.lang.String getTestHeader()>() 
(assert true)
(define-const var1151 String (append/672562846 var2761 var3910)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2761!1 String)
(assert (= var2761!1 (str.++ var2761 var3910)))
(assert true)
(define-const var1000 String (toString/-2075883882 var1151)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3937 var1000)) ; Statement: virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var3937!1 var3000)
(declare-const var1000!1 String)
(assert true)
(define-const var2700 var3000 (getWriter/-951248331 var3931)) ; Statement: $r11 = specialinvoke r0.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(assert true)
(define-const var3039 String (getTrimmedTrace/364788546 var1203)) ; Statement: $r10 = virtualinvoke r4.<org.junit.runner.notification.Failure: java.lang.String getTrimmedTrace()>() 
(assert true)
;(assert (print/-1969040762 var2700 var3039)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void print(java.lang.String)>($r10) 

(declare-const var2700!1 var3000)
(declare-const var3039!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getWriter/-951248331=([org.junit.internal.TextListener], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTestHeader/1156609022=([org.junit.runner.notification.Failure], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getTrimmedTrace/364788546=([org.junit.runner.notification.Failure], java.lang.String), print/-1969040762=([java.io.PrintStream, java.lang.String], void)}
; {var3830=org.junit.internal.TextListener, var3931=r0, var2681=org.junit.runner.notification.Failure, var1203=r4, var2521=r2, var1854=null_type, var3000=java.io.PrintStream, var3937=$r9, var3165=$r1, var2759=$r3, var2761=$r6, var3910=$r5, var1151=$r7, var1000=$r8, var2700=$r11, var3039=$r10}
; {org.junit.internal.TextListener=var3830, r0=var3931, org.junit.runner.notification.Failure=var2681, r4=var1203, r2=var2521, null_type=var1854, java.io.PrintStream=var3000, $r9=var3937, $r1=var3165, $r3=var2759, $r6=var2761, $r5=var3910, $r7=var1151, $r8=var1000, $r11=var2700, $r10=var3039}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.internal.TextListener;	r4 := @parameter0: org.junit.runner.notification.Failure;	r2 := @parameter1: java.lang.String;	$r9 = specialinvoke r0.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r5 = virtualinvoke r4.<org.junit.runner.notification.Failure: java.lang.String getTestHeader()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r9.<java.io.PrintStream: void println(java.lang.String)>($r8);	$r11 = specialinvoke r0.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	$r10 = virtualinvoke r4.<org.junit.runner.notification.Failure: java.lang.String getTrimmedTrace()>();	virtualinvoke $r11.<java.io.PrintStream: void print(java.lang.String)>($r10);	return
;block_num 1