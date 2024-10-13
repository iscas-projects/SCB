(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const Int-TYPE ClassObject)
(declare-const var1203 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1203 null-String)))
(declare-const var1579 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var1579 null-ClassObject)))
(define-const var3625 ClassObject var1579) ; Statement: r10 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var1999 Bool (isPrimitive/-473230874 var3625)) ; Statement: $z0 = virtualinvoke r10.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r10.<java.lang.Class: boolean isArray()>() 
(assert (not (= (ite var1999 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2659 ClassObject Int-TYPE) ; Statement: $r2 = <java.lang.Integer: java.lang.Class TYPE> 
 ; Statement: if r10 != $r2 goto $r3 = <java.lang.Void: java.lang.Class TYPE> 
(assert (not (not (= var3625 var2659)))) ; Negate: Cond: r10 != $r2  
(define-const var254 Int 73) ; Statement: c2 = 73 
 ; Statement: goto [?= virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c2)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1183289509 var1203 var254)) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c2) 

(declare-const var1203!1 String)
(declare-const var254!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/-473230874=([java.lang.Class], boolean), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1203=r1, var1579=r0, var3625=r10, var1999=$z0, var2659=$r2, var254=c2}
; {r1=var1203, r0=var1579, r10=var3625, $z0=var1999, $r2=var2659, c2=var254}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.Class;	r10 = r0;	$z0 = virtualinvoke r10.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r10.<java.lang.Class: boolean isArray()>();	$r2 = <java.lang.Integer: java.lang.Class TYPE>;	if r10 != $r2 goto $r3 = <java.lang.Void: java.lang.Class TYPE>;	c2 = 73;	goto [?= virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c2)];	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c2);	return
;block_num 5