(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var3972 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3972 null-String)))
(assert true)
(define-const var996 Bool (endsWith/985337093 var3972 "\r\n")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n") 
(assert (not (= (ite var996 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1630 Int (length/-134980193 var3972)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var79 Int (- var1630 2)) ; Statement: $i3 = $i2 - 2 
(assert (and true (and (>= 0 0) (>= (str.len var3972) var79) (>= var79 0))))
(define-const var3972!1 String (substring/-1240304868 var3972 0 var79)) ; Statement: r0 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i3) 
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3972=r0, var748=null_type, var996=$z0, var1630=$i2, var79=$i3}
; {r0=var3972, null_type=var748, $z0=var996, $i2=var1630, $i3=var79}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\r\n");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("\n");	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = $i2 - 2;	r0 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i3);	goto [?= return r0];	return r0
;block_num 3