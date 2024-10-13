(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3296 0)
(declare-sort var2836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var2836) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3296 var3296)
(declare-const null-var2836 var2836)
(declare-const var1516 var3296) ; Statement: r2 := @this: org.apache.commons.lang3.builder.ReflectionDiffBuilder 
(assert (not (= var1516 null-var3296)))
(declare-const var3666 var2836) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var3666 null-var2836)))
(assert true)
(define-const var2079 String (getName/1618348824 var3666)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var3815 Int (indexOf/-1037706067 var2079 36)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(36) 
(define-const var1413 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if $i0 == $i5 goto $i1 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>() 
(assert (not (= var3815 var1413))) ; Negate: Cond: $i0 == $i5  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3296=org.apache.commons.lang3.builder.ReflectionDiffBuilder, var1516=r2, var2836=java.lang.reflect.Field, var3666=r0, var2079=$r1, var3815=$i0, var1413=$i5}
; {org.apache.commons.lang3.builder.ReflectionDiffBuilder=var3296, r2=var1516, java.lang.reflect.Field=var2836, r0=var3666, $r1=var2079, $i0=var3815, $i5=var1413}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: org.apache.commons.lang3.builder.ReflectionDiffBuilder;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(36);	$i5 = (int) -1;	if $i0 == $i5 goto $i1 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>();	return 0
;block_num 2