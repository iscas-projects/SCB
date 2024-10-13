(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-var3619-1 ((Array Int var3619)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var3619__ (Array Int var3619))
(declare-const var33 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var33 null-String)))
(declare-const var3634 (Array Int var3619)) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[] 
(assert (not (= var3634 null-__Array__Int__var3619__)))
(assert true)
;(assert (append/-1166366385 var33 60)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var33!1 String)
(assert (str.prefixof var33 var33!1))
(define-const var438 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2241 Int (getLength-Arr-var3619-1 var3634)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i2 >= $i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var438 var2241)) ; Cond: i2 >= $i0 
(assert true)
;(assert (append/-1166366385 var33!1 62)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var33!2 String)
(assert (str.prefixof var33!1 var33!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-var3619-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[]], int)}
; {var33=r0, var3619=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument, var3634=r1, var438=i2, var2241=$i0}
; {r0=var33, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument=var3619, r1=var3634, i2=var438, $i0=var2241}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeArgument[];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	i2 = 0;	$i0 = lengthof r1;	if i2 >= $i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	return
;block_num 3