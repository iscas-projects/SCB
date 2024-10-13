(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2123 0)
(declare-sort var837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun extPart/-1073079887 (var2123) var837)
(declare-fun custPart/-1073079887 (var2123) var837)
(declare-const null-var2123 var2123)
(declare-const null-var837 var837)
(declare-const var1125 var2123) ; Statement: r0 := @this: org.apache.poi.ooxml.POIXMLProperties 
(assert (not (= var1125 null-var2123)))
(define-const var90 var837 (extPart/-1073079887 var1125)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart extPart> 
 ; Statement: if $r1 != null goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart> 
(assert (not (= var90 null-var837))) ; Cond: $r1 != null 
(define-const var903 var837 (custPart/-1073079887 var1125)) ; Statement: $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart> 
 ; Statement: if $r56 != null goto $r58 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart extPart> 
(assert (not (= var903 null-var837))) ; Cond: $r56 != null 
(define-const var642 var837 (extPart/-1073079887 var1125)) ; Statement: $r58 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart extPart> 
 ; Statement: if $r58 == null goto $r61 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart> 
(assert (= var642 null-var837)) ; Cond: $r58 == null 
(define-const var2322 var837 (custPart/-1073079887 var1125)) ; Statement: $r61 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart> 
 ; Statement: if $r61 == null goto return 
(assert (= var2322 null-var837)) ; Cond: $r61 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {extPart/-1073079887=([org.apache.poi.ooxml.POIXMLProperties], org.apache.poi.openxml4j.opc.PackagePart), custPart/-1073079887=([org.apache.poi.ooxml.POIXMLProperties], org.apache.poi.openxml4j.opc.PackagePart)}
; {var2123=org.apache.poi.ooxml.POIXMLProperties, var1125=r0, var837=org.apache.poi.openxml4j.opc.PackagePart, var90=$r1, var903=$r56, var642=$r58, var2322=$r61}
; {org.apache.poi.ooxml.POIXMLProperties=var2123, r0=var1125, org.apache.poi.openxml4j.opc.PackagePart=var837, $r1=var90, $r56=var903, $r58=var642, $r61=var2322}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.ooxml.POIXMLProperties;	$r1 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart extPart>;	if $r1 != null goto $r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart>;	$r56 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart>;	if $r56 != null goto $r58 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart extPart>;	$r58 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart extPart>;	if $r58 == null goto $r61 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart>;	$r61 = r0.<org.apache.poi.ooxml.POIXMLProperties: org.apache.poi.openxml4j.opc.PackagePart custPart>;	if $r61 == null goto return;	return
;block_num 5