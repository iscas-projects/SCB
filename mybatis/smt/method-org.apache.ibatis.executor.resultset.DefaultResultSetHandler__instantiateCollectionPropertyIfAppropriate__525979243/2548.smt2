(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var939 0)
(declare-sort var560 0)
(declare-sort var1094 0)
(declare-sort var641 0)
(declare-sort var1831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/395598068 (var560) String)
(declare-fun getValue/480890313 (var1094 String) var641)
(declare-fun objectFactory/1496644996 (var939) var1831)
(declare-fun getClass/1258963082 (var641) ClassObject)
(declare-fun var1831_isCollection/1984309913 (var1831 ClassObject) Bool)
(declare-const null-var939 var939)
(declare-const null-var560 var560)
(declare-const null-var1094 var1094)
(declare-const null-var641 var641)
(declare-const var2820 var939) ; Statement: r3 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler 
(assert (not (= var2820 null-var939)))
(declare-const var606 var560) ; Statement: r0 := @parameter0: org.apache.ibatis.mapping.ResultMapping 
(assert (not (= var606 null-var560)))
(declare-const var2154 var1094) ; Statement: r2 := @parameter1: org.apache.ibatis.reflection.MetaObject 
(assert (not (= var2154 null-var1094)))
(assert true)
(define-const var652 String (getProperty/395598068 var606)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getProperty()>() 
(assert true)
(define-const var908 var641 (getValue/480890313 var2154 var652)) ; Statement: r17 = virtualinvoke r2.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getValue(java.lang.String)>(r1) 
 ; Statement: if r17 != null goto $r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory> 
(assert (not (= var908 null-var641))) ; Cond: r17 != null 
(define-const var847 var1831 (objectFactory/1496644996 var2820)) ; Statement: $r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory> 
(assert true)
(define-const var986 ClassObject (getClass/1258963082 var908)) ; Statement: $r5 = virtualinvoke r17.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2355 Bool (var1831_isCollection/1984309913 var847 var986)) ; Statement: $z0 = interfaceinvoke $r4.<org.apache.ibatis.reflection.factory.ObjectFactory: boolean isCollection(java.lang.Class)>($r5) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var2355 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/395598068=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), getValue/480890313=([org.apache.ibatis.reflection.MetaObject, java.lang.String], java.lang.Object), objectFactory/1496644996=([org.apache.ibatis.executor.resultset.DefaultResultSetHandler], org.apache.ibatis.reflection.factory.ObjectFactory), getClass/1258963082=([java.lang.Object], java.lang.Class), var1831_isCollection/1984309913=([org.apache.ibatis.reflection.factory.ObjectFactory, java.lang.Class], boolean)}
; {var939=org.apache.ibatis.executor.resultset.DefaultResultSetHandler, var2820=r3, var560=org.apache.ibatis.mapping.ResultMapping, var606=r0, var1094=org.apache.ibatis.reflection.MetaObject, var2154=r2, var652=r1, var641=java.lang.Object, var908=r17, var1831=org.apache.ibatis.reflection.factory.ObjectFactory, var847=$r4, var986=$r5, var2355=$z0}
; {org.apache.ibatis.executor.resultset.DefaultResultSetHandler=var939, r3=var2820, org.apache.ibatis.mapping.ResultMapping=var560, r0=var606, org.apache.ibatis.reflection.MetaObject=var1094, r2=var2154, r1=var652, java.lang.Object=var641, r17=var908, org.apache.ibatis.reflection.factory.ObjectFactory=var1831, $r4=var847, $r5=var986, $z0=var2355}
;seq 
;cnt {}
;stmts r3 := @this: org.apache.ibatis.executor.resultset.DefaultResultSetHandler;	r0 := @parameter0: org.apache.ibatis.mapping.ResultMapping;	r2 := @parameter1: org.apache.ibatis.reflection.MetaObject;	r1 = virtualinvoke r0.<org.apache.ibatis.mapping.ResultMapping: java.lang.String getProperty()>();	r17 = virtualinvoke r2.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getValue(java.lang.String)>(r1);	if r17 != null goto $r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory>;	$r4 = r3.<org.apache.ibatis.executor.resultset.DefaultResultSetHandler: org.apache.ibatis.reflection.factory.ObjectFactory objectFactory>;	$r5 = virtualinvoke r17.<java.lang.Object: java.lang.Class getClass()>();	$z0 = interfaceinvoke $r4.<org.apache.ibatis.reflection.factory.ObjectFactory: boolean isCollection(java.lang.Class)>($r5);	if $z0 == 0 goto return null;	return r17
;block_num 3