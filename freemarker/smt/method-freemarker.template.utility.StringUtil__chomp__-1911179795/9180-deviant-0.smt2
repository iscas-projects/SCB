(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var818 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var818 null-String)))
(assert true)
(define-const var2285 Bool (endsWith/985337093 var818 "\r\n")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r") 
(assert (= (ite var2285 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1541 Bool (endsWith/985337093 var818 "\r")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r") 
 ; Statement: if $z1 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= (ite var1541 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var317 Int (length/-134980193 var818)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var687 Int (- var317 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var818) var687) (>= var687 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var818=r0, var3362=null_type, var2285=$z0, var1541=$z1, var317=$i0, var687=$i1, var2364=$r1}
; {r0=var818, null_type=var3362, $z0=var2285, $z1=var1541, $i0=var317, $i1=var687, $r1=var2364}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r");	$z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r");	if $z1 != 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	return $r1
;block_num 3