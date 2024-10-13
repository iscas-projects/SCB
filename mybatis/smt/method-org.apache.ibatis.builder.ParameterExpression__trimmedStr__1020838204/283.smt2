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
(assert (and true (and (> (str.len var1433) var570) (<= 0 var570))))
(define-const var2023 Int (charAt/698050440 var1433 var570)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3) 
(define-const var3303 Int (cast-from-Int-to-Int var2023)) ; Statement: $i5 = (int) $c0 
 ; Statement: if $i5 > 32 goto $i1 = i4 - 1 
(assert (> var3303 32)) ; Cond: $i5 > 32 
(define-const var2417 Int (- var770 1)) ; Statement: $i1 = i4 - 1 
(assert (and true (and (> (str.len var1433) var2417) (<= 0 var2417))))
(define-const var1223 Int (charAt/698050440 var1433 var2417)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1) 
(define-const var2330 Int (cast-from-Int-to-Int var1223)) ; Statement: $i6 = (int) $c2 
 ; Statement: if $i6 > 32 goto (branch) 
(assert (> var2330 32)) ; Cond: $i6 > 32 
 ; Statement: if i3 < i4 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4) 
(assert (< var570 var770)) ; Cond: i3 < i4 
(assert (and true (and (>= var570 0) (>= (str.len var1433) var770) (>= var770 var570))))
(define-const var2796 String (substring/-1240304868 var1433 var570 var770)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
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