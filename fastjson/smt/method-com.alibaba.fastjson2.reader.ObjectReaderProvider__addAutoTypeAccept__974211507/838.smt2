(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2689 0)
(declare-sort var1052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var2689 var2689)
(declare-const null-String String)
(declare-const var1449 var2689) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderProvider 
(assert (not (= var1449 null-var2689)))
(declare-const var1506 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1506 null-String)))
 ; Statement: if r0 == null goto return 
(assert (not (= var1506 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2773 Int (length/-134980193 var1506)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto return 
(assert (= var2773 0)) ; Cond: $i0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2689=com.alibaba.fastjson2.reader.ObjectReaderProvider, var1449=r1, var1506=r0, var1052=null_type, var2773=$i0}
; {com.alibaba.fastjson2.reader.ObjectReaderProvider=var2689, r1=var1449, r0=var1506, null_type=var1052, $i0=var2773}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.ObjectReaderProvider;	r0 := @parameter0: java.lang.String;	if r0 == null goto return;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto return;	return
;block_num 3