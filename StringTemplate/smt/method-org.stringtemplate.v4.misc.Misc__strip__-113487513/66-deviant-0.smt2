(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3076 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3076 null-String)))
(declare-const var3340 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3340 null-Int)))
(assert true)
(define-const var646 Int (length/-134980193 var3076)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2951 Int (- var646 var3340)) ; Statement: $i2 = $i1 - i0 
(assert (not (and true (and (>= var3340 0) (>= (str.len var3076) var2951) (>= var2951 var3340)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3076=r0, var3253=null_type, var3340=i0, var646=$i1, var2951=$i2, var1324=$r1}
; {r0=var3076, null_type=var3253, i0=var3340, $i1=var646, $i2=var2951, $r1=var1324}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - i0;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2);	return $r1
;block_num 1