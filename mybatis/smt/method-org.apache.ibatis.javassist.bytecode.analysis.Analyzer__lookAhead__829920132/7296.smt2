(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var108 0)
(declare-sort var3436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasNext/1096066462 (var3436) Bool)
(declare-fun lookAhead/1309382370 (var3436) Int)
(declare-const null-var108 var108)
(declare-const null-var3436 var3436)
(declare-const null-Int Int)
(declare-const var906 var108) ; Statement: r7 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer 
(assert (not (= var906 null-var108)))
(declare-const var3394 var3436) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var3394 null-var3436)))
(declare-const var3156 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3156 null-Int)))
(assert true)
(define-const var3088 Bool (hasNext/1096066462 var3394)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int lookAhead()>() 
(assert (not (= (ite var3088 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var860 Int (lookAhead/1309382370 var3394)) ; Statement: $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int lookAhead()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {hasNext/1096066462=([org.apache.ibatis.javassist.bytecode.CodeIterator], boolean), lookAhead/1309382370=([org.apache.ibatis.javassist.bytecode.CodeIterator], int)}
; {var108=org.apache.ibatis.javassist.bytecode.analysis.Analyzer, var906=r7, var3436=org.apache.ibatis.javassist.bytecode.CodeIterator, var3394=r0, var3156=i1, var3088=$z0, var860=$i0}
; {org.apache.ibatis.javassist.bytecode.analysis.Analyzer=var108, r7=var906, org.apache.ibatis.javassist.bytecode.CodeIterator=var3436, r0=var3394, i1=var3156, $z0=var3088, $i0=var860}
;seq 
;cnt {}
;stmts r7 := @this: org.apache.ibatis.javassist.bytecode.analysis.Analyzer;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.CodeIterator;	i1 := @parameter1: int;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: boolean hasNext()>();	if $z0 != 0 goto $i0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int lookAhead()>();	$i0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.CodeIterator: int lookAhead()>();	return $i0
;block_num 2