(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1345 0)
(declare-sort var3345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var3345_getType/720030322 ((Array Int Int) Int) var3345)
(declare-const null-String String)
(declare-const var3455 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3455 null-String)))
(assert true)
(define-const var3079 (Array Int Int) (toCharArray/415275702 var3455)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2308 var3345 (var3345_getType/720030322 var3079 0)) ; Statement: $r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(char[],int)>($r1, 0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var3345_getType/720030322=([char[], int], jdk.internal.org.objectweb.asm.Type)}
; {var3455=r0, var1345=null_type, var3079=$r1, var3345=jdk.internal.org.objectweb.asm.Type, var2308=$r2}
; {r0=var3455, null_type=var1345, $r1=var3079, jdk.internal.org.objectweb.asm.Type=var3345, $r2=var2308}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r2 = staticinvoke <jdk.internal.org.objectweb.asm.Type: jdk.internal.org.objectweb.asm.Type getType(char[],int)>($r1, 0);	return $r2
;block_num 1