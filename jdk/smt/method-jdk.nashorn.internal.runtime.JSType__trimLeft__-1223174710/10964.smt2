(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var1071 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1071 null-String)))
(define-const var575 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2937 Int (length/-134980193 var1071)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert (>= var575 var2937)) ; Cond: i2 >= $i0 
(assert (and true (and (>= var575 0) (>= (str.len var1071) var575))))
(define-const var2235 String (substring/850833817 var1071 var575)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1071=r0, var1988=null_type, var575=i2, var2937=$i0, var2235=$r1}
; {r0=var1071, null_type=var1988, i2=var575, $i0=var2937, $r1=var2235}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2);	return $r1
;block_num 3