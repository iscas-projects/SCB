(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2020 0)
(declare-sort var3006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2020 var2020)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1324 var2020) ; Statement: r1 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var1324 null-var2020)))
(declare-const var1433 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1433 null-String)))
(declare-const var570 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var570 null-Int)))
(declare-const var770 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var770 null-Int)))
(assert true) ; Non Conditional
(assert (not (and true (and (> (str.len var1433) var570) (<= 0 var570)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2020=org.apache.ibatis.builder.ParameterExpression, var1324=r1, var1433=r0, var3006=null_type, var570=i3, var770=i4, var2023=$c0, var3303=$i5, var2417=$i1, var1223=$c2, var2330=$i6, var2796=$r2}
; {org.apache.ibatis.builder.ParameterExpression=var2020, r1=var1324, r0=var1433, null_type=var3006, i3=var570, i4=var770, $c0=var2023, $i5=var3303, $i1=var2417, $c2=var1223, $i6=var2330, $r2=var2796}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: org.apache.ibatis.builder.ParameterExpression;	r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3);	$i5 = (int) $c0;	if $i5 > 32 goto $i1 = i4 - 1;	$i1 = i4 - 1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1);	$i6 = (int) $c2;	if $i6 > 32 goto (branch);	if i3 < i4 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4);	return $r2
;block_num 6