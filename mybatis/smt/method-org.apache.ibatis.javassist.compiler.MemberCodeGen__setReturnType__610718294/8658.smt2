(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1413 0)
(declare-sort var1212 0)
(declare-sort var2956 0)
(declare-sort var1098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun arrayDim/-21816708 (var2956) Int)
(declare-fun cast-from-var1413-to-var2956 (var1413) var2956)
(declare-fun var1098_descToType/-1878891029 (Int) Int)
(declare-fun exprType/-21816708 (var2956) Int)
(declare-fun className/-21816708 (var2956) String)
(declare-const null-var1413 var1413)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1347 var1413) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen 
(assert (not (= var1347 null-var1413)))
(declare-const var1441 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1441 null-String)))
(declare-const var1447 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1447 null-Bool)))
(declare-const var2772 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var2772 null-Bool)))
(assert true)
(define-const var3762 Int (indexOf/-1037706067 var1441 41)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
 ; Statement: if i4 >= 0 goto i5 = i4 + 1 
(assert (>= var3762 0)) ; Cond: i4 >= 0 
(define-const var1001 Int (+ var3762 1)) ; Statement: i5 = i4 + 1 
(assert (and true (and (> (str.len var1441) var1001) (<= 0 var1001))))
(define-const var3740 Int (charAt/698050440 var1441 var1001)) ; Statement: c6 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i5) 
(define-const var720 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var3788 Int (cast-from-Int-to-Int var3740)) ; Statement: $i9 = (int) c6 
 ; Statement: if $i9 != 91 goto r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i7 
(assert (not (= var3788 91))) ; Cond: $i9 != 91 
(declare-const var1347!1 var1413)
(assert (not (= var1347!1 null-var1413)))
(assert (= (arrayDim/-21816708 (cast-from-var1413-to-var2956 var1347!1)) var720)) ; Statement: r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i7 
(define-const var796 Int (cast-from-Int-to-Int var3740)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 76 goto $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6) 
(assert (not (= var796 76))) ; Cond: $i10 != 76 
(define-const var2619 Int (var1098_descToType/-1878891029 var3740)) ; Statement: $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6) 
(declare-const var1347!2 var1413)
(assert (not (= var1347!2 null-var1413)))
(assert (= (exprType/-21816708 (cast-from-var1413-to-var2956 var1347!2)) var2619)) ; Statement: r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int exprType> = $i0 
(declare-const var1347!3 var1413)
(assert (not (= var1347!3 null-var1413)))
(assert (= (className/-21816708 (cast-from-var1413-to-var2956 var1347!3)) null-String)) ; Statement: r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = null 
(assert true) ; Non Conditional
(define-const var2019 Int (exprType/-21816708 (cast-from-var1413-to-var2956 var1347!3))) ; Statement: $i3 = r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int exprType> 
 ; Statement: if z0 == 0 goto return 
(assert (= (ite var1447 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), arrayDim/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), cast-from-var1413-to-var2956=([org.apache.ibatis.javassist.compiler.MemberCodeGen], org.apache.ibatis.javassist.compiler.CodeGen), var1098_descToType/-1878891029=([char], int), exprType/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], int), className/-21816708=([org.apache.ibatis.javassist.compiler.CodeGen], java.lang.String)}
; {var1413=org.apache.ibatis.javassist.compiler.MemberCodeGen, var1347=r1, var1441=r0, var1212=null_type, var1447=z0, var2772=z1, var3762=i4, var1001=i5, var3740=c6, var720=i7, var3788=$i9, var2956=org.apache.ibatis.javassist.compiler.CodeGen, var796=$i10, var1098=org.apache.ibatis.javassist.compiler.MemberResolver, var2619=$i0, var2019=$i3}
; {org.apache.ibatis.javassist.compiler.MemberCodeGen=var1413, r1=var1347, r0=var1441, null_type=var1212, z0=var1447, z1=var2772, i4=var3762, i5=var1001, c6=var3740, i7=var720, $i9=var3788, org.apache.ibatis.javassist.compiler.CodeGen=var2956, $i10=var796, org.apache.ibatis.javassist.compiler.MemberResolver=var1098, $i0=var2619, $i3=var2019}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.MemberCodeGen;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	z1 := @parameter2: boolean;	i4 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	if i4 >= 0 goto i5 = i4 + 1;	i5 = i4 + 1;	c6 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i5);	i7 = 0;	$i9 = (int) c6;	if $i9 != 91 goto r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i7;	r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int arrayDim> = i7;	$i10 = (int) c6;	if $i10 != 76 goto $i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6);	$i0 = staticinvoke <org.apache.ibatis.javassist.compiler.MemberResolver: int descToType(char)>(c6);	r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int exprType> = $i0;	r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: java.lang.String className> = null;	$i3 = r1.<org.apache.ibatis.javassist.compiler.MemberCodeGen: int exprType>;	if z0 == 0 goto return;	return
;block_num 7