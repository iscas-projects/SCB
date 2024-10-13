(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var687 0)
(declare-sort var3851 0)
(declare-sort var3547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3547) void)
(declare-fun cast-from-var687-to-var3547 (var687) var3547)
(declare-fun string/-1022769211 (var687) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/-1022769211 (var687) Int)
(declare-const null-var687 var687)
(declare-const null-String String)
(declare-const var1279 var687) ; Statement: r0 := @this: org.hibernate.engine.jdbc.internal.CharacterStreamImpl 
(assert (not (= var1279 null-var687)))
(declare-const var1444 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1444 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var687-to-var3547 var1279))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1279!1 var687)
(declare-const var1279!2 var687)
(assert (not (= var1279!2 null-var687)))
(assert (= (string/-1022769211 var1279!2) var1444)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.CharacterStreamImpl: java.lang.String string> = r1 
(assert true)
(define-const var483 Int (length/-134980193 var1444)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var255 Int (cast-from-Int-to-Int var483)) ; Statement: $l1 = (long) $i0 
(declare-const var1279!3 var687)
(assert (not (= var1279!3 null-var687)))
(assert (= (length/-1022769211 var1279!3) var255)) ; Statement: r0.<org.hibernate.engine.jdbc.internal.CharacterStreamImpl: long length> = $l1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var687-to-var3547=([org.hibernate.engine.jdbc.internal.CharacterStreamImpl], java.lang.Object), string/-1022769211=([org.hibernate.engine.jdbc.internal.CharacterStreamImpl], java.lang.String), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long), length/-1022769211=([org.hibernate.engine.jdbc.internal.CharacterStreamImpl], long)}
; {var687=org.hibernate.engine.jdbc.internal.CharacterStreamImpl, var1279=r0, var1444=r1, var3851=null_type, var3547=java.lang.Object, var483=$i0, var255=$l1}
; {org.hibernate.engine.jdbc.internal.CharacterStreamImpl=var687, r0=var1279, r1=var1444, null_type=var3851, java.lang.Object=var3547, $i0=var483, $l1=var255}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.internal.CharacterStreamImpl;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.jdbc.internal.CharacterStreamImpl: java.lang.String string> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$l1 = (long) $i0;	r0.<org.hibernate.engine.jdbc.internal.CharacterStreamImpl: long length> = $l1;	return
;block_num 1