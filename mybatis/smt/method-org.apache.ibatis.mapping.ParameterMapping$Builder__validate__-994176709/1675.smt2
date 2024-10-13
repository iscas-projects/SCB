(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2074 0)
(declare-sort var1264 0)
(declare-sort var1102 0)
(declare-sort var1289 0)
(declare-sort var561 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1264!class ClassObject)
(declare-fun parameterMapping/2084547934 (var2074) var1102)
(declare-fun var1102_access$500/-2086424374 (var1102) ClassObject)
(declare-fun equals/-1650223740 (var1289 var1289) Bool)
(declare-fun cast-from-ClassObject-to-var1289 (ClassObject) var1289)
(declare-fun var1102_access$300/-132000040 (var1102) var561)
(declare-const null-var2074 var2074)
(declare-const null-var561 var561)
(declare-const var3429 var2074) ; Statement: r0 := @this: org.apache.ibatis.mapping.ParameterMapping$Builder 
(assert (not (= var3429 null-var2074)))
(define-const var943 ClassObject var1264!class) ; Statement: $r3 = class "Ljava/sql/ResultSet;" 
(define-const var2514 var1102 (parameterMapping/2084547934 var3429)) ; Statement: $r1 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var3349 ClassObject (var1102_access$500/-2086424374 var2514)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r1) 
(assert true)
(define-const var285 Bool (equals/-1650223740 (cast-from-ClassObject-to-var1289 var943) (cast-from-ClassObject-to-var1289 var3349))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(assert (= (ite var285 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2639 var1102 (parameterMapping/2084547934 var3429)) ; Statement: $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var3332 var561 (var1102_access$300/-132000040 var2639)) ; Statement: $r5 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: org.apache.ibatis.type.TypeHandler access$300(org.apache.ibatis.mapping.ParameterMapping)>($r4) 
 ; Statement: if $r5 != null goto return 
(assert (not (= var3332 null-var561))) ; Cond: $r5 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMapping/2084547934=([org.apache.ibatis.mapping.ParameterMapping$Builder], org.apache.ibatis.mapping.ParameterMapping), var1102_access$500/-2086424374=([org.apache.ibatis.mapping.ParameterMapping], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var1289=([java.lang.Class], java.lang.Object), var1102_access$300/-132000040=([org.apache.ibatis.mapping.ParameterMapping], org.apache.ibatis.type.TypeHandler)}
; {var2074=org.apache.ibatis.mapping.ParameterMapping$Builder, var3429=r0, var1264=java.sql.ResultSet, var943=$r3, var1102=org.apache.ibatis.mapping.ParameterMapping, var2514=$r1, var3349=$r2, var1289=java.lang.Object, var285=$z0, var2639=$r4, var561=org.apache.ibatis.type.TypeHandler, var3332=$r5}
; {org.apache.ibatis.mapping.ParameterMapping$Builder=var2074, r0=var3429, java.sql.ResultSet=var1264, $r3=var943, org.apache.ibatis.mapping.ParameterMapping=var1102, $r1=var2514, $r2=var3349, java.lang.Object=var1289, $z0=var285, $r4=var2639, org.apache.ibatis.type.TypeHandler=var561, $r5=var3332}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.mapping.ParameterMapping$Builder;	$r3 = class "Ljava/sql/ResultSet;";	$r1 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r2 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r1);	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r5 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: org.apache.ibatis.type.TypeHandler access$300(org.apache.ibatis.mapping.ParameterMapping)>($r4);	if $r5 != null goto return;	return
;block_num 3