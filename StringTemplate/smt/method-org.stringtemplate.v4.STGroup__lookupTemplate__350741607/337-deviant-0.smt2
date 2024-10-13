(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var1831 0)
(declare-sort var1785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun rawGetTemplate/1385612115 (var3520 String) var1785)
(declare-const null-var3520 var3520)
(declare-const null-String String)
(declare-const var3520-verbose Bool)
(declare-const var3520-NOT_FOUND_ST var1785)
(declare-const var96 var3520) ; Statement: r0 := @this: org.stringtemplate.v4.STGroup 
(assert (not (= var96 null-var3520)))
(declare-const var1592 String) ; Statement: r34 := @parameter0: java.lang.String 
(assert (not (= var1592 null-String)))
(assert (not (and true (and (> (str.len var1592) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), rawGetTemplate/1385612115=([org.stringtemplate.v4.STGroup, java.lang.String], org.stringtemplate.v4.compiler.CompiledST)}
; {var3520=org.stringtemplate.v4.STGroup, var96=r0, var1592=r34, var1831=null_type, var3203=$c0, var3367=$i1, var3078=$z0, var1785=org.stringtemplate.v4.compiler.CompiledST, var1623=$r30, var2833=r35, var1109=$r1, var1403=$z2}
; {org.stringtemplate.v4.STGroup=var3520, r0=var96, r34=var1592, null_type=var1831, $c0=var3203, $i1=var3367, $z0=var3078, org.stringtemplate.v4.compiler.CompiledST=var1785, $r30=var1623, r35=var2833, $r1=var1109, $z2=var1403}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.stringtemplate.v4.STGroup;	r34 := @parameter0: java.lang.String;	$c0 = virtualinvoke r34.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 47 goto $z0 = <org.stringtemplate.v4.STGroup: boolean verbose>;	$z0 = <org.stringtemplate.v4.STGroup: boolean verbose>;	if $z0 == 0 goto $r30 = virtualinvoke r0.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r34);	$r30 = virtualinvoke r0.<org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST rawGetTemplate(java.lang.String)>(r34);	r35 = $r30;	$r1 = <org.stringtemplate.v4.STGroup: org.stringtemplate.v4.compiler.CompiledST NOT_FOUND_ST>;	if $r30 != $r1 goto (branch);	$z2 = <org.stringtemplate.v4.STGroup: boolean verbose>;	if $z2 == 0 goto return null;	return null
;block_num 5