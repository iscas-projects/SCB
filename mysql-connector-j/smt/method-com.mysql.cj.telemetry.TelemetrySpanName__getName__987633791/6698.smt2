(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var799 0)
(declare-sort var2535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var2535-1 ((Array Int var2535)) Int)
(declare-fun name/-1650533685 (var799) String)
(declare-fun String_format/1339386452 (String (Array Int var2535)) String)
(declare-const null-var799 var799)
(declare-const null-__Array__Int__var2535__ (Array Int var2535))
(declare-const var797 var799) ; Statement: r1 := @this: com.mysql.cj.telemetry.TelemetrySpanName 
(assert (not (= var797 null-var799)))
(declare-const var782 (Array Int var2535)) ; Statement: r0 := @parameter0: java.lang.Object[] 
(assert (not (= var782 null-__Array__Int__var2535__)))
(define-const var1995 Int (getLength-Arr-var2535-1 var782)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 0 goto $r2 = r1.<com.mysql.cj.telemetry.TelemetrySpanName: java.lang.String name> 
(assert (not (<= var1995 0))) ; Negate: Cond: $i0 <= 0  
(define-const var1678 String (name/-1650533685 var797)) ; Statement: $r3 = r1.<com.mysql.cj.telemetry.TelemetrySpanName: java.lang.String name> 
(define-const var668 String (String_format/1339386452 var1678 var782)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r3, r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var2535-1=([java.lang.Object[]], int), name/-1650533685=([com.mysql.cj.telemetry.TelemetrySpanName], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var799=com.mysql.cj.telemetry.TelemetrySpanName, var797=r1, var2535=java.lang.Object, var782=r0, var1995=$i0, var1678=$r3, var668=$r4}
; {com.mysql.cj.telemetry.TelemetrySpanName=var799, r1=var797, java.lang.Object=var2535, r0=var782, $i0=var1995, $r3=var1678, $r4=var668}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.mysql.cj.telemetry.TelemetrySpanName;	r0 := @parameter0: java.lang.Object[];	$i0 = lengthof r0;	if $i0 <= 0 goto $r2 = r1.<com.mysql.cj.telemetry.TelemetrySpanName: java.lang.String name>;	$r3 = r1.<com.mysql.cj.telemetry.TelemetrySpanName: java.lang.String name>;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>($r3, r0);	return $r4
;block_num 2