(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2929 0)
(declare-sort var2205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun head/1092084337 (var2929) var2205)
(declare-fun tail/-165709463 (var2929) var2929)
(declare-const null-String String)
(declare-const null-var2929 var2929)
(declare-const null-Int Int)
(declare-const var3435 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3435 null-String)))
(declare-const var139 var2929) ; Statement: r5 := @parameter1: org.apache.ibatis.javassist.compiler.ast.ASTList 
(assert (not (= var139 null-var2929)))
(declare-const var572 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var572 null-Int)))
(assert true) ; Non Conditional
(assert true)
(define-const var3284 var2205 (head/1092084337 var139)) ; Statement: $r1 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTree head()>() 
(define-const var3928 Bool false) ; Statement: $z0 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.Symbol 
 ; Statement: if $z0 == 0 goto $z1 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.ASTList 
(assert (= (ite var3928 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1728 Bool false) ; Statement: $z1 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.ASTList 
 ; Statement: if $z1 == 0 goto $r6 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTList tail()>() 
(assert (= (ite var1728 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1934 var2929 (tail/-165709463 var139)) ; Statement: $r6 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTList tail()>() 
(define-const var139!1 var2929 var1934) ; Statement: r5 = $r6 
 ; Statement: if $r6 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(assert (not (not (= var1934 null-var2929)))) ; Negate: Cond: $r6 != null  
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {head/1092084337=([org.apache.ibatis.javassist.compiler.ast.ASTList], org.apache.ibatis.javassist.compiler.ast.ASTree), tail/-165709463=([org.apache.ibatis.javassist.compiler.ast.ASTList], org.apache.ibatis.javassist.compiler.ast.ASTList)}
; {var3435=r0, var2929=org.apache.ibatis.javassist.compiler.ast.ASTList, var139=r5, var572=c0, var2205=org.apache.ibatis.javassist.compiler.ast.ASTree, var3284=$r1, var3928=$z0, var1728=$z1, var1934=$r6}
; {r0=var3435, org.apache.ibatis.javassist.compiler.ast.ASTList=var2929, r5=var139, c0=var572, org.apache.ibatis.javassist.compiler.ast.ASTree=var2205, $r1=var3284, $z0=var3928, $z1=var1728, $r6=var1934}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r5 := @parameter1: org.apache.ibatis.javassist.compiler.ast.ASTList;	c0 := @parameter2: char;	$r1 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTree head()>();	$z0 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.Symbol;	if $z0 == 0 goto $z1 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.ASTList;	$z1 = $r1 instanceof org.apache.ibatis.javassist.compiler.ast.ASTList;	if $z1 == 0 goto $r6 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTList tail()>();	$r6 = virtualinvoke r5.<org.apache.ibatis.javassist.compiler.ast.ASTList: org.apache.ibatis.javassist.compiler.ast.ASTList tail()>();	r5 = $r6;	if $r6 != null goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	goto [?= return];	return
;block_num 6