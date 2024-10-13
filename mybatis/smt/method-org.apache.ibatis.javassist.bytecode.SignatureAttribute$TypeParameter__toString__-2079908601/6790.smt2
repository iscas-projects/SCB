(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-var3608-1 ((Array Int var3608)) Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var3608__ (Array Int var3608))
(declare-const var2382 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2382 null-String)))
(declare-const var445 (Array Int var3608)) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] 
(assert (not (= var445 null-__Array__Int__var3608__)))
(assert true)
;(assert (append/-1166366385 var2382 60)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60) 
(declare-const var2382!1 String)
(assert (str.prefixof var2382 var2382!1))
(define-const var2518 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var363 Int (getLength-Arr-var3608-1 var445)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(assert (>= var2518 var363)) ; Cond: i1 >= $i0 
(assert true)
;(assert (append/-1166366385 var2382!1 62)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var2382!2 String)
(assert (str.prefixof var2382!1 var2382!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-var3608-1=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]], int)}
; {var2382=r0, var3608=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var445=r1, var2518=i1, var363=$i0}
; {r0=var2382, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var3608, r1=var445, i1=var2518, $i0=var363}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(60);	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	return
;block_num 3