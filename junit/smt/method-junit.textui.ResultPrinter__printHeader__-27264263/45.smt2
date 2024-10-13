(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort var2396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWriter/-243046667 (var1192) var2396)
(declare-fun println/-898436193 (var2396) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun elapsedTimeAsString/-1025861770 (var1192 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2396 String) void)
(declare-const null-var1192 var1192)
(declare-const null-Int Int)
(declare-const var23 var1192) ; Statement: r0 := @this: junit.textui.ResultPrinter 
(assert (not (= var23 null-var1192)))
(declare-const var1262 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1262 null-Int)))
(assert true)
(define-const var2327 var2396 (getWriter/-243046667 var23)) ; Statement: $r1 = virtualinvoke r0.<junit.textui.ResultPrinter: java.io.PrintStream getWriter()>() 
(assert true)
;(assert (println/-898436193 var2327)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println()>() 

(declare-const var2327!1 var2396)
(assert true)
(define-const var2901 var2396 (getWriter/-243046667 var23)) ; Statement: $r7 = virtualinvoke r0.<junit.textui.ResultPrinter: java.io.PrintStream getWriter()>() 
(define-const var1911 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1911)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1911!1 String)
(assert (= var1911!1 ""))
(assert true)
(define-const var3693 String (append/672562846 var1911!1 "Time: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Time: ") 
(declare-const var1911!2 String)
(assert (= var1911!2 (str.++ var1911!1 "Time: ")))
(assert true)
(define-const var3500 String (elapsedTimeAsString/-1025861770 var23 var1262)) ; Statement: $r3 = virtualinvoke r0.<junit.textui.ResultPrinter: java.lang.String elapsedTimeAsString(long)>(l0) 
(assert true)
(define-const var3177 String (append/672562846 var3693 var3500)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3693!1 String)
(assert (= var3693!1 (str.++ var3693 var3500)))
(assert true)
(define-const var999 String (toString/-2075883882 var3177)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2901 var999)) ; Statement: virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r6) 

(declare-const var2901!1 var2396)
(declare-const var999!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getWriter/-243046667=([junit.textui.ResultPrinter], java.io.PrintStream), println/-898436193=([java.io.PrintStream], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), elapsedTimeAsString/-1025861770=([junit.textui.ResultPrinter, long], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1192=junit.textui.ResultPrinter, var23=r0, var1262=l0, var2396=java.io.PrintStream, var2327=$r1, var2901=$r7, var1911=$r2, var3693=$r4, var3500=$r3, var3177=$r5, var999=$r6}
; {junit.textui.ResultPrinter=var1192, r0=var23, l0=var1262, java.io.PrintStream=var2396, $r1=var2327, $r7=var2901, $r2=var1911, $r4=var3693, $r3=var3500, $r5=var3177, $r6=var999}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: junit.textui.ResultPrinter;	l0 := @parameter0: long;	$r1 = virtualinvoke r0.<junit.textui.ResultPrinter: java.io.PrintStream getWriter()>();	virtualinvoke $r1.<java.io.PrintStream: void println()>();	$r7 = virtualinvoke r0.<junit.textui.ResultPrinter: java.io.PrintStream getWriter()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Time: ");	$r3 = virtualinvoke r0.<junit.textui.ResultPrinter: java.lang.String elapsedTimeAsString(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<java.io.PrintStream: void println(java.lang.String)>($r6);	return
;block_num 1