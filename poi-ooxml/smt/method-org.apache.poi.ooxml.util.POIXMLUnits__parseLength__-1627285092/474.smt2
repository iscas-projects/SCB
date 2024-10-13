(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2991 0)
(declare-sort var2581 0)
(declare-sort var2719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2991_getStringValue/46086955 (var2991) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun cast-from-var2991-to-var2581 (var2991) var2581)
(declare-fun var2719_parseLengthInner/-533321811 (var2581 Float64) Int)
(declare-const null-var2991 var2991)
(declare-const var2444 var2991) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent 
(assert (not (= var2444 null-var2991)))
(define-const var2132 String (var2991_getStringValue/46086955 var2444)) ; Statement: $r1 = interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent: java.lang.String getStringValue()>() 
(assert true)
(define-const var3368 Bool (endsWith/985337093 var2132 "%")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("%") 
 ; Statement: if $z0 == 0 goto $r2 = (org.apache.xmlbeans.XmlAnySimpleType) r0 
(assert (= (ite var3368 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3324 var2581 (cast-from-var2991-to-var2581 var2444)) ; Statement: $r2 = (org.apache.xmlbeans.XmlAnySimpleType) r0 
(define-const var2379 Int (var2719_parseLengthInner/-533321811 var3324 ((_ to_fp 11 53) #x4083d80000000000))) ; Statement: $l0 = staticinvoke <org.apache.poi.ooxml.util.POIXMLUnits: long parseLengthInner(org.apache.xmlbeans.XmlAnySimpleType,double)>($r2, 635.0) 
 ; Statement: return $l0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2991_getStringValue/46086955=([org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), cast-from-var2991-to-var2581=([org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent], org.apache.xmlbeans.XmlAnySimpleType), var2719_parseLengthInner/-533321811=([org.apache.xmlbeans.XmlAnySimpleType, double], long)}
; {var2991=org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent, var2444=r0, var2132=$r1, var3368=$z0, var2581=org.apache.xmlbeans.XmlAnySimpleType, var3324=$r2, var2719=org.apache.poi.ooxml.util.POIXMLUnits, var2379=$l0}
; {org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent=var2991, r0=var2444, $r1=var2132, $z0=var3368, org.apache.xmlbeans.XmlAnySimpleType=var2581, $r2=var3324, org.apache.poi.ooxml.util.POIXMLUnits=var2719, $l0=var2379}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent;	$r1 = interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.STMeasurementOrPercent: java.lang.String getStringValue()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>("%");	if $z0 == 0 goto $r2 = (org.apache.xmlbeans.XmlAnySimpleType) r0;	$r2 = (org.apache.xmlbeans.XmlAnySimpleType) r0;	$l0 = staticinvoke <org.apache.poi.ooxml.util.POIXMLUnits: long parseLengthInner(org.apache.xmlbeans.XmlAnySimpleType,double)>($r2, 635.0);	return $l0
;block_num 2