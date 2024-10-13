(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3991 0)
(declare-sort var2652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBlip/-497161493 (var3991) var2652)
(declare-fun var2652_getEmbed/-260958716 (var2652) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3991 var3991)
(declare-const var3393 var3991) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFObjectShape 
(assert (not (= var3393 null-var3991)))
(assert true)
(define-const var2765 var2652 (getBlip/-497161493 var3393)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFObjectShape: org.openxmlformats.schemas.drawingml.x2006.main.CTBlip getBlip()>() 
(define-const var3841 String (var2652_getEmbed/-260958716 var2765)) ; Statement: r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlip: java.lang.String getEmbed()>() 
(assert true)
(define-const var2035 Bool (isEmpty/-1285796103 var3841)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto return r2 
(assert (= (ite var2035 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getBlip/-497161493=([org.apache.poi.xslf.usermodel.XSLFObjectShape], org.openxmlformats.schemas.drawingml.x2006.main.CTBlip), var2652_getEmbed/-260958716=([org.openxmlformats.schemas.drawingml.x2006.main.CTBlip], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3991=org.apache.poi.xslf.usermodel.XSLFObjectShape, var3393=r0, var2652=org.openxmlformats.schemas.drawingml.x2006.main.CTBlip, var2765=$r1, var3841=r2, var2035=$z0}
; {org.apache.poi.xslf.usermodel.XSLFObjectShape=var3991, r0=var3393, org.openxmlformats.schemas.drawingml.x2006.main.CTBlip=var2652, $r1=var2765, r2=var3841, $z0=var2035}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFObjectShape;	$r1 = virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFObjectShape: org.openxmlformats.schemas.drawingml.x2006.main.CTBlip getBlip()>();	r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.drawingml.x2006.main.CTBlip: java.lang.String getEmbed()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto return r2;	return r2
;block_num 2