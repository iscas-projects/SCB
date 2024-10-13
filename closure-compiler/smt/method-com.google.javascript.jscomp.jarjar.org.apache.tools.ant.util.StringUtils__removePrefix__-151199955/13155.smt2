(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var435 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var435 null-String)))
(declare-const var2485 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2485 null-String)))
(assert true)
(define-const var840 Bool (startsWith/-1785782452 var435 var2485)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (not (= (ite var840 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2089 Int (length/-134980193 var2485)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (and true (and (>= var2089 0) (>= (str.len var435) var2089))))
(define-const var2150 String (substring/850833817 var435 var2089)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var435=r0, var3999=null_type, var2485=r1, var840=$z0, var2089=$i0, var2150=$r2}
; {r0=var435, null_type=var3999, r1=var2485, $z0=var840, $i0=var2089, $r2=var2150}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z0 == 0 goto return r0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	return $r2
;block_num 2