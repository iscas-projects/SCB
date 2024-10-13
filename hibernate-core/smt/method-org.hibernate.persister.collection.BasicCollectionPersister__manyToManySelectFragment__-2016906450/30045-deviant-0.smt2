(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2848 0)
(declare-sort var2198 0)
(declare-sort var2223 0)
(declare-sort var7 0)
(declare-sort var1956 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun generateSelectFragment/-296203582 (var1956 String String) var7)
(declare-fun cast-from-var2848-to-var1956 (var2848) var1956)
(declare-fun var2198_getKeyColumnNames/-374017113 (var2198) (Array Int String))
(declare-fun elementColumnAliases/835828228 (var1956) (Array Int String))
(declare-fun addColumns/-614458548 (var7 String (Array Int String) (Array Int String)) var7)
(declare-fun appendIndexColumns/1458302423 (var1956 var7 String) void)
(declare-fun appendIdentifierColumns/1978232160 (var1956 var7 String) void)
(declare-fun toFragmentString/-232922822 (var7) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2848 var2848)
(declare-const null-var2198 var2198)
(declare-const null-String String)
(declare-const var1228 var2848) ; Statement: r0 := @this: org.hibernate.persister.collection.BasicCollectionPersister 
(assert (not (= var1228 null-var2848)))
(declare-const var2251 var2198) ; Statement: r4 := @parameter0: org.hibernate.persister.entity.Joinable 
(assert (not (= var2251 null-var2198)))
(declare-const var1671 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1671 null-String)))
(declare-const var959 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var959 null-String)))
(declare-const var3896 String) ; Statement: r2 := @parameter3: java.lang.String 
(assert (not (= var3896 null-String)))
(assert true)
(define-const var3099 var7 (generateSelectFragment/-296203582 (cast-from-var2848-to-var1956 var1228) var959 var3896)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: org.hibernate.sql.SelectFragment generateSelectFragment(java.lang.String,java.lang.String)>(r1, r2) 
(define-const var2731 (Array Int String) (var2198_getKeyColumnNames/-374017113 var2251)) ; Statement: r5 = interfaceinvoke r4.<org.hibernate.persister.entity.Joinable: java.lang.String[] getKeyColumnNames()>() 
(define-const var96 (Array Int String) (elementColumnAliases/835828228 (cast-from-var2848-to-var1956 var1228))) ; Statement: $r7 = r0.<org.hibernate.persister.collection.BasicCollectionPersister: java.lang.String[] elementColumnAliases> 
(assert true)
;(assert (addColumns/-614458548 var3099 var1671 var2731 var96)) ; Statement: virtualinvoke r3.<org.hibernate.sql.SelectFragment: org.hibernate.sql.SelectFragment addColumns(java.lang.String,java.lang.String[],java.lang.String[])>(r6, r5, $r7) 

(declare-const var3099!1 var7)
(declare-const var1671!1 String)
(declare-const var2731!1 (Array Int String))
(declare-const var96!1 (Array Int String))
(assert true)
;(assert (appendIndexColumns/1458302423 (cast-from-var2848-to-var1956 var1228) var3099!1 var959)) ; Statement: virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: void appendIndexColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1) 

(declare-const var1228!1 var2848)
(declare-const var3099!2 var7)
(declare-const var959!1 String)
(assert true)
;(assert (appendIdentifierColumns/1978232160 (cast-from-var2848-to-var1956 var1228!1) var3099!2 var959!1)) ; Statement: virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: void appendIdentifierColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1) 

(declare-const var1228!2 var2848)
(declare-const var3099!3 var7)
(declare-const var959!2 String)
(assert true)
(define-const var979 String (toFragmentString/-232922822 var3099!3)) ; Statement: $r8 = virtualinvoke r3.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>() 
(assert (not (and true (and (>= 2 0) (>= (str.len var979) 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {generateSelectFragment/-296203582=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String, java.lang.String], org.hibernate.sql.SelectFragment), cast-from-var2848-to-var1956=([org.hibernate.persister.collection.BasicCollectionPersister], org.hibernate.persister.collection.AbstractCollectionPersister), var2198_getKeyColumnNames/-374017113=([org.hibernate.persister.entity.Joinable], java.lang.String[]), elementColumnAliases/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), addColumns/-614458548=([org.hibernate.sql.SelectFragment, java.lang.String, java.lang.String[], java.lang.String[]], org.hibernate.sql.SelectFragment), appendIndexColumns/1458302423=([org.hibernate.persister.collection.AbstractCollectionPersister, org.hibernate.sql.SelectFragment, java.lang.String], void), appendIdentifierColumns/1978232160=([org.hibernate.persister.collection.AbstractCollectionPersister, org.hibernate.sql.SelectFragment, java.lang.String], void), toFragmentString/-232922822=([org.hibernate.sql.SelectFragment], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2848=org.hibernate.persister.collection.BasicCollectionPersister, var1228=r0, var2198=org.hibernate.persister.entity.Joinable, var2251=r4, var1671=r6, var2223=null_type, var959=r1, var3896=r2, var7=org.hibernate.sql.SelectFragment, var1956=org.hibernate.persister.collection.AbstractCollectionPersister, var3099=r3, var2731=r5, var96=$r7, var979=$r8, var3329=$r9}
; {org.hibernate.persister.collection.BasicCollectionPersister=var2848, r0=var1228, org.hibernate.persister.entity.Joinable=var2198, r4=var2251, r6=var1671, null_type=var2223, r1=var959, r2=var3896, org.hibernate.sql.SelectFragment=var7, org.hibernate.persister.collection.AbstractCollectionPersister=var1956, r3=var3099, r5=var2731, $r7=var96, $r8=var979, $r9=var3329}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.hibernate.persister.collection.BasicCollectionPersister;	r4 := @parameter0: org.hibernate.persister.entity.Joinable;	r6 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	r2 := @parameter3: java.lang.String;	r3 = virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: org.hibernate.sql.SelectFragment generateSelectFragment(java.lang.String,java.lang.String)>(r1, r2);	r5 = interfaceinvoke r4.<org.hibernate.persister.entity.Joinable: java.lang.String[] getKeyColumnNames()>();	$r7 = r0.<org.hibernate.persister.collection.BasicCollectionPersister: java.lang.String[] elementColumnAliases>;	virtualinvoke r3.<org.hibernate.sql.SelectFragment: org.hibernate.sql.SelectFragment addColumns(java.lang.String,java.lang.String[],java.lang.String[])>(r6, r5, $r7);	virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: void appendIndexColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1);	virtualinvoke r0.<org.hibernate.persister.collection.BasicCollectionPersister: void appendIdentifierColumns(org.hibernate.sql.SelectFragment,java.lang.String)>(r3, r1);	$r8 = virtualinvoke r3.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>();	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(2);	return $r9
;block_num 1