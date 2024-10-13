(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1755 0)
(declare-sort var1055 0)
(declare-sort var596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFilteredSQL/-73225907 (var1755) String)
(declare-fun var1055_getFromIndex/597365647 (String) Int)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var596_isTraceEnabled/-699489552 (var596) Bool)
(declare-const null-var1755 var1755)
(declare-const var1055-LOG var596)
(declare-const var1866 var1755) ; Statement: r0 := @parameter0: org.hibernate.engine.spi.QueryParameters 
(assert (not (= var1866 null-var1755)))
(assert true)
(define-const var2133 String (getFilteredSQL/-73225907 var1866)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.engine.spi.QueryParameters: java.lang.String getFilteredSQL()>() 
(define-const var907 Int (var1055_getFromIndex/597365647 var2133)) ; Statement: i0 = staticinvoke <org.hibernate.engine.spi.SubselectFetch: int getFromIndex(java.lang.String)>(r1) 
(assert true)
(define-const var3558 Int (lastIndexOf/-618837785 var2133 "order by")) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("order by") 
 ; Statement: if i1 <= 0 goto $r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert (not (<= var3558 0))) ; Negate: Cond: i1 <= 0  
(assert (not (and true (and (>= var907 0) (>= (str.len var2133) var3558) (>= var3558 var907)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getFilteredSQL/-73225907=([org.hibernate.engine.spi.QueryParameters], java.lang.String), var1055_getFromIndex/597365647=([java.lang.String], int), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var596_isTraceEnabled/-699489552=([org.hibernate.internal.CoreMessageLogger], boolean)}
; {var1755=org.hibernate.engine.spi.QueryParameters, var1866=r0, var2133=r1, var1055=org.hibernate.engine.spi.SubselectFetch, var907=i0, var3558=i1, var287=$r5, var124=r2, var596=org.hibernate.internal.CoreMessageLogger, var600=$r3, var3122=$z0}
; {org.hibernate.engine.spi.QueryParameters=var1755, r0=var1866, r1=var2133, org.hibernate.engine.spi.SubselectFetch=var1055, i0=var907, i1=var3558, $r5=var287, r2=var124, org.hibernate.internal.CoreMessageLogger=var596, $r3=var600, $z0=var3122}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: org.hibernate.engine.spi.QueryParameters;	r1 = virtualinvoke r0.<org.hibernate.engine.spi.QueryParameters: java.lang.String getFilteredSQL()>();	i0 = staticinvoke <org.hibernate.engine.spi.SubselectFetch: int getFromIndex(java.lang.String)>(r1);	i1 = virtualinvoke r1.<java.lang.String: int lastIndexOf(java.lang.String)>("order by");	if i1 <= 0 goto $r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i0);	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i0, i1);	goto [?= r2 = $r5];	r2 = $r5;	$r3 = <org.hibernate.engine.spi.SubselectFetch: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r3.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>();	if $z0 == 0 goto return r2;	return r2
;block_num 4