(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun append/1183289509 (String Int) String)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const Int-TYPE ClassObject)
(declare-const var2610-TYPE ClassObject)
(declare-const var1601 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1601 null-String)))
(declare-const var1391 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var1391 null-ClassObject)))
(define-const var2785 ClassObject var1391) ; Statement: r10 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var1943 Bool (isPrimitive/-473230874 var2785)) ; Statement: $z0 = virtualinvoke r10.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r10.<java.lang.Class: boolean isArray()>() 
(assert (not (= (ite var1943 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3858 ClassObject Int-TYPE) ; Statement: $r2 = <java.lang.Integer: java.lang.Class TYPE> 
 ; Statement: if r10 != $r2 goto $r3 = <java.lang.Void: java.lang.Class TYPE> 
(assert (not (= var2785 var3858))) ; Cond: r10 != $r2 
(define-const var2659 ClassObject var2610-TYPE) ; Statement: $r3 = <java.lang.Void: java.lang.Class TYPE> 
 ; Statement: if r10 != $r3 goto $r4 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (not (= var2785 var2659)))) ; Negate: Cond: r10 != $r3  
(define-const var2927 Int 86) ; Statement: c2 = 86 
 ; Statement: goto [?= virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c2)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/1183289509 var1601 var2927)) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c2) 

(declare-const var1601!1 String)
(declare-const var2927!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/-473230874=([java.lang.Class], boolean), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1601=r1, var1391=r0, var2785=r10, var1943=$z0, var3858=$r2, var2610=java.lang.Void, var2659=$r3, var2927=c2}
; {r1=var1601, r0=var1391, r10=var2785, $z0=var1943, $r2=var3858, java.lang.Void=var2610, $r3=var2659, c2=var2927}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.Class;	r10 = r0;	$z0 = virtualinvoke r10.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r10.<java.lang.Class: boolean isArray()>();	$r2 = <java.lang.Integer: java.lang.Class TYPE>;	if r10 != $r2 goto $r3 = <java.lang.Void: java.lang.Class TYPE>;	$r3 = <java.lang.Void: java.lang.Class TYPE>;	if r10 != $r3 goto $r4 = <java.lang.Boolean: java.lang.Class TYPE>;	c2 = 86;	goto [?= virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c2)];	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c2);	return
;block_num 6