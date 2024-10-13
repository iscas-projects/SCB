(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var3187 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3187 null-String)))
(assert true)
(define-const var1393 Bool (endsWith/985337093 var3187 "\r\n")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r") 
(assert (not (= (ite var1393 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3260 Int (length/-134980193 var3187)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var751 Int (- var3260 2)) ; Statement: $i3 = $i2 - 2 
(assert (not (and true (and (>= 0 0) (>= (str.len var3187) var751) (>= var751 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3187=r0, var301=null_type, var1393=$z0, var3260=$i2, var751=$i3, var1671=$r2}
; {r0=var3187, null_type=var301, $z0=var1393, $i2=var3260, $i3=var751, $r2=var1671}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r");	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = $i2 - 2;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i3);	return $r2
;block_num 2