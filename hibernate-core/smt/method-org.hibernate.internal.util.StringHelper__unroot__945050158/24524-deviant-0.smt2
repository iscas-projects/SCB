(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var2453 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2453 null-String)))
(assert true)
(define-const var2533 Int (indexOf/-1037706067 var2453 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i2 = i0 + 1 
(assert (>= var2533 0)) ; Cond: i0 >= 0 
(define-const var2829 Int (+ var2533 1)) ; Statement: $i2 = i0 + 1 
(assert true)
(define-const var2162 Int (length/-134980193 var2453)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var2829 0) (>= (str.len var2453) var2162) (>= var2162 var2829)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2453=r0, var3320=null_type, var2533=i0, var2829=$i2, var2162=$i1, var1133=$r1}
; {r0=var2453, null_type=var3320, i0=var2533, $i2=var2829, $i1=var2162, $r1=var1133}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 >= 0 goto $i2 = i0 + 1;	$i2 = i0 + 1;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i2, $i1);	return $r1
;block_num 3