(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2968 0)
(declare-sort var3473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-const null-var2968 var2968)
(declare-const null-String String)
(declare-const var459 var2968) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName 
(assert (not (= var459 null-var2968)))
(declare-const var3294 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3294 null-String)))
(assert true)
(define-const var3676 (Array Int String) (split/-636890950 var3294 ",")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3294 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var333 String (String_join/-1520935655 (cast-from-String-to-String "\u005c,") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var3676))) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("\\,", $r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[])}
; {var2968=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName, var459=r3, var3294=r0, var3473=null_type, var3676=$r1, var333=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName=var2968, r3=var459, r0=var3294, null_type=var3473, $r1=var3676, $r2=var333}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.GenerateKey$DistinguishedName;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	$r2 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>("\\,", $r1);	return $r2
;block_num 1