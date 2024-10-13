(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2503 0)
(declare-sort var2560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(declare-const null-var2503 var2503)
(declare-const null-String String)
(declare-const var2310 var2503) ; Statement: r9 := @this: freemarker.cache.TemplateNameFormat$Default020400 
(assert (not (= var2310 null-var2503)))
(declare-const var684 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var684 null-String)))
(declare-const var728 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var728 null-String)))
(define-const var568 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var865 Int (indexOf/1795197748 var684 ".." var568)) ; Statement: $i14 = virtualinvoke r10.<java.lang.String: int indexOf(java.lang.String,int)>("..", i13) 
 ; Statement: if $i14 >= 0 goto (branch) 
(assert (not (>= var865 0))) ; Negate: Cond: $i14 >= 0  
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/1795197748=([java.lang.String, java.lang.String, int], int)}
; {var2503=freemarker.cache.TemplateNameFormat$Default020400, var2310=r9, var684=r10, var2560=null_type, var728=r5, var568=i13, var865=$i14}
; {freemarker.cache.TemplateNameFormat$Default020400=var2503, r9=var2310, r10=var684, null_type=var2560, r5=var728, i13=var568, $i14=var865}
;seq <java.lang.String: int indexOf(java.lang.String,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String,int)>": 1}
;stmts r9 := @this: freemarker.cache.TemplateNameFormat$Default020400;	r10 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	i13 = 0;	$i14 = virtualinvoke r10.<java.lang.String: int indexOf(java.lang.String,int)>("..", i13);	if $i14 >= 0 goto (branch);	return r10
;block_num 3