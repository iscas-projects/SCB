(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1993 0)
(declare-sort var3339 0)
(declare-sort var3398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun env/-340627520 (var1993) var3339)
(declare-fun _print_code_func/-920435095 (var3339) String)
(declare-fun _print_code_dir/-920435095 (var3339) String)
(declare-const null-var1993 var1993)
(declare-const null-String String)
(declare-const var3553 var1993) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3553 null-var1993)))
(define-const var3512 var3339 (env/-340627520 var3553)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var1897 String (_print_code_func/-920435095 var3512)) ; Statement: $r2 = $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.lang.String _print_code_func> 
 ; Statement: if $r2 == null goto $r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert (= var1897 null-String)) ; Cond: $r2 == null 
(define-const var1590 var3339 (env/-340627520 var3553)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var912 String (_print_code_dir/-920435095 var1590)) ; Statement: $r4 = $r3.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.lang.String _print_code_dir> 
 ; Statement: if $r4 == null goto return 
(assert (= var912 null-String)) ; Cond: $r4 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {env/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.runtime.ScriptEnvironment), _print_code_func/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.lang.String), _print_code_dir/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.lang.String)}
; {var1993=jdk.nashorn.internal.ir.debug.NashornTextifier, var3553=r0, var3339=jdk.nashorn.internal.runtime.ScriptEnvironment, var3512=$r1, var1897=$r2, var3398=null_type, var1590=$r3, var912=$r4}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1993, r0=var3553, jdk.nashorn.internal.runtime.ScriptEnvironment=var3339, $r1=var3512, $r2=var1897, null_type=var3398, $r3=var1590, $r4=var912}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	$r1 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r2 = $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.lang.String _print_code_func>;	if $r2 == null goto $r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r4 = $r3.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.lang.String _print_code_dir>;	if $r4 == null goto return;	return
;block_num 3