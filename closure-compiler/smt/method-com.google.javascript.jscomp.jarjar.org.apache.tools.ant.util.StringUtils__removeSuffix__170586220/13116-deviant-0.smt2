(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1706 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1706 null-String)))
(declare-const var2940 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2940 null-String)))
(assert true)
(define-const var1484 Bool (endsWith/985337093 var1706 var2940)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (not (= (ite var1484 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var488 Int (length/-134980193 var1706)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var543 Int (length/-134980193 var2940)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3300 Int (- var488 var543)) ; Statement: $i2 = $i1 - $i0 
(assert (not (and true (and (>= 0 0) (>= (str.len var1706) var3300) (>= var3300 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1706=r0, var1336=null_type, var2940=r1, var1484=$z0, var488=$i1, var543=$i0, var3300=$i2, var3709=$r2}
; {r0=var1706, null_type=var1336, r1=var2940, $z0=var1484, $i1=var488, $i0=var543, $i2=var3300, $r2=var3709}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z0 == 0 goto return r0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 - $i0;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	return $r2
;block_num 2