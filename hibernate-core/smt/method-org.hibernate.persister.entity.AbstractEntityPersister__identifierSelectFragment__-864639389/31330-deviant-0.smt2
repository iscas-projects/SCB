(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1822 0)
(declare-sort var980 0)
(declare-sort var2524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2524-init () var2524)
(declare-fun <init>/1475962515 (var2524) void)
(declare-fun setSuffix/1861025321 (var2524 String) var2524)
(declare-fun getIdentifierColumnNames/-1043261065 (var1822) (Array Int String))
(declare-fun getIdentifierAliases/467718795 (var1822) (Array Int String))
(declare-fun addColumns/-614458548 (var2524 String (Array Int String) (Array Int String)) var2524)
(declare-fun toFragmentString/-232922822 (var2524) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1822 var1822)
(declare-const null-String String)
(declare-const var2292 var1822) ; Statement: r3 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2292 null-var1822)))
(declare-const var3768 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3768 null-String)))
(declare-const var2011 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2011 null-String)))
(define-const var3901 var2524 var2524-init) ; Statement: $r0 = new org.hibernate.sql.SelectFragment 
(assert true)
;(assert (<init>/1475962515 var3901)) ; Statement: specialinvoke $r0.<org.hibernate.sql.SelectFragment: void <init>()>() 

(declare-const var3901!1 var2524)
(assert true)
(define-const var2957 var2524 (setSuffix/1861025321 var3901!1 var2011)) ; Statement: $r6 = virtualinvoke $r0.<org.hibernate.sql.SelectFragment: org.hibernate.sql.SelectFragment setSuffix(java.lang.String)>(r1) 
(assert true)
(define-const var3939 (Array Int String) (getIdentifierColumnNames/-1043261065 var2292)) ; Statement: $r5 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierColumnNames()>() 
(assert true)
(define-const var2631 (Array Int String) (getIdentifierAliases/467718795 var2292)) ; Statement: $r4 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierAliases()>() 
(assert true)
(define-const var1384 var2524 (addColumns/-614458548 var2957 var3768 var3939 var2631)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.sql.SelectFragment: org.hibernate.sql.SelectFragment addColumns(java.lang.String,java.lang.String[],java.lang.String[])>(r2, $r5, $r4) 
(assert true)
(define-const var2383 String (toFragmentString/-232922822 var1384)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>() 
(assert (not (and true (and (>= 2 0) (>= (str.len var2383) 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2524-init=([], org.hibernate.sql.SelectFragment), <init>/1475962515=([org.hibernate.sql.SelectFragment], void), setSuffix/1861025321=([org.hibernate.sql.SelectFragment, java.lang.String], org.hibernate.sql.SelectFragment), getIdentifierColumnNames/-1043261065=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String[]), getIdentifierAliases/467718795=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String[]), addColumns/-614458548=([org.hibernate.sql.SelectFragment, java.lang.String, java.lang.String[], java.lang.String[]], org.hibernate.sql.SelectFragment), toFragmentString/-232922822=([org.hibernate.sql.SelectFragment], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1822=org.hibernate.persister.entity.AbstractEntityPersister, var2292=r3, var3768=r2, var980=null_type, var2011=r1, var2524=org.hibernate.sql.SelectFragment, var3901=$r0, var2957=$r6, var3939=$r5, var2631=$r4, var1384=$r7, var2383=$r8, var3458=$r9}
; {org.hibernate.persister.entity.AbstractEntityPersister=var1822, r3=var2292, r2=var3768, null_type=var980, r1=var2011, org.hibernate.sql.SelectFragment=var2524, $r0=var3901, $r6=var2957, $r5=var3939, $r4=var2631, $r7=var1384, $r8=var2383, $r9=var3458}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r2 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r0 = new org.hibernate.sql.SelectFragment;	specialinvoke $r0.<org.hibernate.sql.SelectFragment: void <init>()>();	$r6 = virtualinvoke $r0.<org.hibernate.sql.SelectFragment: org.hibernate.sql.SelectFragment setSuffix(java.lang.String)>(r1);	$r5 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierColumnNames()>();	$r4 = virtualinvoke r3.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String[] getIdentifierAliases()>();	$r7 = virtualinvoke $r6.<org.hibernate.sql.SelectFragment: org.hibernate.sql.SelectFragment addColumns(java.lang.String,java.lang.String[],java.lang.String[])>(r2, $r5, $r4);	$r8 = virtualinvoke $r7.<org.hibernate.sql.SelectFragment: java.lang.String toFragmentString()>();	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String substring(int)>(2);	return $r9
;block_num 1