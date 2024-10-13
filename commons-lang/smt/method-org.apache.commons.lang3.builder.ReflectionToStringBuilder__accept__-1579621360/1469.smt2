(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2132 0)
(declare-sort var200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var200) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2132 var2132)
(declare-const null-var200 var200)
(declare-const var3180 var2132) ; Statement: r2 := @this: org.apache.commons.lang3.builder.ReflectionToStringBuilder 
(assert (not (= var3180 null-var2132)))
(declare-const var395 var200) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var395 null-var200)))
(assert true)
(define-const var3793 String (getName/1618348824 var395)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var1322 Int (indexOf/-1037706067 var3793 36)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(36) 
(define-const var3926 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i0 == $i6 goto $i1 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>() 
(assert (not (= var1322 var3926))) ; Negate: Cond: $i0 == $i6  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2132=org.apache.commons.lang3.builder.ReflectionToStringBuilder, var3180=r2, var200=java.lang.reflect.Field, var395=r0, var3793=$r1, var1322=$i0, var3926=$i6}
; {org.apache.commons.lang3.builder.ReflectionToStringBuilder=var2132, r2=var3180, java.lang.reflect.Field=var200, r0=var395, $r1=var3793, $i0=var1322, $i6=var3926}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: org.apache.commons.lang3.builder.ReflectionToStringBuilder;	r0 := @parameter0: java.lang.reflect.Field;	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(36);	$i6 = (int) -1;	if $i0 == $i6 goto $i1 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>();	return 0
;block_num 2