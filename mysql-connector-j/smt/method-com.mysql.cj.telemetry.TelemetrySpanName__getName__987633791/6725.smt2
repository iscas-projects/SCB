(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3990 0)
(declare-sort var3736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var3736-1 ((Array Int var3736)) Int)
(declare-fun name/-1650533685 (var3990) String)
(declare-const null-var3990 var3990)
(declare-const null-__Array__Int__var3736__ (Array Int var3736))
(declare-const var3320 var3990) ; Statement: r1 := @this: com.mysql.cj.telemetry.TelemetrySpanName 
(assert (not (= var3320 null-var3990)))
(declare-const var1985 (Array Int var3736)) ; Statement: r0 := @parameter0: java.lang.Object[] 
(assert (not (= var1985 null-__Array__Int__var3736__)))
(define-const var473 Int (getLength-Arr-var3736-1 var1985)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 0 goto $r2 = r1.<com.mysql.cj.telemetry.TelemetrySpanName: java.lang.String name> 
(assert (<= var473 0)) ; Cond: $i0 <= 0 
(define-const var970 String (name/-1650533685 var3320)) ; Statement: $r2 = r1.<com.mysql.cj.telemetry.TelemetrySpanName: java.lang.String name> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var3736-1=([java.lang.Object[]], int), name/-1650533685=([com.mysql.cj.telemetry.TelemetrySpanName], java.lang.String)}
; {var3990=com.mysql.cj.telemetry.TelemetrySpanName, var3320=r1, var3736=java.lang.Object, var1985=r0, var473=$i0, var970=$r2}
; {com.mysql.cj.telemetry.TelemetrySpanName=var3990, r1=var3320, java.lang.Object=var3736, r0=var1985, $i0=var473, $r2=var970}
;seq 
;cnt {}
;stmts r1 := @this: com.mysql.cj.telemetry.TelemetrySpanName;	r0 := @parameter0: java.lang.Object[];	$i0 = lengthof r0;	if $i0 <= 0 goto $r2 = r1.<com.mysql.cj.telemetry.TelemetrySpanName: java.lang.String name>;	$r2 = r1.<com.mysql.cj.telemetry.TelemetrySpanName: java.lang.String name>;	return $r2
;block_num 2