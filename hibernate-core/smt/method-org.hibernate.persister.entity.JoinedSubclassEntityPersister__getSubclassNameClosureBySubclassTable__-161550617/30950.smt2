(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTableSpan/749307555 (var3164) Int)
(declare-fun subclassNamesBySubclassTable/1437194565 (var3164) (Array Int (Array Int String)))
(declare-fun getLength-Arr-String-2 ((Array Int (Array Int String))) Int)
(declare-const null-var3164 var3164)
(declare-const null-Int Int)
(declare-const var633 var3164) ; Statement: r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var633 null-var3164)))
(declare-const var640 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var640 null-Int)))
(assert true)
(define-const var1519 Int (getTableSpan/749307555 var633)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: int getTableSpan()>() 
(define-const var3445 Int (- var640 var1519)) ; Statement: i2 = i0 - $i1 
(define-const var904 (Array Int (Array Int String)) (subclassNamesBySubclassTable/1437194565 var633)) ; Statement: $r1 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable> 
(define-const var3479 Int (getLength-Arr-String-2 var904)) ; Statement: $i3 = lengthof $r1 
 ; Statement: if i2 < $i3 goto $r2 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable> 
(assert (< var3445 var3479)) ; Cond: i2 < $i3 
(define-const var3968 (Array Int (Array Int String)) (subclassNamesBySubclassTable/1437194565 var633)) ; Statement: $r2 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable> 
(define-const var2135 (Array Int String) (select var3968 var3445)) ; Statement: $r3 = $r2[i2] 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getTableSpan/749307555=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], int), subclassNamesBySubclassTable/1437194565=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], java.lang.String[][]), getLength-Arr-String-2=([java.lang.String[][]], int)}
; {var3164=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var633=r0, var640=i0, var1519=$i1, var3445=i2, var904=$r1, var3479=$i3, var3968=$r2, var2135=$r3}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var3164, r0=var633, i0=var640, $i1=var1519, i2=var3445, $r1=var904, $i3=var3479, $r2=var3968, $r3=var2135}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: int getTableSpan()>();	i2 = i0 - $i1;	$r1 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable>;	$i3 = lengthof $r1;	if i2 < $i3 goto $r2 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable>;	$r2 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable>;	$r3 = $r2[i2];	return $r3
;block_num 2