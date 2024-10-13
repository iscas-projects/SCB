(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var939 0)
(declare-sort var1347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-84427533 (var939) String)
(declare-fun cast-from-var1347-to-var939 (var1347) var939)
(declare-const null-var939 var939)
(declare-const null-var1347 var1347)
(declare-const var96 var939) ; Statement: r1 := @this: com.google.javascript.jscomp.Timeline$Time 
(assert (not (= var96 null-var939)))
(declare-const var2230 var1347) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2230 null-var1347)))
(define-const var3605 Bool false) ; Statement: $z0 = r0 instanceof com.google.javascript.jscomp.Timeline$Time 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var3605 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2459 String (name/-84427533 var96)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.Timeline$Time: java.lang.String name> 
(define-const var244 var939 (cast-from-var1347-to-var939 var2230)) ; Statement: $r2 = (com.google.javascript.jscomp.Timeline$Time) r0 
(define-const var1296 String (name/-84427533 var244)) ; Statement: $r3 = $r2.<com.google.javascript.jscomp.Timeline$Time: java.lang.String name> 
(assert true)
(define-const var1642 Bool (= var2459 var1296)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-84427533=([com.google.javascript.jscomp.Timeline$Time], java.lang.String), cast-from-var1347-to-var939=([java.lang.Object], com.google.javascript.jscomp.Timeline$Time)}
; {var939=com.google.javascript.jscomp.Timeline$Time, var96=r1, var1347=java.lang.Object, var2230=r0, var3605=$z0, var2459=$r4, var244=$r2, var1296=$r3, var1642=$z1}
; {com.google.javascript.jscomp.Timeline$Time=var939, r1=var96, java.lang.Object=var1347, r0=var2230, $z0=var3605, $r4=var2459, $r2=var244, $r3=var1296, $z1=var1642}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Timeline$Time;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof com.google.javascript.jscomp.Timeline$Time;	if $z0 == 0 goto return 0;	$r4 = r1.<com.google.javascript.jscomp.Timeline$Time: java.lang.String name>;	$r2 = (com.google.javascript.jscomp.Timeline$Time) r0;	$r3 = $r2.<com.google.javascript.jscomp.Timeline$Time: java.lang.String name>;	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z1
;block_num 2