(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1752 0)
(declare-sort var814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var814_getProperty/258823597 (String) String)
(declare-const var1752-LITTLE_ENDIAN var1752)
(define-const var1650 var1752 var1752-LITTLE_ENDIAN) ; Statement: $r0 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN> 
(define-const var2297 var1752 var1650) ; Statement: <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder DEFAULT_ORDER> = $r0 
(define-const var2462 String "little") ; Statement: $r2 = "little" 
(define-const var2619 String (var814_getProperty/258823597 "sun.cpu.endian")) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("sun.cpu.endian") 
(assert true)
(define-const var177 Bool (= var2462 var2619)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN> 
(assert (not (= (ite var177 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var422 var1752 var1752-LITTLE_ENDIAN) ; Statement: $r3 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN> 
 ; Statement: goto [?= <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN> = $r3] 
(assert true) ; Non Conditional
(define-const var989 var1752 var422) ; Statement: <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var814_getProperty/258823597=([java.lang.String], java.lang.String)}
; {var1752=java.nio.ByteOrder, var1650=$r0, var2297=<cn.hutool.core.util.ByteUtil: java.nio.ByteOrder DEFAULT_ORDER>, var2462=$r2, var814=java.lang.System, var2619=$r1, var177=$z0, var422=$r3, var989=<cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN>}
; {java.nio.ByteOrder=var1752, $r0=var1650, <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder DEFAULT_ORDER>=var2297, $r2=var2462, java.lang.System=var814, $r1=var2619, $z0=var177, $r3=var422, <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN>=var989}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN>;	<cn.hutool.core.util.ByteUtil: java.nio.ByteOrder DEFAULT_ORDER> = $r0;	$r2 = "little";	$r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("sun.cpu.endian");	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r3 = <java.nio.ByteOrder: java.nio.ByteOrder BIG_ENDIAN>;	$r3 = <java.nio.ByteOrder: java.nio.ByteOrder LITTLE_ENDIAN>;	goto [?= <cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN> = $r3];	<cn.hutool.core.util.ByteUtil: java.nio.ByteOrder CPU_ENDIAN> = $r3;	return
;block_num 3