(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3598_getStringValue/46086955 (var3598) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3598 var3598)
(declare-const var735 var3598) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent 
(assert (not (= var735 null-var3598)))
(define-const var3273 String (var3598_getStringValue/46086955 var735)) ; Statement: $r1 = interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent: java.lang.String getStringValue()>() 
(assert true)
(define-const var3004 Bool (endsWith/985337093 var3273 "%")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("%") 
 ; Statement: if $z0 == 0 goto $r2 = (org.apache.xmlbeans.XmlAnySimpleType) r0 
(assert (not (= (ite var3004 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return -1L 
(check-sat)
(get-model)
(get-unsat-core)
; {var3598_getStringValue/46086955=([org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3598=org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent, var735=r0, var3273=$r1, var3004=$z0}
; {org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent=var3598, r0=var735, $r1=var3273, $z0=var3004}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent;	$r1 = interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent: java.lang.String getStringValue()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("%");	if $z0 == 0 goto $r2 = (org.apache.xmlbeans.XmlAnySimpleType) r0;	return -1L
;block_num 2