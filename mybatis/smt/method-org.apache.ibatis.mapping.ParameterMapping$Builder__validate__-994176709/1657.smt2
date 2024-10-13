(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3477 0)
(declare-sort var3400 0)
(declare-sort var3036 0)
(declare-sort var1600 0)
(declare-sort var1345 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3400!class ClassObject)
(declare-fun parameterMapping/2084547934 (var3477) var3036)
(declare-fun var3036_access$500/-2086424374 (var3036) ClassObject)
(declare-fun equals/-1650223740 (var1600 var1600) Bool)
(declare-fun cast-from-ClassObject-to-var1600 (ClassObject) var1600)
(declare-fun var3036_access$800/-1604202854 (var3036) String)
(declare-const null-var3477 var3477)
(declare-const null-String String)
(declare-const var313 var3477) ; Statement: r0 := @this: org.apache.ibatis.mapping.ParameterMapping$Builder 
(assert (not (= var313 null-var3477)))
(define-const var3469 ClassObject var3400!class) ; Statement: $r3 = class "Ljava/sql/ResultSet;" 
(define-const var3677 var3036 (parameterMapping/2084547934 var313)) ; Statement: $r1 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var3094 ClassObject (var3036_access$500/-2086424374 var3677)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r1) 
(assert true)
(define-const var403 Bool (equals/-1650223740 (cast-from-ClassObject-to-var1600 var3469) (cast-from-ClassObject-to-var1600 var3094))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(assert (not (= (ite var403 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var394 var3036 (parameterMapping/2084547934 var313)) ; Statement: $r23 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping> 
(define-const var3538 String (var3036_access$800/-1604202854 var394)) ; Statement: $r24 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.String access$800(org.apache.ibatis.mapping.ParameterMapping)>($r23) 
 ; Statement: if $r24 != null goto return 
(assert (not (= var3538 null-String))) ; Cond: $r24 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parameterMapping/2084547934=([org.apache.ibatis.mapping.ParameterMapping$Builder], org.apache.ibatis.mapping.ParameterMapping), var3036_access$500/-2086424374=([org.apache.ibatis.mapping.ParameterMapping], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var1600=([java.lang.Class], java.lang.Object), var3036_access$800/-1604202854=([org.apache.ibatis.mapping.ParameterMapping], java.lang.String)}
; {var3477=org.apache.ibatis.mapping.ParameterMapping$Builder, var313=r0, var3400=java.sql.ResultSet, var3469=$r3, var3036=org.apache.ibatis.mapping.ParameterMapping, var3677=$r1, var3094=$r2, var1600=java.lang.Object, var403=$z0, var394=$r23, var3538=$r24, var1345=null_type}
; {org.apache.ibatis.mapping.ParameterMapping$Builder=var3477, r0=var313, java.sql.ResultSet=var3400, $r3=var3469, org.apache.ibatis.mapping.ParameterMapping=var3036, $r1=var3677, $r2=var3094, java.lang.Object=var1600, $z0=var403, $r23=var394, $r24=var3538, null_type=var1345}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.mapping.ParameterMapping$Builder;	$r3 = class "Ljava/sql/ResultSet;";	$r1 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r2 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.Class access$500(org.apache.ibatis.mapping.ParameterMapping)>($r1);	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r4 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r23 = r0.<org.apache.ibatis.mapping.ParameterMapping$Builder: org.apache.ibatis.mapping.ParameterMapping parameterMapping>;	$r24 = staticinvoke <org.apache.ibatis.mapping.ParameterMapping: java.lang.String access$800(org.apache.ibatis.mapping.ParameterMapping)>($r23);	if $r24 != null goto return;	return
;block_num 3