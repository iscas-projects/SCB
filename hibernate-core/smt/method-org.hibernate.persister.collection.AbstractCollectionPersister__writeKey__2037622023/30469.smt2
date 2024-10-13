(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2294 0)
(declare-sort var985 0)
(declare-sort var526 0)
(declare-sort var1244 0)
(declare-sort var2305 0)
(declare-sort var2152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getKeyType/-1062846308 (var2294) var2305)
(declare-fun var2305_nullSafeSet/98713820 (var2305 var985 var2152 Int var1244) void)
(declare-fun cast-from-var526-to-var2152 (var526) var2152)
(declare-fun keyColumnAliases/835828228 (var2294) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var2294 var2294)
(declare-const null-var985 var985)
(declare-const null-var526 var526)
(declare-const null-Int Int)
(declare-const null-var1244 var1244)
(declare-const var569 var2294) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var569 null-var2294)))
(declare-const var137 var985) ; Statement: r2 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var137 null-var985)))
(declare-const var3600 var526) ; Statement: r0 := @parameter1: java.io.Serializable 
(assert (not (= var3600 null-var526)))
(declare-const var2021 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2021 null-Int)))
(declare-const var3173 var1244) ; Statement: r3 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3173 null-var1244)))
 ; Statement: if r0 != null goto $r4 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getKeyType()>() 
(assert (not (= var3600 null-var526))) ; Cond: r0 != null 
(assert true)
(define-const var2399 var2305 (getKeyType/-1062846308 var569)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getKeyType()>() 
;(assert (var2305_nullSafeSet/98713820 var2399 var137 (cast-from-var526-to-var2152 var3600) var2021 var3173)) ; Statement: interfaceinvoke $r4.<org.hibernate.type.Type: void nullSafeSet(java.sql.PreparedStatement,java.lang.Object,int,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r2, r0, i0, r3) 

(declare-const var2399!1 var2305)
(declare-const var137!1 var985)
(declare-const var3600!1 var526)
(declare-const var2021!1 Int)
(declare-const var3173!1 var1244)
(define-const var1760 (Array Int String) (keyColumnAliases/835828228 var569)) ; Statement: $r5 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] keyColumnAliases> 
(define-const var1784 Int (getLength-Arr-String-1 var1760)) ; Statement: $i1 = lengthof $r5 
(define-const var1543 Int (+ var2021!1 var1784)) ; Statement: $i2 = i0 + $i1 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getKeyType/-1062846308=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.type.Type), var2305_nullSafeSet/98713820=([org.hibernate.type.Type, java.sql.PreparedStatement, java.lang.Object, int, org.hibernate.engine.spi.SharedSessionContractImplementor], void), cast-from-var526-to-var2152=([java.io.Serializable], java.lang.Object), keyColumnAliases/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2294=org.hibernate.persister.collection.AbstractCollectionPersister, var569=r1, var985=java.sql.PreparedStatement, var137=r2, var526=java.io.Serializable, var3600=r0, var2021=i0, var1244=org.hibernate.engine.spi.SharedSessionContractImplementor, var3173=r3, var2305=org.hibernate.type.Type, var2399=$r4, var2152=java.lang.Object, var1760=$r5, var1784=$i1, var1543=$i2}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var2294, r1=var569, java.sql.PreparedStatement=var985, r2=var137, java.io.Serializable=var526, r0=var3600, i0=var2021, org.hibernate.engine.spi.SharedSessionContractImplementor=var1244, r3=var3173, org.hibernate.type.Type=var2305, $r4=var2399, java.lang.Object=var2152, $r5=var1760, $i1=var1784, $i2=var1543}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.sql.PreparedStatement;	r0 := @parameter1: java.io.Serializable;	i0 := @parameter2: int;	r3 := @parameter3: org.hibernate.engine.spi.SharedSessionContractImplementor;	if r0 != null goto $r4 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getKeyType()>();	$r4 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type getKeyType()>();	interfaceinvoke $r4.<org.hibernate.type.Type: void nullSafeSet(java.sql.PreparedStatement,java.lang.Object,int,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r2, r0, i0, r3);	$r5 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] keyColumnAliases>;	$i1 = lengthof $r5;	$i2 = i0 + $i1;	return $i2
;block_num 2