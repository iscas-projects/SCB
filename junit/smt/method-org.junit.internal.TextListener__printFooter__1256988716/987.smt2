(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3460 0)
(declare-sort var1084 0)
(declare-sort var1198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun wasSuccessful/809251309 (var1084) Bool)
(declare-fun getWriter/-951248331 (var3460) var1198)
(declare-fun println/-898436193 (var1198) void)
(declare-fun println/1773605060 (var1198 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRunCount/431180239 (var1084) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getFailureCount/-2013903154 (var1084) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3460 var3460)
(declare-const null-var1084 var1084)
(declare-const var3857 var3460) ; Statement: r1 := @this: org.junit.internal.TextListener 
(assert (not (= var3857 null-var3460)))
(declare-const var3871 var1084) ; Statement: r0 := @parameter0: org.junit.runner.Result 
(assert (not (= var3871 null-var1084)))
(assert true)
(define-const var2148 Bool (wasSuccessful/809251309 var3871)) ; Statement: $z0 = virtualinvoke r0.<org.junit.runner.Result: boolean wasSuccessful()>() 
 ; Statement: if $z0 == 0 goto $r2 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(assert (= (ite var2148 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2135 var1198 (getWriter/-951248331 var3857)) ; Statement: $r2 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(assert true)
;(assert (println/-898436193 var2135)) ; Statement: virtualinvoke $r2.<java.io.PrintStream: void println()>() 

(declare-const var2135!1 var1198)
(assert true)
(define-const var1574 var1198 (getWriter/-951248331 var3857)) ; Statement: $r3 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(assert true)
;(assert (println/1773605060 var1574 "FAILURES!!!")) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>("FAILURES!!!") 

(declare-const var1574!1 var1198)
(declare-const var3247 String)
(assert true)
(define-const var1758 var1198 (getWriter/-951248331 var3857)) ; Statement: $r10 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(define-const var1188 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1188)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1188!1 String)
(assert (= var1188!1 ""))
(assert true)
(define-const var1670 String (append/672562846 var1188!1 "Tests run: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tests run: ") 
(declare-const var1188!2 String)
(assert (= var1188!2 (str.++ var1188!1 "Tests run: ")))
(assert true)
(define-const var304 Int (getRunCount/431180239 var3871)) ; Statement: $i0 = virtualinvoke r0.<org.junit.runner.Result: int getRunCount()>() 
(assert true)
(define-const var3042 String (append/-1001720160 var1670 var304)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1670!1 String)
(assert (str.prefixof var1670 var1670!1))
(assert true)
(define-const var553 String (append/672562846 var3042 ",  Failures: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",  Failures: ") 
(declare-const var3042!1 String)
(assert (= var3042!1 (str.++ var3042 ",  Failures: ")))
(assert true)
(define-const var3785 Int (getFailureCount/-2013903154 var3871)) ; Statement: $i1 = virtualinvoke r0.<org.junit.runner.Result: int getFailureCount()>() 
(assert true)
(define-const var2580 String (append/-1001720160 var553 var3785)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var553!1 String)
(assert (str.prefixof var553 var553!1))
(assert true)
(define-const var2945 String (toString/-2075883882 var2580)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1758 var2945)) ; Statement: virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var1758!1 var1198)
(declare-const var2945!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var1736 var1198 (getWriter/-951248331 var3857)) ; Statement: $r11 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(assert true)
;(assert (println/-898436193 var1736)) ; Statement: virtualinvoke $r11.<java.io.PrintStream: void println()>() 

(declare-const var1736!1 var1198)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {wasSuccessful/809251309=([org.junit.runner.Result], boolean), getWriter/-951248331=([org.junit.internal.TextListener], java.io.PrintStream), println/-898436193=([java.io.PrintStream], void), println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRunCount/431180239=([org.junit.runner.Result], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getFailureCount/-2013903154=([org.junit.runner.Result], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3460=org.junit.internal.TextListener, var3857=r1, var1084=org.junit.runner.Result, var3871=r0, var2148=$z0, var1198=java.io.PrintStream, var2135=$r2, var1574=$r3, var3247="FAILURES!!!", var1758=$r10, var1188=$r4, var1670=$r5, var304=$i0, var3042=$r6, var553=$r7, var3785=$i1, var2580=$r8, var2945=$r9, var1736=$r11}
; {org.junit.internal.TextListener=var3460, r1=var3857, org.junit.runner.Result=var1084, r0=var3871, $z0=var2148, java.io.PrintStream=var1198, $r2=var2135, $r3=var1574, "FAILURES!!!"=var3247, $r10=var1758, $r4=var1188, $r5=var1670, $i0=var304, $r6=var3042, $r7=var553, $i1=var3785, $r8=var2580, $r9=var2945, $r11=var1736}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.internal.TextListener;	r0 := @parameter0: org.junit.runner.Result;	$z0 = virtualinvoke r0.<org.junit.runner.Result: boolean wasSuccessful()>();	if $z0 == 0 goto $r2 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	$r2 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	virtualinvoke $r2.<java.io.PrintStream: void println()>();	$r3 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>("FAILURES!!!");	$r10 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Tests run: ");	$i0 = virtualinvoke r0.<org.junit.runner.Result: int getRunCount()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",  Failures: ");	$i1 = virtualinvoke r0.<org.junit.runner.Result: int getFailureCount()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<java.io.PrintStream: void println(java.lang.String)>($r9);	$r11 = specialinvoke r1.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	virtualinvoke $r11.<java.io.PrintStream: void println()>();	return
;block_num 3