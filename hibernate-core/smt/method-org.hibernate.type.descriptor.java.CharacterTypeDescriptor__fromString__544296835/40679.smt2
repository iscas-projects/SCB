(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var110 0)
(declare-sort var1639 0)
(declare-sort var3616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3616_valueOf/-1186540555 (Int) var3616)
(declare-const null-var110 var110)
(declare-const null-String String)
(declare-const var3889 var110) ; Statement: r3 := @this: org.hibernate.type.descriptor.java.CharacterTypeDescriptor 
(assert (not (= var3889 null-var110)))
(declare-const var3891 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3891 null-String)))
(assert true)
(define-const var1659 Int (length/-134980193 var3891)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (= var1659 1)) ; Cond: $i0 == 1 
(assert (and true (and (> (str.len var3891) 0) (<= 0 0))))
(define-const var276 Int (charAt/698050440 var3891 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3418 var3616 (var3616_valueOf/-1186540555 var276)) ; Statement: $r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var3616_valueOf/-1186540555=([char], java.lang.Character)}
; {var110=org.hibernate.type.descriptor.java.CharacterTypeDescriptor, var3889=r3, var3891=r0, var1639=null_type, var1659=$i0, var276=$c1, var3616=java.lang.Character, var3418=$r1}
; {org.hibernate.type.descriptor.java.CharacterTypeDescriptor=var110, r3=var3889, r0=var3891, null_type=var1639, $i0=var1659, $c1=var276, java.lang.Character=var3616, $r1=var3418}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: org.hibernate.type.descriptor.java.CharacterTypeDescriptor;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 1 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r1 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1);	return $r1
;block_num 2