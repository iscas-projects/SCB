(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1501 0)
(declare-sort var2718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun reset/84691649 (var2718 Int) void)
(declare-fun cast-from-var1501-to-var2718 (var1501) var2718)
(declare-fun sb/-603474257 (var1501) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-var1501 var1501)
(declare-const null-Int Int)
(declare-const var892 var1501) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var892 null-var1501)))
(declare-const var3840 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3840 null-Int)))
(declare-const var3137 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3137 null-Int)))
(assert true)
;(assert (reset/84691649 (cast-from-var1501-to-var2718 var892) var3840)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void reset(int)>(i0) 

(declare-const var892!1 var1501)
(declare-const var3840!1 Int)
(define-const var156 String (sb/-603474257 var892!1)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb> 
(assert true)
;(assert (setLength/1276735992 var156 var3137)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(i1) 

(declare-const var156!1 String)
(declare-const var3137!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {reset/84691649=([jdk.nashorn.internal.parser.Scanner, int], void), cast-from-var1501-to-var2718=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], jdk.nashorn.internal.parser.Scanner), sb/-603474257=([jdk.nashorn.internal.runtime.regexp.RegExpScanner], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var1501=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var892=r0, var3840=i0, var3137=i1, var2718=jdk.nashorn.internal.parser.Scanner, var156=$r1}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var1501, r0=var892, i0=var3840, i1=var3137, jdk.nashorn.internal.parser.Scanner=var2718, $r1=var156}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 := @parameter0: int;	i1 := @parameter1: int;	virtualinvoke r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: void reset(int)>(i0);	$r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;	virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(i1);	return
;block_num 1