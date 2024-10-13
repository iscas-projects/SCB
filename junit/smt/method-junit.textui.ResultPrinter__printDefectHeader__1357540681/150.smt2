(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2171 0)
(declare-sort var1233 0)
(declare-sort var1587 0)
(declare-sort var3384 0)
(declare-sort var1648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWriter/-243046667 (var2171) var1587)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun failedTest/979594242 (var1233) var3384)
(declare-fun append/-1031950772 (String var1648) String)
(declare-fun cast-from-var3384-to-var1648 (var3384) var1648)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1969040762 (var1587 String) void)
(declare-const null-var2171 var2171)
(declare-const null-var1233 var1233)
(declare-const null-Int Int)
(declare-const var3412 var2171) ; Statement: r0 := @this: junit.textui.ResultPrinter 
(assert (not (= var3412 null-var2171)))
(declare-const var179 var1233) ; Statement: r3 := @parameter0: junit.framework.TestFailure 
(assert (not (= var179 null-var1233)))
(declare-const var3689 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3689 null-Int)))
(assert true)
(define-const var3501 var1587 (getWriter/-243046667 var3412)) ; Statement: $r8 = virtualinvoke r0.<junit.textui.ResultPrinter: java.io.PrintStream getWriter()>() 
(define-const var1012 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1012)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1012!1 String)
(assert (= var1012!1 ""))
(assert true)
(define-const var1737 String (append/-1001720160 var1012!1 var3689)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1012!2 String)
(assert (str.prefixof var1012!1 var1012!2))
(assert true)
(define-const var3714 String (append/672562846 var1737 ") ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var1737!1 String)
(assert (= var1737!1 (str.++ var1737 ") ")))
(assert true)
(define-const var3804 var3384 (failedTest/979594242 var179)) ; Statement: $r4 = virtualinvoke r3.<junit.framework.TestFailure: junit.framework.Test failedTest()>() 
(assert true)
(define-const var2075 String (append/-1031950772 var3714 (cast-from-var3384-to-var1648 var3804))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var3714!1 String)
(assert (str.prefixof var3714 var3714!1))
(assert true)
(define-const var2910 String (toString/-2075883882 var2075)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1969040762 var3501 var2910)) ; Statement: virtualinvoke $r8.<java.io.PrintStream: void print(java.lang.String)>($r7) 

(declare-const var3501!1 var1587)
(declare-const var2910!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getWriter/-243046667=([junit.textui.ResultPrinter], java.io.PrintStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), failedTest/979594242=([junit.framework.TestFailure], junit.framework.Test), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3384-to-var1648=([junit.framework.Test], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1969040762=([java.io.PrintStream, java.lang.String], void)}
; {var2171=junit.textui.ResultPrinter, var3412=r0, var1233=junit.framework.TestFailure, var179=r3, var3689=i0, var1587=java.io.PrintStream, var3501=$r8, var1012=$r1, var1737=$r2, var3714=$r5, var3384=junit.framework.Test, var3804=$r4, var1648=java.lang.Object, var2075=$r6, var2910=$r7}
; {junit.textui.ResultPrinter=var2171, r0=var3412, junit.framework.TestFailure=var1233, r3=var179, i0=var3689, java.io.PrintStream=var1587, $r8=var3501, $r1=var1012, $r2=var1737, $r5=var3714, junit.framework.Test=var3384, $r4=var3804, java.lang.Object=var1648, $r6=var2075, $r7=var2910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: junit.textui.ResultPrinter;	r3 := @parameter0: junit.framework.TestFailure;	i0 := @parameter1: int;	$r8 = virtualinvoke r0.<junit.textui.ResultPrinter: java.io.PrintStream getWriter()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r4 = virtualinvoke r3.<junit.framework.TestFailure: junit.framework.Test failedTest()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r8.<java.io.PrintStream: void print(java.lang.String)>($r7);	return
;block_num 1