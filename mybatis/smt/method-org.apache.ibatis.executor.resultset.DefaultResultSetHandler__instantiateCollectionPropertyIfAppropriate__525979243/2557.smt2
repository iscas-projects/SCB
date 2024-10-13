(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3366 0)
(declare-sort var165 0)
(declare-sort var1767 0)
(declare-sort var1177 0)
(declare-sort var3072 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/395598068 (var165) String)
(declare-fun getValue/480890313 (var1767 String) var1177)
(declare-fun objectFactory/1496644996 (var3366) var3072)
(declare-fun getClass/1258963082 (var1177) ClassObject)
(declare-fun var3072_isCollection/1984309913 (var3072 ClassObject) Bool)
(declare-const null-var3366 var3366)
(declare-const null-var165 var165)
(declare-const null-var1767 var1767)
(declare-const null-var1177 var1177)
(declare-const var1661 var3366) ; Statement: r3 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler 
(assert (not (= var1661 null-var3366)))
(declare-const var1024 var165) ; Statement: r0 := @parameter0: org.apache.ibatis.mapping.ResultMapping 
(assert (not (= var1024 null-var165)))
(declare-const var630 var1767) ; Statement: r2 := @parameter1: org.apache.ibatis.reflection.MetaObject 
(assert (not (= var630 null-var1767)))
(assert true)
(define-const var2153 String (getProperty/395598068 var1024)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getProperty()>() 
(assert true)
(define-const var1917 var1177 (getValue/480890313 var630 var2153)) ; Statement: r17 = virtualinvoke r2.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getValue(java.lang.String)>(r1) 
 ; Statement: if r17 != null goto $r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory> 
(assert (not (= var1917 null-var1177))) ; Cond: r17 != null 
(define-const var3493 var3072 (objectFactory/1496644996 var1661)) ; Statement: $r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory> 
(assert true)
(define-const var2410 ClassObject (getClass/1258963082 var1917)) ; Statement: $r5 = virtualinvoke r17.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var1682 Bool (var3072_isCollection/1984309913 var3493 var2410)) ; Statement: $z0 = interfaceinvoke $r4.<org.apache.ibatis.reflection.factory.ObjectFactory: boolean isCollection(java.lang.Class)>($r5) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1682 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/395598068=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), getValue/480890313=([org.apache.ibatis.reflection.MetaObject, java.lang.String], java.lang.Object), objectFactory/1496644996=([org.apache.ibatis.executor.resultset.DefaultResultSetHandler], org.apache.ibatis.reflection.factory.ObjectFactory), getClass/1258963082=([java.lang.Object], java.lang.Class), var3072_isCollection/1984309913=([org.apache.ibatis.reflection.factory.ObjectFactory, java.lang.Class], boolean)}
; {var3366=org.apache.ibatis.executor.resultset.DefaultResultSetHandler, var1661=r3, var165=org.apache.ibatis.mapping.ResultMapping, var1024=r0, var1767=org.apache.ibatis.reflection.MetaObject, var630=r2, var2153=r1, var1177=java.lang.Object, var1917=r17, var3072=org.apache.ibatis.reflection.factory.ObjectFactory, var3493=$r4, var2410=$r5, var1682=$z0}
; {org.apache.ibatis.executor.resultset.DefaultResultSetHandler=var3366, r3=var1661, org.apache.ibatis.mapping.ResultMapping=var165, r0=var1024, org.apache.ibatis.reflection.MetaObject=var1767, r2=var630, r1=var2153, java.lang.Object=var1177, r17=var1917, org.apache.ibatis.reflection.factory.ObjectFactory=var3072, $r4=var3493, $r5=var2410, $z0=var1682}
;seq 
;cnt {}
;stmts r3 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler;	r0 := @parameter0: org.apache.ibatis.mapping.ResultMapping;	r2 := @parameter1: org.apache.ibatis.reflection.MetaObject;	r1 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getProperty()>();	r17 = virtualinvoke r2.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getValue(java.lang.String)>(r1);	if r17 != null goto $r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory>;	$r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory>;	$r5 = virtualinvoke r17.<java.lang.Object: java.lang.Class getClass()>();	$z0 = interfaceinvoke $r4.<org.apache.ibatis.reflection.factory.ObjectFactory: boolean isCollection(java.lang.Class)>($r5);	if $z0 == 0 goto return null;	return null
;block_num 3