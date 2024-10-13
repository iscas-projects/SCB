(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1068 0)
(declare-sort var3693 0)
(declare-sort var162 0)
(declare-sort var3159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun env/-340627520 (var1068) var3693)
(declare-fun _print_code_func/-920435095 (var3693) String)
(declare-fun graph/-340627520 (var1068) var3159)
(declare-fun getName/190485163 (var3159) String)
(declare-const null-var1068 var1068)
(declare-const null-String String)
(declare-const var888 var1068) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var888 null-var1068)))
(define-const var2444 var3693 (env/-340627520 var888)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var2275 String (_print_code_func/-920435095 var2444)) ; Statement: $r2 = $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.lang.String _print_code_func> 
 ; Statement: if $r2 == null goto $r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(assert (not (= var2275 null-String))) ; Negate: Cond: $r2 == null  
(define-const var993 var3693 (env/-340627520 var888)) ; Statement: $r6 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env> 
(define-const var2399 String (_print_code_func/-920435095 var993)) ; Statement: $r8 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.lang.String _print_code_func> 
(define-const var3061 var3159 (graph/-340627520 var888)) ; Statement: $r7 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> 
(assert true)
(define-const var1633 String (getName/190485163 var3061)) ; Statement: $r9 = virtualinvoke $r7.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.lang.String getName()>() 
(assert true)
(define-const var200 Bool (= var2399 var1633)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r9) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var200 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {env/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.runtime.ScriptEnvironment), _print_code_func/-920435095=([jdk.nashorn.internal.runtime.ScriptEnvironment], java.lang.String), graph/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier$Graph), getName/190485163=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph], java.lang.String)}
; {var1068=jdk.nashorn.internal.ir.debug.NashornTextifier, var888=r0, var3693=jdk.nashorn.internal.runtime.ScriptEnvironment, var2444=$r1, var2275=$r2, var162=null_type, var993=$r6, var2399=$r8, var3159=jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, var3061=$r7, var1633=$r9, var200=$z0}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1068, r0=var888, jdk.nashorn.internal.runtime.ScriptEnvironment=var3693, $r1=var2444, $r2=var2275, null_type=var162, $r6=var993, $r8=var2399, jdk.nashorn.internal.ir.debug.NashornTextifier$Graph=var3159, $r7=var3061, $r9=var1633, $z0=var200}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	$r1 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r2 = $r1.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.lang.String _print_code_func>;	if $r2 == null goto $r3 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r6 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.runtime.ScriptEnvironment env>;	$r8 = $r6.<jdk.nashorn.internal.runtime.ScriptEnvironment: java.lang.String _print_code_func>;	$r7 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph>;	$r9 = virtualinvoke $r7.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: java.lang.String getName()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r9);	if $z0 == 0 goto return;	return
;block_num 3