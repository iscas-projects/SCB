(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3768 0)
(declare-sort var70 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBlip/-497161493 (var3768) var70)
(declare-fun var70_getEmbed/-260958716 (var70) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3768 var3768)
(declare-const var1336 var3768) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFObjectShape 
(assert (not (= var1336 null-var3768)))
(assert true)
(define-const var3524 var70 (getBlip/-497161493 var1336)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFObjectShape: org.openxmlformats.schemas.drawingml.x2006.main.CTBlip getBlip()>() 
(define-const var1024 String (var70_getEmbed/-260958716 var3524)) ; Statement: r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlip: java.lang.String getEmbed()>() 
(assert true)
(define-const var1352 Bool (isEmpty/-1285796103 var1024)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto return r2 
(assert (not (= (ite var1352 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getBlip/-497161493=([org.apache.poi.xslf.usermodel.XSLFObjectShape], org.openxmlformats.schemas.drawingml.x2006.main.CTBlip), var70_getEmbed/-260958716=([org.openxmlformats.schemas.drawingml.x2006.main.CTBlip], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3768=org.apache.poi.xslf.usermodel.XSLFObjectShape, var1336=r0, var70=org.openxmlformats.schemas.drawingml.x2006.main.CTBlip, var3524=$r1, var1024=r2, var1352=$z0}
; {org.apache.poi.xslf.usermodel.XSLFObjectShape=var3768, r0=var1336, org.openxmlformats.schemas.drawingml.x2006.main.CTBlip=var70, $r1=var3524, r2=var1024, $z0=var1352}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFObjectShape;	$r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFObjectShape: org.openxmlformats.schemas.drawingml.x2006.main.CTBlip getBlip()>();	r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlip: java.lang.String getEmbed()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto return r2;	return null
;block_num 2