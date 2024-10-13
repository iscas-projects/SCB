(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var2232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var2232_getType/720030322 ((Array Int Int) Int) var2232)
(declare-const null-String String)
(declare-const var1891 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1891 null-String)))
(assert true)
(define-const var2955 (Array Int Int) (toCharArray/415275702 var1891)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var1087 var2232 (var2232_getType/720030322 var2955 0)) ; Statement: $r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(char[],int)>($r1, 0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var2232_getType/720030322=([char[], int], jdk.internal.org.objectweb.asm.Type)}
; {var1891=r0, var1777=null_type, var2955=$r1, var2232=jdk.internal.org.objectweb.asm.Type, var1087=$r2}
; {r0=var1891, null_type=var1777, $r1=var2955, jdk.internal.org.objectweb.asm.Type=var2232, $r2=var1087}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(char[],int)>($r1, 0);	return $r2
;block_num 1