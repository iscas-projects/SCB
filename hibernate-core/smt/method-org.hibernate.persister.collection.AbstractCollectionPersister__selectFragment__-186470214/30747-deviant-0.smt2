(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var661 0)
(declare-sort var3866 0)
(declare-sort var1919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateSelectFragment/-296203582 (var661 String String) var1919)
(declare-fun appendElementColumns/-276673171 (var661 var1919 String) void)
(declare-fun appendIndexColumns/1458302423 (var661 var1919 String) void)
(declare-fun appendIdentifierColumns/1978232160 (var661 var1919 String) void)
(declare-fun toFragmentString/-232922822 (var1919) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var661 var661)
(declare-const null-String String)
(declare-const var2334 var661) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var2334 null-var661)))
(declare-const var1626 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1626 null-String)))
(declare-const var269 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var269 null-String)))
(assert true)
(define-const var2892 var1919 (generateSelectFragment/-296203582 var2334 var1626 var269)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.sql.SelectFragment generateSelectFragment(java.lang.String,java.lang.String)>(r1, r2) 
(assert true)
;(assert (appendElementColumns/-276673171 var2334 var2892 var1626)) ; Statement: virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: void appendElementColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1) 

(declare-const var2334!1 var661)
(declare-const var2892!1 var1919)
(declare-const var1626!1 String)
(assert true)
;(assert (appendIndexColumns/1458302423 var2334!1 var2892!1 var1626!1)) ; Statement: virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: void appendIndexColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1) 

(declare-const var2334!2 var661)
(declare-const var2892!2 var1919)
(declare-const var1626!2 String)
(assert true)
;(assert (appendIdentifierColumns/1978232160 var2334!2 var2892!2 var1626!2)) ; Statement: virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: void appendIdentifierColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1) 

(declare-const var2334!3 var661)
(declare-const var2892!3 var1919)
(declare-const var1626!3 String)
(assert true)
(define-const var919 String (toFragmentString/-232922822 var2892!3)) ; Statement: $r4 = virtualinvoke r3.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>() 
(assert (not (and true (and (>= 2 0) (>= (str.len var919) 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {generateSelectFragment/-296203582=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String, java.lang.String], org.hibernate.sql.SelectFragment), appendElementColumns/-276673171=([org.hibernate.persister.collection.AbstractCollectionPersister, org.hibernate.sql.SelectFragment, java.lang.String], void), appendIndexColumns/1458302423=([org.hibernate.persister.collection.AbstractCollectionPersister, org.hibernate.sql.SelectFragment, java.lang.String], void), appendIdentifierColumns/1978232160=([org.hibernate.persister.collection.AbstractCollectionPersister, org.hibernate.sql.SelectFragment, java.lang.String], void), toFragmentString/-232922822=([org.hibernate.sql.SelectFragment], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var661=org.hibernate.persister.collection.AbstractCollectionPersister, var2334=r0, var1626=r1, var3866=null_type, var269=r2, var1919=org.hibernate.sql.SelectFragment, var2892=r3, var919=$r4, var1994=$r5}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var661, r0=var2334, r1=var1626, null_type=var3866, r2=var269, org.hibernate.sql.SelectFragment=var1919, r3=var2892, $r4=var919, $r5=var1994}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.sql.SelectFragment generateSelectFragment(java.lang.String,java.lang.String)>(r1, r2);	virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: void appendElementColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1);	virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: void appendIndexColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1);	virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: void appendIdentifierColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1);	$r4 = virtualinvoke r3.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>();	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int)>(2);	return $r5
;block_num 1