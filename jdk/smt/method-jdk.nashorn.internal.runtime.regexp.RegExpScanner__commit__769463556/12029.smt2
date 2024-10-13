(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var426 var426)
(declare-const null-Int Int)
(declare-const var426-$assertionsDisabled Bool)
(declare-const var1069 var426) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var1069 null-var426)))
(declare-const var3704 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3704 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; } 
(assert (and (not (= var3704 3)) (and (not (= var3704 2)) (and (not (= var3704 1)) true)))) ; Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional   
(define-const var3211 Bool var426-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto return 1 
(assert (not (= (ite var3211 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var426=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var1069=r0, var3704=i0, var3211=$z0}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var426, r0=var1069, i0=var3704, $z0=var3211}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 := @parameter0: int;	tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; };	$z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>;	if $z0 != 0 goto return 1;	return 1
;block_num 3