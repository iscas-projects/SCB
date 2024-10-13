(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-ClassObject ClassObject)
(declare-const var86 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var86 null-ClassObject)))
(assert true)
(define-const var1862 String (getName/-1958580599 var86)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var159 Int (lastIndexOf/-1292097097 var1862 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (>= var159 0)) ; Cond: i0 >= 0 
(assert (and true (and (>= 0 0) (>= (str.len var1862) var159) (>= var159 0))))
(define-const var3393 String (substring/-1240304868 var1862 0 var159)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var86=r0, var1862=r1, var159=i0, var3393=$r2}
; {r0=var86, r1=var1862, i0=var159, $r2=var3393}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r2
;block_num 3