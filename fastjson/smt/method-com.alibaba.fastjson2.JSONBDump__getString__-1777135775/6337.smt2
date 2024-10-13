(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2720 0)
(declare-sort var36 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbolTable/302871663 (var2720) var36)
(declare-fun getName/2055995811 (var36 Int) String)
(declare-const null-var2720 var2720)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var151 var2720) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONBDump 
(assert (not (= var151 null-var2720)))
(declare-const var2855 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2855 null-Int)))
 ; Statement: if i0 >= 0 goto $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols> 
(assert (not (>= var2855 0))) ; Negate: Cond: i0 >= 0  
(define-const var2666 var36 (symbolTable/302871663 var151)) ; Statement: $r9 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.SymbolTable symbolTable> 
(define-const var1581 Int (- var2855)) ; Statement: $i1 = neg i0 
(assert true)
(define-const var1505 String (getName/2055995811 var2666 var1581)) ; Statement: r10 = virtualinvoke $r9.<com.alibaba.fastjson2.SymbolTable: java.lang.String getName(int)>($i1) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r10 != null goto return r10 
(assert (not (= var1505 null-String))) ; Cond: r10 != null 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {symbolTable/302871663=([com.alibaba.fastjson2.JSONBDump], com.alibaba.fastjson2.SymbolTable), getName/2055995811=([com.alibaba.fastjson2.SymbolTable, int], java.lang.String)}
; {var2720=com.alibaba.fastjson2.JSONBDump, var151=r0, var2855=i0, var36=com.alibaba.fastjson2.SymbolTable, var2666=$r9, var1581=$i1, var1505=r10, var1709=null_type}
; {com.alibaba.fastjson2.JSONBDump=var2720, r0=var151, i0=var2855, com.alibaba.fastjson2.SymbolTable=var36, $r9=var2666, $i1=var1581, r10=var1505, null_type=var1709}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.JSONBDump;	i0 := @parameter0: int;	if i0 >= 0 goto $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols>;	$r9 = r0.<com.alibaba.fastjson2.JSONBDump: com.alibaba.fastjson2.SymbolTable symbolTable>;	$i1 = neg i0;	r10 = virtualinvoke $r9.<com.alibaba.fastjson2.SymbolTable: java.lang.String getName(int)>($i1);	goto [?= (branch)];	if r10 != null goto return r10;	return r10
;block_num 4