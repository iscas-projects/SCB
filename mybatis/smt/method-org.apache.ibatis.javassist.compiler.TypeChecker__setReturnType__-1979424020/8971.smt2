(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3230 0)
(declare-sort var360 0)
(declare-sort var848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arrayDim/1960993524 (var3230) Int)
(declare-fun var848_descToType/-1878891029 (Int) Int)
(declare-fun exprType/1960993524 (var3230) Int)
(declare-fun className/1960993524 (var3230) String)
(declare-const null-var3230 var3230)
(declare-const null-String String)
(declare-const var1558 var3230) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.TypeChecker 
(assert (not (= var1558 null-var3230)))
(declare-const var1541 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1541 null-String)))
(assert true)
(define-const var1465 Int (indexOf/-1037706067 var1541 41)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
 ; Statement: if i4 >= 0 goto i5 = i4 + 1 
(assert (>= var1465 0)) ; Cond: i4 >= 0 
(define-const var2823 Int (+ var1465 1)) ; Statement: i5 = i4 + 1 
(assert (and true (and (> (str.len var1541) var2823) (<= 0 var2823))))
(define-const var3774 Int (charAt/698050440 var1541 var2823)) ; Statement: c6 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i5) 
(define-const var1524 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var376 Int (cast-from-Int-to-Int var3774)) ; Statement: $i8 = (int) c6 
 ; Statement: if $i8 != 91 goto r1.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i7 
(assert (not (= var376 91))) ; Cond: $i8 != 91 
(declare-const var1558!1 var3230)
(assert (not (= var1558!1 null-var3230)))
(assert (= (arrayDim/1960993524 var1558!1) var1524)) ; Statement: r1.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i7 
(define-const var3025 Int (cast-from-Int-to-Int var3774)) ; Statement: $i9 = (int) c6 
 ; Statement: if $i9 != 76 goto $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6) 
(assert (not (= var3025 76))) ; Cond: $i9 != 76 
(define-const var3520 Int (var848_descToType/-1878891029 var3774)) ; Statement: $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6) 
(declare-const var1558!2 var3230)
(assert (not (= var1558!2 null-var3230)))
(assert (= (exprType/1960993524 var1558!2) var3520)) ; Statement: r1.<org.apache.ibatis.javassist.compiler.TypeChecker: int exprType> = $i0 
(declare-const var1558!3 var3230)
(assert (not (= var1558!3 null-var3230)))
(assert (= (className/1960993524 var1558!3) null-String)) ; Statement: r1.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = null 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), arrayDim/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], int), var848_descToType/-1878891029=([char], int), exprType/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], int), className/1960993524=([org.apache.ibatis.javassist.compiler.TypeChecker], java.lang.String)}
; {var3230=org.apache.ibatis.javassist.compiler.TypeChecker, var1558=r1, var1541=r0, var360=null_type, var1465=i4, var2823=i5, var3774=c6, var1524=i7, var376=$i8, var3025=$i9, var848=org.apache.ibatis.javassist.compiler.MemberResolver, var3520=$i0}
; {org.apache.ibatis.javassist.compiler.TypeChecker=var3230, r1=var1558, r0=var1541, null_type=var360, i4=var1465, i5=var2823, c6=var3774, i7=var1524, $i8=var376, $i9=var3025, org.apache.ibatis.javassist.compiler.MemberResolver=var848, $i0=var3520}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.TypeChecker;	r0 := @parameter0: java.lang.String;	i4 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	if i4 >= 0 goto i5 = i4 + 1;	i5 = i4 + 1;	c6 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i5);	i7 = 0;	$i8 = (int) c6;	if $i8 != 91 goto r1.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i7;	r1.<org.apache.ibatis.javassist.compiler.TypeChecker: int arrayDim> = i7;	$i9 = (int) c6;	if $i9 != 76 goto $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6);	$i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6);	r1.<org.apache.ibatis.javassist.compiler.TypeChecker: int exprType> = $i0;	r1.<org.apache.ibatis.javassist.compiler.TypeChecker: java.lang.String className> = null;	return
;block_num 6