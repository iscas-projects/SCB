(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1244__getJvmVersion/-662989052 () Int)
(declare-fun var1244__getJvmName/468734441 () String)
(declare-const var1244-JVM_VERSION Int)
(define-const var2832 Int var1244__getJvmVersion/-662989052) ; Statement: $i0 = staticinvoke <cn.hutool.core.util.JdkUtil: int _getJvmVersion()>() 
(define-const var3451 Int var2832) ; Statement: <cn.hutool.core.util.JdkUtil: int JVM_VERSION> = $i0 
(define-const var3137 Int var1244-JVM_VERSION) ; Statement: $i1 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION> 
 ; Statement: if 8 != $i1 goto $z1 = 0 
(assert (not (= 8 var3137))) ; Cond: 8 != $i1 
(define-const var2531 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var78 Bool var2531) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1 
(define-const var1146 Int var1244-JVM_VERSION) ; Statement: $i2 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION> 
 ; Statement: if $i2 < 17 goto $z2 = 0 
(assert (< var1146 17)) ; Cond: $i2 < 17 
(define-const var580 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3459 Bool var580) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2 
(define-const var2613 String var1244__getJvmName/468734441) ; Statement: $r0 = staticinvoke <cn.hutool.core.util.JdkUtil: java.lang.String _getJvmName()>() 
(assert true)
(define-const var2096 Bool (= var2613 "Dalvik")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("Dalvik") 
(define-const var292 Bool var2096) ; Statement: <cn.hutool.core.util.JdkUtil: boolean IS_ANDROID> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1244__getJvmVersion/-662989052=([], int), var1244__getJvmName/468734441=([], java.lang.String)}
; {var1244=cn.hutool.core.util.JdkUtil, var2832=$i0, var3451=<cn.hutool.core.util.JdkUtil: int JVM_VERSION>, var3137=$i1, var2531=$z1, var78=<cn.hutool.core.util.JdkUtil: boolean IS_JDK8>, var1146=$i2, var580=$z2, var3459=<cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17>, var2613=$r0, var2096=$z0, var292=<cn.hutool.core.util.JdkUtil: boolean IS_ANDROID>}
; {cn.hutool.core.util.JdkUtil=var1244, $i0=var2832, <cn.hutool.core.util.JdkUtil: int JVM_VERSION>=var3451, $i1=var3137, $z1=var2531, <cn.hutool.core.util.JdkUtil: boolean IS_JDK8>=var78, $i2=var1146, $z2=var580, <cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17>=var3459, $r0=var2613, $z0=var2096, <cn.hutool.core.util.JdkUtil: boolean IS_ANDROID>=var292}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $i0 = staticinvoke <cn.hutool.core.util.JdkUtil: int _getJvmVersion()>();	<cn.hutool.core.util.JdkUtil: int JVM_VERSION> = $i0;	$i1 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION>;	if 8 != $i1 goto $z1 = 0;	$z1 = 0;	<cn.hutool.core.util.JdkUtil: boolean IS_JDK8> = $z1;	$i2 = <cn.hutool.core.util.JdkUtil: int JVM_VERSION>;	if $i2 < 17 goto $z2 = 0;	$z2 = 0;	<cn.hutool.core.util.JdkUtil: boolean IS_AT_LEAST_JDK17> = $z2;	$r0 = staticinvoke <cn.hutool.core.util.JdkUtil: java.lang.String _getJvmName()>();	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("Dalvik");	<cn.hutool.core.util.JdkUtil: boolean IS_ANDROID> = $z0;	return
;block_num 5