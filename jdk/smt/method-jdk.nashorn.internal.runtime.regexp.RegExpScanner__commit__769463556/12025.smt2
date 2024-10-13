(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var140 0)
(declare-sort var2299 0)
(declare-sort var3664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2299-init () var2299)
(declare-fun <init>/582965326 (var2299 var3664) void)
(declare-fun cast-from-String-to-var3664 (String) var3664)
(declare-const null-var140 var140)
(declare-const null-Int Int)
(declare-const var140-$assertionsDisabled Bool)
(declare-const var3669 var140) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner 
(assert (not (= var3669 null-var140)))
(declare-const var1908 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1908 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; } 
(assert (and (not (= var1908 3)) (and (not (= var1908 2)) (and (not (= var1908 1)) true)))) ; Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional   
(define-const var1942 Bool var140-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto return 1 
(assert (not (not (= (ite var1942 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var644 var2299 var2299-init) ; Statement: $r7 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var644 (cast-from-String-to-var3664 "Should not reach here"))) ; Statement: specialinvoke $r7.<java.lang.AssertionError: void <init>(java.lang.Object)>("Should not reach here") 

(declare-const var644!1 var2299)
(declare-const var45 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2299-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3664=([java.lang.String], java.lang.Object)}
; {var140=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var3669=r0, var1908=i0, var1942=$z0, var2299=java.lang.AssertionError, var644=$r7, var3664=java.lang.Object, var45="Should not reach here"}
; {jdk.nashorn.internal.runtime.regexp.RegExpScanner=var140, r0=var3669, i0=var1908, $z0=var1942, java.lang.AssertionError=var2299, $r7=var644, java.lang.Object=var3664, "Should not reach here"=var45}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.RegExpScanner;	i0 := @parameter0: int;	tableswitch(i0) {     case 1: goto $r6 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 2: goto $r4 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     case 3: goto $r1 = r0.<jdk.nashorn.internal.runtime.regexp.RegExpScanner: java.lang.StringBuilder sb>;     default: goto $z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>; };	$z0 = <jdk.nashorn.internal.runtime.regexp.RegExpScanner: boolean $assertionsDisabled>;	if $z0 != 0 goto return 1;	$r7 = new java.lang.AssertionError;	specialinvoke $r7.<java.lang.AssertionError: void <init>(java.lang.Object)>("Should not reach here");	throw $r7
;block_num 3