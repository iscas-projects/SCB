(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var363 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var363 null-String)))
(assert true)
(define-const var2309 Bool (endsWith/985337093 var363 "\r\n")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r") 
(assert (= (ite var2309 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3122 Bool (endsWith/985337093 var363 "\r")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r") 
 ; Statement: if $z1 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= (ite var3122 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var3013 Bool (endsWith/985337093 var363 "\n")) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n") 
 ; Statement: if $z2 == 0 goto return r0 
(assert (not (= (ite var3013 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var1681 Int (length/-134980193 var363)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var703 Int (- var1681 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var363) var703) (>= var703 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var363=r0, var873=null_type, var2309=$z0, var3122=$z1, var3013=$z2, var1681=$i0, var703=$i1, var1032=$r1}
; {r0=var363, null_type=var873, $z0=var2309, $z1=var3122, $z2=var3013, $i0=var1681, $i1=var703, $r1=var1032}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 3,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r");	$z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r");	if $z1 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$z2 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n");	if $z2 == 0 goto return r0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	return $r1
;block_num 4