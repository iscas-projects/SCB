(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var37 0)
(declare-sort var373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var373_indexOfSeparator/-1650853111 (String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var532 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var532 null-String)))
(define-const var3439 Int (var373_indexOfSeparator/-1650853111 var532)) ; Statement: i0 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter: int indexOfSeparator(java.lang.String)>(r0) 
 ; Statement: if i0 > 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (> var3439 0)) ; Cond: i0 > 0 
(assert (and true (and (>= 0 0) (>= (str.len var532) var3439) (>= var3439 0))))
(define-const var3177 String (substring/-1240304868 var532 0 var3439)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var373_indexOfSeparator/-1650853111=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var532=r0, var37=null_type, var373=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter, var3439=i0, var3177=$r1}
; {r0=var532, null_type=var37, com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter=var373, i0=var3439, $r1=var3177}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = staticinvoke <com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenameInverter: int indexOfSeparator(java.lang.String)>(r0);	if i0 > 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r1
;block_num 3