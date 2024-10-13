(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var148 0)
(declare-sort var2225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var148 var148)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1014 var148) ; Statement: r1 := @this: org.apache.ibatis.builder.ParameterExpression 
(assert (not (= var1014 null-var148)))
(declare-const var1568 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1568 null-String)))
(declare-const var3519 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3519 null-Int)))
(declare-const var1416 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var1416 null-Int)))
(assert true) ; Non Conditional
(assert (and true (and (> (str.len var1568) var3519) (<= 0 var3519))))
(define-const var1575 Int (charAt/698050440 var1568 var3519)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3) 
(define-const var620 Int (cast-from-Int-to-Int var1575)) ; Statement: $i5 = (int) $c0 
 ; Statement: if $i5 > 32 goto $i1 = i4 - 1 
(assert (> var620 32)) ; Cond: $i5 > 32 
(define-const var1391 Int (- var1416 1)) ; Statement: $i1 = i4 - 1 
(assert (and true (and (> (str.len var1568) var1391) (<= 0 var1391))))
(define-const var514 Int (charAt/698050440 var1568 var1391)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1) 
(define-const var2851 Int (cast-from-Int-to-Int var514)) ; Statement: $i6 = (int) $c2 
 ; Statement: if $i6 > 32 goto (branch) 
(assert (> var2851 32)) ; Cond: $i6 > 32 
 ; Statement: if i3 < i4 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4) 
(assert (not (< var3519 var1416))) ; Negate: Cond: i3 < i4  
(define-const var1740 String "") ; Statement: $r2 = "" 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var148=org.apache.ibatis.builder.ParameterExpression, var1014=r1, var1568=r0, var2225=null_type, var3519=i3, var1416=i4, var1575=$c0, var620=$i5, var1391=$i1, var514=$c2, var2851=$i6, var1740=$r2}
; {org.apache.ibatis.builder.ParameterExpression=var148, r1=var1014, r0=var1568, null_type=var2225, i3=var3519, i4=var1416, $c0=var1575, $i5=var620, $i1=var1391, $c2=var514, $i6=var2851, $r2=var1740}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: org.apache.ibatis.builder.ParameterExpression;	r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i3);	$i5 = (int) $c0;	if $i5 > 32 goto $i1 = i4 - 1;	$i1 = i4 - 1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i1);	$i6 = (int) $c2;	if $i6 > 32 goto (branch);	if i3 < i4 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i3, i4);	$r2 = "";	goto [?= return $r2];	return $r2
;block_num 6