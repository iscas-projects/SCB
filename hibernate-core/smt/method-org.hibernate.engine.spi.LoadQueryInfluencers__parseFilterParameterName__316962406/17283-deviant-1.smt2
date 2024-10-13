(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var428 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var428 null-String)))
(assert true)
(define-const var676 Int (lastIndexOf/-1292097097 var428 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 > 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (> var676 0)) ; Cond: i0 > 0 
(assert (and true (and (>= 0 0) (>= (str.len var428) var676) (>= var676 0))))
(define-const var1257 String (substring/-1240304868 var428 0 var676)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(define-const var2438 Int (+ var676 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= var2438 0) (>= (str.len var428) var2438)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), arr-String-init=([], java.lang.String[])}
; {var428=r0, var558=null_type, var676=i0, var1257=r1, var2438=$i1, var2763=r2, var3488=$r3}
; {r0=var428, null_type=var558, i0=var676, r1=var1257, $i1=var2438, r2=var2763, $r3=var3488}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 > 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$i1 = i0 + 1;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r3 = newarray (java.lang.String)[2];	$r3[0] = r1;	$r3[1] = r2;	return $r3
;block_num 2