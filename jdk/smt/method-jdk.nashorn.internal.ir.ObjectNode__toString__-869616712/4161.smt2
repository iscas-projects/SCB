(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1962 0)
(declare-sort var1841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun elements/1730564413 (var1962) var1841)
(declare-fun var1841_isEmpty/-153543822 (var1841) Bool)
(declare-const null-var1962 var1962)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3469 var1962) ; Statement: r1 := @this: jdk.nashorn.internal.ir.ObjectNode 
(assert (not (= var3469 null-var1962)))
(declare-const var2238 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2238 null-String)))
(declare-const var3570 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var3570 null-Bool)))
(assert true)
;(assert (append/-1166366385 var2238 123)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var2238!1 String)
(assert (str.prefixof var2238 var2238!1))
(define-const var3423 var1841 (elements/1730564413 var3469)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.ObjectNode: java.util.List elements> 
(define-const var2333 Bool (var1841_isEmpty/-153543822 var3423)) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(assert (not (= (ite var2333 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/-1166366385 var2238!1 125)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2238!2 String)
(assert (str.prefixof var2238!1 var2238!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), elements/1730564413=([jdk.nashorn.internal.ir.ObjectNode], java.util.List), var1841_isEmpty/-153543822=([java.util.List], boolean)}
; {var1962=jdk.nashorn.internal.ir.ObjectNode, var3469=r1, var2238=r0, var3570=z2, var1841=java.util.List, var3423=$r2, var2333=$z0}
; {jdk.nashorn.internal.ir.ObjectNode=var1962, r1=var3469, r0=var2238, z2=var3570, java.util.List=var1841, $r2=var3423, $z0=var2333}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.ObjectNode;	r0 := @parameter0: java.lang.StringBuilder;	z2 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	$r2 = r1.<jdk.nashorn.internal.ir.ObjectNode: java.util.List elements>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 2