(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/1183289509 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1425 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1425 null-String)))
(declare-const var3805 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3805 null-String)))
(assert true)
;(assert (append/1183289509 var1425 34)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34) 

(declare-const var1425!1 String)
(declare-const var2483 Int)
(define-const var3523 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2058 Int (length/-134980193 var3805)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34) 
(assert (>= var3523 var2058)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/1183289509 var1425!1 34)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34) 

(declare-const var1425!2 String)
(declare-const var2483!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), length/-134980193=([java.lang.String], int)}
; {var1425=r0, var3805=r1, var3601=null_type, var2483=34, var3523=i2, var2058=$i0}
; {r0=var1425, r1=var3805, null_type=var3601, 34=var2483, i2=var3523, $i0=var2058}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.StringBuffer;	r1 := @parameter1: java.lang.String;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34);	i2 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 >= $i0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34);	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34);	return
;block_num 3