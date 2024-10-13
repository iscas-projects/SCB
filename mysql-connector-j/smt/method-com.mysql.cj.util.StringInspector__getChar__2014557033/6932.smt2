(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/963710472 (var1120) Int)
(declare-fun stopAt/963710472 (var1120) Int)
(declare-fun source/963710472 (var1120) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var1120 var1120)
(declare-const var2722 var1120) ; Statement: r0 := @this: com.mysql.cj.util.StringInspector 
(assert (not (= var2722 null-var1120)))
(define-const var123 Int (pos/963710472 var2722)) ; Statement: $i1 = r0.<com.mysql.cj.util.StringInspector: int pos> 
(define-const var2066 Int (stopAt/963710472 var2722)) ; Statement: $i0 = r0.<com.mysql.cj.util.StringInspector: int stopAt> 
 ; Statement: if $i1 < $i0 goto $r1 = r0.<com.mysql.cj.util.StringInspector: java.lang.String source> 
(assert (< var123 var2066)) ; Cond: $i1 < $i0 
(define-const var2709 String (source/963710472 var2722)) ; Statement: $r1 = r0.<com.mysql.cj.util.StringInspector: java.lang.String source> 
(define-const var1714 Int (pos/963710472 var2722)) ; Statement: $i2 = r0.<com.mysql.cj.util.StringInspector: int pos> 
(assert (and true (and (> (str.len var2709) var1714) (<= 0 var1714))))
(define-const var3938 Int (charAt/698050440 var2709 var1714)) ; Statement: $c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2) 
 ; Statement: return $c3 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/963710472=([com.mysql.cj.util.StringInspector], int), stopAt/963710472=([com.mysql.cj.util.StringInspector], int), source/963710472=([com.mysql.cj.util.StringInspector], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var1120=com.mysql.cj.util.StringInspector, var2722=r0, var123=$i1, var2066=$i0, var2709=$r1, var1714=$i2, var3938=$c3}
; {com.mysql.cj.util.StringInspector=var1120, r0=var2722, $i1=var123, $i0=var2066, $r1=var2709, $i2=var1714, $c3=var3938}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.mysql.cj.util.StringInspector;	$i1 = r0.<com.mysql.cj.util.StringInspector: int pos>;	$i0 = r0.<com.mysql.cj.util.StringInspector: int stopAt>;	if $i1 < $i0 goto $r1 = r0.<com.mysql.cj.util.StringInspector: java.lang.String source>;	$r1 = r0.<com.mysql.cj.util.StringInspector: java.lang.String source>;	$i2 = r0.<com.mysql.cj.util.StringInspector: int pos>;	$c3 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i2);	return $c3
;block_num 2