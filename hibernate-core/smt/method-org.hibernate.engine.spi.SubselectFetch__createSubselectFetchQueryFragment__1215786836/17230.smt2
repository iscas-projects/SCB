(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var617 0)
(declare-sort var1395 0)
(declare-sort var2758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFilteredSQL/-73225907 (var617) String)
(declare-fun var1395_getFromIndex/597365647 (String) Int)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var2758_isTraceEnabled/-699489552 (var2758) Bool)
(declare-const null-var617 var617)
(declare-const var1395-LOG var2758)
(declare-const var3742 var617) ; Statement: r0 := @parameter0: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var3742 null-var617)))
(assert true)
(define-const var882 String (getFilteredSQL/-73225907 var3742)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.engine.spi.QueryParameters: java.lang.String getFilteredSQL()>() 
(define-const var1508 Int (var1395_getFromIndex/597365647 var882)) ; Statement: i0 = staticinvoke <org.hibernate.engine.spi.SubselectFetch: int getFromIndex(java.lang.String)>(r1) 
(assert true)
(define-const var3114 Int (lastIndexOf/-618837785 var882 "order by")) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("order by") 
 ; Statement: if i1 <= 0 goto $r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert (<= var3114 0)) ; Cond: i1 <= 0 
(assert (and true (and (>= var1508 0) (>= (str.len var882) var1508))))
(define-const var1440 String (substring/850833817 var882 var1508)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert true) ; Non Conditional
(define-const var207 String var1440) ; Statement: r2 = $r5 
(define-const var553 var2758 var1395-LOG) ; Statement: $r3 = <org.hibernate.engine.spi.SubselectFetch: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var1660 Bool (var2758_isTraceEnabled/-699489552 var553)) ; Statement: $z0 = interfaceinvoke $r3.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>() 
 ; Statement: if $z0 == 0 goto return r2 
(assert (= (ite var1660 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getFilteredSQL/-73225907=([org.hibernate.engine.spi.QueryParameters], java.lang.String), var1395_getFromIndex/597365647=([java.lang.String], int), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), var2758_isTraceEnabled/-699489552=([org.hibernate.internal.CoreMessageLogger], boolean)}
; {var617=org.hibernate.engine.spi.QueryParameters, var3742=r0, var882=r1, var1395=org.hibernate.engine.spi.SubselectFetch, var1508=i0, var3114=i1, var1440=$r5, var207=r2, var2758=org.hibernate.internal.CoreMessageLogger, var553=$r3, var1660=$z0}
; {org.hibernate.engine.spi.QueryParameters=var617, r0=var3742, r1=var882, org.hibernate.engine.spi.SubselectFetch=var1395, i0=var1508, i1=var3114, $r5=var1440, r2=var207, org.hibernate.internal.CoreMessageLogger=var2758, $r3=var553, $z0=var1660}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: org.hibernate.engine.spi.QueryParameters;	r1 = virtualinvoke r0.<org.hibernate.engine.spi.QueryParameters: java.lang.String getFilteredSQL()>();	i0 = staticinvoke <org.hibernate.engine.spi.SubselectFetch: int getFromIndex(java.lang.String)>(r1);	i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("order by");	if i1 <= 0 goto $r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0);	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0);	r2 = $r5;	$r3 = <org.hibernate.engine.spi.SubselectFetch: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r3.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>();	if $z0 == 0 goto return r2;	return r2
;block_num 4