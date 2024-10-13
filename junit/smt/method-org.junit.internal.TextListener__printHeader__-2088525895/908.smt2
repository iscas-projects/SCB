(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3521 0)
(declare-sort var2267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWriter/-951248331 (var3521) var2267)
(declare-fun println/-898436193 (var2267) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun elapsedTimeAsString/-931374026 (var3521 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2267 String) void)
(declare-const null-var3521 var3521)
(declare-const null-Int Int)
(declare-const var3145 var3521) ; Statement: r0 := @this: org.junit.internal.TextListener 
(assert (not (= var3145 null-var3521)))
(declare-const var767 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var767 null-Int)))
(assert true)
(define-const var1432 var2267 (getWriter/-951248331 var3145)) ; Statement: $r1 = specialinvoke r0.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(assert true)
;(assert (println/-898436193 var1432)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println()>() 

(declare-const var1432!1 var2267)
(assert true)
(define-const var3586 var2267 (getWriter/-951248331 var3145)) ; Statement: $r7 = specialinvoke r0.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>() 
(define-const var2320 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2320)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2320!1 String)
(assert (= var2320!1 ""))
(assert true)
(define-const var1495 String (append/672562846 var2320!1 "Time: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Time: ") 
(declare-const var2320!2 String)
(assert (= var2320!2 (str.++ var2320!1 "Time: ")))
(assert true)
(define-const var3972 String (elapsedTimeAsString/-931374026 var3145 var767)) ; Statement: $r3 = virtualinvoke r0.<org.junit.internal.TextListener: java.lang.String elapsedTimeAsString(long)>(l0) 
(assert true)
(define-const var2799 String (append/672562846 var1495 var3972)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1495!1 String)
(assert (= var1495!1 (str.++ var1495 var3972)))
(assert true)
(define-const var2498 String (toString/-2075883882 var2799)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3586 var2498)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var3586!1 var2267)
(declare-const var2498!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getWriter/-951248331=([org.junit.internal.TextListener], java.io.PrintStream), println/-898436193=([java.io.PrintStream], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), elapsedTimeAsString/-931374026=([org.junit.internal.TextListener, long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3521=org.junit.internal.TextListener, var3145=r0, var767=l0, var2267=java.io.PrintStream, var1432=$r1, var3586=$r7, var2320=$r2, var1495=$r4, var3972=$r3, var2799=$r5, var2498=$r6}
; {org.junit.internal.TextListener=var3521, r0=var3145, l0=var767, java.io.PrintStream=var2267, $r1=var1432, $r7=var3586, $r2=var2320, $r4=var1495, $r3=var3972, $r5=var2799, $r6=var2498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.internal.TextListener;	l0 := @parameter0: long;	$r1 = specialinvoke r0.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	virtualinvoke $r1.<java.io.PrintStream: void println()>();	$r7 = specialinvoke r0.<org.junit.internal.TextListener: java.io.PrintStream getWriter()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Time: ");	$r3 = virtualinvoke r0.<org.junit.internal.TextListener: java.lang.String elapsedTimeAsString(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r6);	return
;block_num 1