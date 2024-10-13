(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var475__getJvmVersion/-662989052 () Int)
(declare-fun var475__getJvmName/468734441 () String)
(declare-const var475-JVM_VERSION Int)
(define-const var2091 Int var475__getJvmVersion/-662989052) ; Statement: $i0 = staticinvoke <cn.hutool.core.util.JdkUtil: int _getJvmVersion()>() 
(define-const var501 Int var2091) ; Statement: <cn.hutool.core.util.JdkUtil: int JVM_VERSION> = $i0 
(define-const var744 Int var475-JVM_VERSION) ; Statement: $i1 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION> 
 ; Statement: if 8 != $i1 goto $z1 = 0 
(assert (not (not (= 8 var744)))) ; Negate: Cond: 8 != $i1  
(define-const var223 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= <cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1] 
(assert true) ; Non Conditional
(define-const var186 Bool var223) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1 
(define-const var1831 Int var475-JVM_VERSION) ; Statement: $i2 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION> 
 ; Statement: if $i2 < 17 goto $z2 = 0 
(assert (< var1831 17)) ; Cond: $i2 < 17 
(define-const var2805 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var2919 Bool var2805) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2 
(define-const var1842 String var475__getJvmName/468734441) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.JdkUtil: java.lang.String _getJvmName()>() 
(assert true)
(define-const var245 Bool (= var1842 "Dalvik")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("Dalvik") 
(define-const var838 Bool var245) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_ANDROID> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var475__getJvmVersion/-662989052=([], int), var475__getJvmName/468734441=([], java.lang.String)}
; {var475=cn.hutool.core.util.JdkUtil, var2091=$i0, var501=<cn.hutool.core.util.JdkUtil: int JVM_VERSION>, var744=$i1, var223=$z1, var186=<cn.hutool.core.util.JdkUtil: boolean IS_JDK8>, var1831=$i2, var2805=$z2, var2919=<cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17>, var1842=$r0, var245=$z0, var838=<cn.hutool.core.util.JdkUtil: boolean IS_ANDROID>}
; {cn.hutool.core.util.JdkUtil=var475, $i0=var2091, <cn.hutool.core.util.JdkUtil: int JVM_VERSION>=var501, $i1=var744, $z1=var223, <cn.hutool.core.util.JdkUtil: boolean IS_JDK8>=var186, $i2=var1831, $z2=var2805, <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17>=var2919, $r0=var1842, $z0=var245, <cn.hutool.core.util.JdkUtil: boolean IS_ANDROID>=var838}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $i0 = staticinvoke <cn.hutool.core.util.JdkUtil: int _getJvmVersion()>();	<cn.hutool.core.util.JdkUtil: int JVM_VERSION> = $i0;	$i1 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION>;	if 8 != $i1 goto $z1 = 0;	$z1 = 1;	goto [?= <cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1];	<cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1;	$i2 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION>;	if $i2 < 17 goto $z2 = 0;	$z2 = 0;	<cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2;	$r0 = staticinvoke <cn.hutool.core.util.JdkUtil: java.lang.String _getJvmName()>();	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("Dalvik");	<cn.hutool.core.util.JdkUtil: boolean IS_ANDROID> = $z0;	return
;block_num 5