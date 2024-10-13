(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1692 0)
(declare-sort var2497 0)
(declare-sort var1736 0)
(declare-sort var3158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3158_getTarget/45029478 () var1736)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1736 String) void)
(declare-fun printStackTrace/-5210062 (var2497 var1736) void)
(declare-const null-String String)
(declare-const null-var2497 var2497)
(declare-const var1926 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1926 null-String)))
(declare-const var2643 var2497) ; Statement: r7 := @parameter1: java.lang.Throwable 
(assert (not (= var2643 null-var2497)))
(define-const var3401 var1736 var3158_getTarget/45029478) ; Statement: $r5 = staticinvoke <org.slf4j.helpers.Reporter: java.io.PrintStream getTarget()>() 
(define-const var3731 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3731)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3731!1 String)
(assert (= var3731!1 ""))
(assert true)
(define-const var1500 String (append/672562846 var3731!1 "SLF4J(E): ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SLF4J(E): ") 
(declare-const var3731!2 String)
(assert (= var3731!2 (str.++ var3731!1 "SLF4J(E): ")))
(assert true)
(define-const var640 String (append/672562846 var1500 var1926)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1500!1 String)
(assert (= var1500!1 (str.++ var1500 var1926)))
(assert true)
(define-const var815 String (toString/-2075883882 var640)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3401 var815)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r4) 

(declare-const var3401!1 var1736)
(declare-const var815!1 String)
(define-const var2058 var1736 var3158_getTarget/45029478) ; Statement: $r6 = staticinvoke <org.slf4j.helpers.Reporter: java.io.PrintStream getTarget()>() 
(assert true)
;(assert (println/1773605060 var2058 "SLF4J(E): Reported exception:")) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>("SLF4J(E): Reported exception:") 

(declare-const var2058!1 var1736)
(declare-const var1869 String)
(define-const var3498 var1736 var3158_getTarget/45029478) ; Statement: $r8 = staticinvoke <org.slf4j.helpers.Reporter: java.io.PrintStream getTarget()>() 
(assert true)
;(assert (printStackTrace/-5210062 var2643 var3498)) ; Statement: virtualinvoke r7.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r8) 

(declare-const var2643!1 var2497)
(declare-const var3498!1 var1736)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3158_getTarget/45029478=([], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), printStackTrace/-5210062=([java.lang.Throwable, java.io.PrintStream], void)}
; {var1926=r1, var1692=null_type, var2497=java.lang.Throwable, var2643=r7, var1736=java.io.PrintStream, var3158=org.slf4j.helpers.Reporter, var3401=$r5, var3731=$r0, var1500=$r2, var640=$r3, var815=$r4, var2058=$r6, var1869="SLF4J(E): Reported exception:", var3498=$r8}
; {r1=var1926, null_type=var1692, java.lang.Throwable=var2497, r7=var2643, java.io.PrintStream=var1736, org.slf4j.helpers.Reporter=var3158, $r5=var3401, $r0=var3731, $r2=var1500, $r3=var640, $r4=var815, $r6=var2058, "SLF4J(E): Reported exception:"=var1869, $r8=var3498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.Throwable;	$r5 = staticinvoke <org.slf4j.helpers.Reporter: java.io.PrintStream getTarget()>();	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SLF4J(E): ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r4);	$r6 = staticinvoke <org.slf4j.helpers.Reporter: java.io.PrintStream getTarget()>();	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>("SLF4J(E): Reported exception:");	$r8 = staticinvoke <org.slf4j.helpers.Reporter: java.io.PrintStream getTarget()>();	virtualinvoke r7.<java.lang.Throwable: void printStackTrace(java.io.PrintStream)>($r8);	return
;block_num 1