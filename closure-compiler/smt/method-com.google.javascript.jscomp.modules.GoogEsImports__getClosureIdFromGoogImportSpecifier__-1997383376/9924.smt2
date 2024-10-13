(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var6 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var507 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var507 null-String)))
(define-const var2435 String "goog:") ; Statement: $r1 = "goog:" 
(assert true)
(define-const var1302 Int (length/-134980193 var2435)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(assert (and true (and (>= var1302 0) (>= (str.len var507) var1302))))
(define-const var906 String (substring/850833817 var507 var1302)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var507=r0, var6=null_type, var2435=$r1, var1302=$i0, var906=$r2}
; {r0=var507, null_type=var6, $r1=var2435, $i0=var1302, $r2=var906}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "goog:";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	return $r2
;block_num 1