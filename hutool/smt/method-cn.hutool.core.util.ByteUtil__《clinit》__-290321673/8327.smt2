(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3488 0)
(declare-sort var2830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2830_getProperty/258823597 (String) String)
(declare-const var3488-LITTLE_ENDIAN var3488)
(declare-const var3488-BIG_ENDIAN var3488)
(define-const var785 var3488 var3488-LITTLE_ENDIAN) ; Statement: $r0 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN> 
(define-const var2880 var3488 var785) ; Statement: <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder DEFAULT_ORDER> = $r0 
(define-const var1021 String "little") ; Statement: $r2 = "little" 
(define-const var1101 String (var2830_getProperty/258823597 "sun.cpu.endian")) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("sun.cpu.endian") 
(assert true)
(define-const var2512 Bool (= var1021 var1101)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN> 
(assert (= (ite var2512 1 0) 0)) ; Cond: $z0 == 0 
(define-const var600 var3488 var3488-BIG_ENDIAN) ; Statement: $r3 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN> 
(assert true) ; Non Conditional
(define-const var2950 var3488 var600) ; Statement: <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2830_getProperty/258823597=([java.lang.String], java.lang.String)}
; {var3488=java.nio.ByteOrder, var785=$r0, var2880=<cn.hutool.core.util.ByteUtil: java.nio.ByteOrder DEFAULT_ORDER>, var1021=$r2, var2830=java.lang.System, var1101=$r1, var2512=$z0, var600=$r3, var2950=<cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN>}
; {java.nio.ByteOrder=var3488, $r0=var785, <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder DEFAULT_ORDER>=var2880, $r2=var1021, java.lang.System=var2830, $r1=var1101, $z0=var2512, $r3=var600, <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN>=var2950}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN>;	<cn.hutool.core.util.ByteUtil: java.nio.ByteOrder DEFAULT_ORDER> = $r0;	$r2 = "little";	$r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("sun.cpu.endian");	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r3 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN>;	$r3 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN>;	<cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN> = $r3;	return
;block_num 3