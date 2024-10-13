(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3693__getJvmVersion/-662989052 () Int)
(declare-fun var3693__getJvmName/468734441 () String)
(declare-const var3693-JVM_VERSION Int)
(define-const var1768 Int var3693__getJvmVersion/-662989052) ; Statement: $i0 = staticinvoke <cn.hutool.core.util.JdkUtil: int _getJvmVersion()>() 
(define-const var1645 Int var1768) ; Statement: <cn.hutool.core.util.JdkUtil: int JVM_VERSION> = $i0 
(define-const var604 Int var3693-JVM_VERSION) ; Statement: $i1 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION> 
 ; Statement: if 8 != $i1 goto $z1 = 0 
(assert (not (not (= 8 var604)))) ; Negate: Cond: 8 != $i1  
(define-const var447 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= <cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1] 
(assert true) ; Non Conditional
(define-const var3425 Bool var447) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1 
(define-const var239 Int var3693-JVM_VERSION) ; Statement: $i2 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION> 
 ; Statement: if $i2 < 17 goto $z2 = 0 
(assert (not (< var239 17))) ; Negate: Cond: $i2 < 17  
(define-const var1062 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2] 
(assert true) ; Non Conditional
(define-const var3049 Bool var1062) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2 
(define-const var1856 String var3693__getJvmName/468734441) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.JdkUtil: java.lang.String _getJvmName()>() 
(assert true)
(define-const var2423 Bool (= var1856 "Dalvik")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("Dalvik") 
(define-const var1974 Bool var2423) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_ANDROID> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3693__getJvmVersion/-662989052=([], int), var3693__getJvmName/468734441=([], java.lang.String)}
; {var3693=cn.hutool.core.util.JdkUtil, var1768=$i0, var1645=<cn.hutool.core.util.JdkUtil: int JVM_VERSION>, var604=$i1, var447=$z1, var3425=<cn.hutool.core.util.JdkUtil: boolean IS_JDK8>, var239=$i2, var1062=$z2, var3049=<cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17>, var1856=$r0, var2423=$z0, var1974=<cn.hutool.core.util.JdkUtil: boolean IS_ANDROID>}
; {cn.hutool.core.util.JdkUtil=var3693, $i0=var1768, <cn.hutool.core.util.JdkUtil: int JVM_VERSION>=var1645, $i1=var604, $z1=var447, <cn.hutool.core.util.JdkUtil: boolean IS_JDK8>=var3425, $i2=var239, $z2=var1062, <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17>=var3049, $r0=var1856, $z0=var2423, <cn.hutool.core.util.JdkUtil: boolean IS_ANDROID>=var1974}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $i0 = staticinvoke <cn.hutool.core.util.JdkUtil: int _getJvmVersion()>();	<cn.hutool.core.util.JdkUtil: int JVM_VERSION> = $i0;	$i1 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION>;	if 8 != $i1 goto $z1 = 0;	$z1 = 1;	goto [?= <cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1];	<cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1;	$i2 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION>;	if $i2 < 17 goto $z2 = 0;	$z2 = 1;	goto [?= <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2];	<cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2;	$r0 = staticinvoke <cn.hutool.core.util.JdkUtil: java.lang.String _getJvmName()>();	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("Dalvik");	<cn.hutool.core.util.JdkUtil: boolean IS_ANDROID> = $z0;	return
;block_num 5