(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var722 0)
(declare-sort var2142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun characterStream/-1835459067 (var609) var722)
(declare-fun var722_asString/1957893573 (var722) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2142_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var609 var609)
(declare-const null-Int Int)
(declare-const var3193 var609) ; Statement: r0 := @this: org.hibernate.engine.jdbc.ClobProxy 
(assert (not (= var3193 null-var609)))
(declare-const var117 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var117 null-Int)))
(declare-const var2409 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2409 null-Int)))
(define-const var1557 var722 (characterStream/-1835459067 var3193)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.ClobProxy: org.hibernate.engine.jdbc.CharacterStream characterStream> 
(define-const var753 String (var722_asString/1957893573 var1557)) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.CharacterStream: java.lang.String asString()>() 
(define-const var2433 Int (cast-from-Int-to-Int var117)) ; Statement: $i2 = (int) l0 
(define-const var531 Int (+ var2433 var2409)) ; Statement: $i4 = $i2 + i1 
(assert true)
(define-const var1038 Int (length/-134980193 var753)) ; Statement: $i3 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var1185 Int (var2142_min/-1112089438 var531 var1038)) ; Statement: i5 = staticinvoke <java.lang.Math: int min(int,int)>($i4, $i3) 
(define-const var3587 Int (cast-from-Int-to-Int var117)) ; Statement: $i6 = (int) l0 
(assert (and true (and (>= var3587 0) (>= (str.len var753) var1185) (>= var1185 var3587))))
(define-const var700 String (substring/-1240304868 var753 var3587 var1185)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>($i6, i5) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {characterStream/-1835459067=([org.hibernate.engine.jdbc.ClobProxy], org.hibernate.engine.jdbc.CharacterStream), var722_asString/1957893573=([org.hibernate.engine.jdbc.CharacterStream], java.lang.String), cast-from-Int-to-Int=([long], int), length/-134980193=([java.lang.String], int), var2142_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var609=org.hibernate.engine.jdbc.ClobProxy, var3193=r0, var117=l0, var2409=i1, var722=org.hibernate.engine.jdbc.CharacterStream, var1557=$r1, var753=r2, var2433=$i2, var531=$i4, var1038=$i3, var2142=java.lang.Math, var1185=i5, var3587=$i6, var700=$r3}
; {org.hibernate.engine.jdbc.ClobProxy=var609, r0=var3193, l0=var117, i1=var2409, org.hibernate.engine.jdbc.CharacterStream=var722, $r1=var1557, r2=var753, $i2=var2433, $i4=var531, $i3=var1038, java.lang.Math=var2142, i5=var1185, $i6=var3587, $r3=var700}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.ClobProxy;	l0 := @parameter0: long;	i1 := @parameter1: int;	$r1 = r0.<org.hibernate.engine.jdbc.ClobProxy: org.hibernate.engine.jdbc.CharacterStream characterStream>;	r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.CharacterStream: java.lang.String asString()>();	$i2 = (int) l0;	$i4 = $i2 + i1;	$i3 = virtualinvoke r2.<java.lang.String: int length()>();	i5 = staticinvoke <java.lang.Math: int min(int,int)>($i4, $i3);	$i6 = (int) l0;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>($i6, i5);	return $r3
;block_num 1