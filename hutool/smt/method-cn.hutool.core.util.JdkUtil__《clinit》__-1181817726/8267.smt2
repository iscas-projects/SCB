(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var486__getJvmVersion/-662989052 () Int)
(declare-fun var486__getJvmName/468734441 () String)
(declare-const var486-JVM_VERSION Int)
(define-const var1006 Int var486__getJvmVersion/-662989052) ; Statement: $i0 = staticinvoke <cn.hutool.core.util.JdkUtil: int _getJvmVersion()>() 
(define-const var1834 Int var1006) ; Statement: <cn.hutool.core.util.JdkUtil: int JVM_VERSION> = $i0 
(define-const var1744 Int var486-JVM_VERSION) ; Statement: $i1 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION> 
 ; Statement: if 8 != $i1 goto $z1 = 0 
(assert (not (= 8 var1744))) ; Cond: 8 != $i1 
(define-const var1649 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var3738 Bool var1649) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1 
(define-const var1042 Int var486-JVM_VERSION) ; Statement: $i2 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION> 
 ; Statement: if $i2 < 17 goto $z2 = 0 
(assert (not (< var1042 17))) ; Negate: Cond: $i2 < 17  
(define-const var1127 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2] 
(assert true) ; Non Conditional
(define-const var2684 Bool var1127) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2 
(define-const var3303 String var486__getJvmName/468734441) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.JdkUtil: java.lang.String _getJvmName()>() 
(assert true)
(define-const var763 Bool (= var3303 "Dalvik")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("Dalvik") 
(define-const var2489 Bool var763) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_ANDROID> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var486__getJvmVersion/-662989052=([], int), var486__getJvmName/468734441=([], java.lang.String)}
; {var486=cn.hutool.core.util.JdkUtil, var1006=$i0, var1834=<cn.hutool.core.util.JdkUtil: int JVM_VERSION>, var1744=$i1, var1649=$z1, var3738=<cn.hutool.core.util.JdkUtil: boolean IS_JDK8>, var1042=$i2, var1127=$z2, var2684=<cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17>, var3303=$r0, var763=$z0, var2489=<cn.hutool.core.util.JdkUtil: boolean IS_ANDROID>}
; {cn.hutool.core.util.JdkUtil=var486, $i0=var1006, <cn.hutool.core.util.JdkUtil: int JVM_VERSION>=var1834, $i1=var1744, $z1=var1649, <cn.hutool.core.util.JdkUtil: boolean IS_JDK8>=var3738, $i2=var1042, $z2=var1127, <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17>=var2684, $r0=var3303, $z0=var763, <cn.hutool.core.util.JdkUtil: boolean IS_ANDROID>=var2489}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $i0 = staticinvoke <cn.hutool.core.util.JdkUtil: int _getJvmVersion()>();	<cn.hutool.core.util.JdkUtil: int JVM_VERSION> = $i0;	$i1 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION>;	if 8 != $i1 goto $z1 = 0;	$z1 = 0;	<cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1;	$i2 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION>;	if $i2 < 17 goto $z2 = 0;	$z2 = 1;	goto [?= <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2];	<cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2;	$r0 = staticinvoke <cn.hutool.core.util.JdkUtil: java.lang.String _getJvmName()>();	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("Dalvik");	<cn.hutool.core.util.JdkUtil: boolean IS_ANDROID> = $z0;	return
;block_num 5