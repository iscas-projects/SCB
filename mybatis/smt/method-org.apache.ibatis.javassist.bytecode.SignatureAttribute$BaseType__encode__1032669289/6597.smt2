(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun descriptor/-2022513446 (var2794) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var2794 var2794)
(declare-const null-String String)
(declare-const var3533 var2794) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType 
(assert (not (= var3533 null-var2794)))
(declare-const var858 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var858 null-String)))
(define-const var2191 Int (descriptor/-2022513446 var3533)) ; Statement: $c0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType: char descriptor> 
(assert true)
;(assert (append/-1166366385 var858 var2191)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var858!1 String)
(assert (str.prefixof var858 var858!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {descriptor/-2022513446=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var2794=org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType, var3533=r1, var858=r0, var2191=$c0}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType=var2794, r1=var3533, r0=var858, $c0=var2191}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType;	r0 := @parameter0: java.lang.StringBuilder;	$c0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$BaseType: char descriptor>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	return
;block_num 1