(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operatorId/-269336408 (var1686) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-var1686 var1686)
(declare-const var2070 var1686) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.ast.Expr 
(assert (not (= var2070 null-var1686)))
(define-const var1011 Int (operatorId/-269336408 var2070)) ; Statement: i0 = r0.<org.apache.ibatis.javassist.compiler.ast.Expr: int operatorId> 
 ; Statement: if i0 >= 128 goto (branch) 
(assert (not (>= var1011 128))) ; Negate: Cond: i0 >= 128  
(define-const var3118 Int (cast-from-Int-to-Int var1011)) ; Statement: $c2 = (char) i0 
(define-const var3466 String (String_valueOf/-371898945 var3118)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {operatorId/-269336408=([org.apache.ibatis.javassist.compiler.ast.Expr], int), cast-from-Int-to-Int=([int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var1686=org.apache.ibatis.javassist.compiler.ast.Expr, var2070=r0, var1011=i0, var3118=$c2, var3466=$r4}
; {org.apache.ibatis.javassist.compiler.ast.Expr=var1686, r0=var2070, i0=var1011, $c2=var3118, $r4=var3466}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.ast.Expr;	i0 = r0.<org.apache.ibatis.javassist.compiler.ast.Expr: int operatorId>;	if i0 >= 128 goto (branch);	$c2 = (char) i0;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c2);	return $r4
;block_num 2