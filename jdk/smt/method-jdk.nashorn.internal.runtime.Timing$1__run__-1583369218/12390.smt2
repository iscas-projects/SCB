(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2515 0)
(declare-sort var2919 0)
(declare-sort var549 0)
(declare-sort var3123 0)
(declare-sort var1538 0)
(declare-sort var1792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/1736496918 (var2515) var2919)
(declare-fun var2919_access$100/976758976 (var2919) var549)
(declare-fun getStrings/37962990 (var549) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun print/621412916 (var3123 var1792) void)
(declare-fun cast-from-String-to-var1792 (String) var1792)
(declare-const null-var2515 var2515)
(declare-const var1538-err var3123)
(declare-const var2621 var2515) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.Timing$1 
(assert (not (= var2621 null-var2515)))
(define-const var86 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var86)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var86!1 String)
(assert (= var86!1 ""))
(define-const var1506 var2919 (this$0/1736496918 var2621)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.Timing$1: jdk.nashorn.internal.runtime.Timing this$0> 
(define-const var611 var549 (var2919_access$100/976758976 var1506)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.runtime.Timing: jdk.nashorn.internal.runtime.Timing$TimeSupplier access$100(jdk.nashorn.internal.runtime.Timing)>($r2) 
(assert true)
(define-const var1767 (Array Int String) (getStrings/37962990 var611)) ; Statement: r4 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: java.lang.String[] getStrings()>() 
(define-const var1718 Int (getLength-Arr-String-1 var1767)) ; Statement: i0 = lengthof r4 
(define-const var2323 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r5 = <java.lang.System: java.io.PrintStream err> 
(assert (>= var2323 var1718)) ; Cond: i1 >= i0 
(define-const var79 var3123 var1538-err) ; Statement: $r5 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (print/621412916 var79 (cast-from-String-to-var1792 var86!1))) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void print(java.lang.Object)>($r0) 

(declare-const var79!1 var3123)
(declare-const var86!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/1736496918=([jdk.nashorn.internal.runtime.Timing$1], jdk.nashorn.internal.runtime.Timing), var2919_access$100/976758976=([jdk.nashorn.internal.runtime.Timing], jdk.nashorn.internal.runtime.Timing$TimeSupplier), getStrings/37962990=([jdk.nashorn.internal.runtime.Timing$TimeSupplier], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), print/621412916=([java.io.PrintStream, java.lang.Object], void), cast-from-String-to-var1792=([java.lang.StringBuilder], java.lang.Object)}
; {var2515=jdk.nashorn.internal.runtime.Timing$1, var2621=r1, var86=$r0, var2919=jdk.nashorn.internal.runtime.Timing, var1506=$r2, var549=jdk.nashorn.internal.runtime.Timing$TimeSupplier, var611=$r3, var1767=r4, var1718=i0, var2323=i1, var3123=java.io.PrintStream, var1538=java.lang.System, var79=$r5, var1792=java.lang.Object}
; {jdk.nashorn.internal.runtime.Timing$1=var2515, r1=var2621, $r0=var86, jdk.nashorn.internal.runtime.Timing=var2919, $r2=var1506, jdk.nashorn.internal.runtime.Timing$TimeSupplier=var549, $r3=var611, r4=var1767, i0=var1718, i1=var2323, java.io.PrintStream=var3123, java.lang.System=var1538, $r5=var79, java.lang.Object=var1792}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.Timing$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.nashorn.internal.runtime.Timing$1: jdk.nashorn.internal.runtime.Timing this$0>;	$r3 = staticinvoke <jdk.nashorn.internal.runtime.Timing: jdk.nashorn.internal.runtime.Timing$TimeSupplier access$100(jdk.nashorn.internal.runtime.Timing)>($r2);	r4 = virtualinvoke $r3.<jdk.nashorn.internal.runtime.Timing$TimeSupplier: java.lang.String[] getStrings()>();	i0 = lengthof r4;	i1 = 0;	if i1 >= i0 goto $r5 = <java.lang.System: java.io.PrintStream err>;	$r5 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r5.<java.io.PrintStream: void print(java.lang.Object)>($r0);	return
;block_num 3