(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBytecodeStackType/1917177065 (var663) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getSlots/126020928 (var663) Int)
(declare-const null-String String)
(declare-const null-var663 var663)
(declare-const var871 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var871 null-String)))
(declare-const var973 var663) ; Statement: r1 := @parameter1: jdk.nashorn.internal.codegen.types.Type 
(assert (not (= var973 null-var663)))
(assert true)
(define-const var3838 Int (getBytecodeStackType/1917177065 var973)) ; Statement: $c0 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.Type: char getBytecodeStackType()>() 
(assert true)
;(assert (append/-1166366385 var871 var3838)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var871!1 String)
(assert (str.prefixof var871 var871!1))
(assert true)
(define-const var17 Int (getSlots/126020928 var973)) ; Statement: $i1 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.Type: int getSlots()>() 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {getBytecodeStackType/1917177065=([jdk.nashorn.internal.codegen.types.Type], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getSlots/126020928=([jdk.nashorn.internal.codegen.types.Type], int)}
; {var871=r0, var663=jdk.nashorn.internal.codegen.types.Type, var973=r1, var3838=$c0, var17=$i1}
; {r0=var871, jdk.nashorn.internal.codegen.types.Type=var663, r1=var973, $c0=var3838, $i1=var17}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: jdk.nashorn.internal.codegen.types.Type;	$c0 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.Type: char getBytecodeStackType()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	$i1 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.Type: int getSlots()>();	return $i1
;block_num 1