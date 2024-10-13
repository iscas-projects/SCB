(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var3393 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3393 null-String)))
(assert true)
(define-const var1722 Bool (endsWith/985337093 var3393 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r1 = r0 
(assert (not (= (ite var1722 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3326 Int (length/-134980193 var3393)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2201 Int (- var3326 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var3393) var2201) (>= var2201 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3393=r0, var2697=null_type, var1722=$z0, var3326=$i0, var2201=$i1, var3794=$r1}
; {r0=var3393, null_type=var2697, $z0=var1722, $i0=var3326, $i1=var2201, $r1=var3794}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("/");	if $z0 == 0 goto $r1 = r0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	goto [?= return $r1];	return $r1
;block_num 3