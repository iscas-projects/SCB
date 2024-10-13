(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2474 0)
(declare-sort var1064 0)
(declare-sort var716 0)
(declare-sort var2022 0)
(declare-sort var1992 0)
(declare-sort var91 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2474_getT/-1894210475 (var2474) String)
(declare-fun var1064_get/1088891777 (var1064 var2022) var2022)
(declare-fun cast-from-String-to-var2022 (String) var2022)
(declare-fun cast-from-var2022-to-var716 (var2022) var716)
(declare-fun constructor/-842407405 (var716) var1992)
(declare-fun var1992_apply/533941847 (var1992 var2022) var2022)
(declare-fun cast-from-var2474-to-var2022 (var2474) var2022)
(declare-fun cast-from-var2022-to-var91 (var2022) var91)
(declare-const null-var2474 var2474)
(declare-const var716-LOOKUP var1064)
(declare-const null-var716 var716)
(declare-const var3214 var2474) ; Statement: r0 := @parameter0: com.microsoft.schemas.office.visio.x2012.main.RowType 
(assert (not (= var3214 null-var2474)))
(define-const var1171 String (var2474_getT/-1894210475 var3214)) ; Statement: r1 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.RowType: java.lang.String getT()>() 
(define-const var3285 var1064 var716-LOOKUP) ; Statement: $r2 = <org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.Map LOOKUP> 
(define-const var2295 var2022 (var1064_get/1088891777 var3285 (cast-from-String-to-var2022 var1171))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2 var716 (cast-from-var2022-to-var716 var2295)) ; Statement: r4 = (org.apache.poi.xdgf.usermodel.section.GeometryRowTypes) $r3 
 ; Statement: if r4 != null goto $r5 = r4.<org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.function.Function constructor> 
(assert (not (= var2 null-var716))) ; Cond: r4 != null 
(define-const var3731 var1992 (constructor/-842407405 var2)) ; Statement: $r5 = r4.<org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.function.Function constructor> 
(define-const var317 var2022 (var1992_apply/533941847 var3731 (cast-from-var2474-to-var2022 var3214))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r0) 
(define-const var235 var91 (cast-from-var2022-to-var91 var317)) ; Statement: $r7 = (org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow) $r6 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2474_getT/-1894210475=([com.microsoft.schemas.office.visio.x2012.main.RowType], java.lang.String), var1064_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2022=([java.lang.String], java.lang.Object), cast-from-var2022-to-var716=([java.lang.Object], org.apache.poi.xdgf.usermodel.section.GeometryRowTypes), constructor/-842407405=([org.apache.poi.xdgf.usermodel.section.GeometryRowTypes], java.util.function.Function), var1992_apply/533941847=([java.util.function.Function, java.lang.Object], java.lang.Object), cast-from-var2474-to-var2022=([com.microsoft.schemas.office.visio.x2012.main.RowType], java.lang.Object), cast-from-var2022-to-var91=([java.lang.Object], org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow)}
; {var2474=com.microsoft.schemas.office.visio.x2012.main.RowType, var3214=r0, var1171=r1, var1064=java.util.Map, var716=org.apache.poi.xdgf.usermodel.section.GeometryRowTypes, var3285=$r2, var2022=java.lang.Object, var2295=$r3, var2=r4, var1992=java.util.function.Function, var3731=$r5, var317=$r6, var91=org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow, var235=$r7}
; {com.microsoft.schemas.office.visio.x2012.main.RowType=var2474, r0=var3214, r1=var1171, java.util.Map=var1064, org.apache.poi.xdgf.usermodel.section.GeometryRowTypes=var716, $r2=var3285, java.lang.Object=var2022, $r3=var2295, r4=var2, java.util.function.Function=var1992, $r5=var3731, $r6=var317, org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow=var91, $r7=var235}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.microsoft.schemas.office.visio.x2012.main.RowType;	r1 = interfaceinvoke r0.<com.microsoft.schemas.office.visio.x2012.main.RowType: java.lang.String getT()>();	$r2 = <org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.Map LOOKUP>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.poi.xdgf.usermodel.section.GeometryRowTypes) $r3;	if r4 != null goto $r5 = r4.<org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.function.Function constructor>;	$r5 = r4.<org.apache.poi.xdgf.usermodel.section.GeometryRowTypes: java.util.function.Function constructor>;	$r6 = interfaceinvoke $r5.<java.util.function.Function: java.lang.Object apply(java.lang.Object)>(r0);	$r7 = (org.apache.poi.xdgf.usermodel.section.geometry.GeometryRow) $r6;	return $r7
;block_num 2