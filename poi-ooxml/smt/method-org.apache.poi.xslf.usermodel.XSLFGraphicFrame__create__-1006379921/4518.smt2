(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1866 0)
(declare-sort var500 0)
(declare-sort var1593 0)
(declare-sort var1416 0)
(declare-sort var2328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1593_getUri/626169278 (var1866) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2328-init () var2328)
(declare-fun <init>/-444300003 (var2328 var1866 var500) void)
(declare-const null-var1866 var1866)
(declare-const null-var500 var500)
(declare-const null-String String)
(declare-const var560 var1866) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame 
(assert (not (= var560 null-var1866)))
(declare-const var2612 var500) ; Statement: r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet 
(assert (not (= var2612 null-var500)))
(define-const var2219 String (var1593_getUri/626169278 var560)) ; Statement: r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0) 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (= var2219 null-String))) ; Cond: r1 != null 
(define-const var2949 String var2219) ; Statement: $r7 = r1 
(assert true) ; Non Conditional
(define-const var1766 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2523 Int (hashCode/-467973558 var2949)) ; Statement: $i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; } 
(assert (and (not (= var2523 (- 603062095))) (and (not (= var2523 (- 809269002))) (and (not (= var2523 (- 844661481))) true)))) ; Intersect: Negate: Cond: $i0 == -603062095   and Intersect: Negate: Cond: $i0 == -809269002   and Intersect: Negate: Cond: $i0 == -844661481   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; } 
(assert (and (= var1766 1) (and (not (= var1766 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var3359 var2328 var2328-init) ; Statement: $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape 
(assert true)
;(assert (<init>/-444300003 var3359 var560 var2612)) ; Statement: specialinvoke $r4.<org.apache.poi.xslf.usermodel.XSLFObjectShape: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3) 

(declare-const var3359!1 var2328)
(declare-const var560!1 var1866)
(declare-const var2612!1 var500)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1593_getUri/626169278=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2328-init=([], org.apache.poi.xslf.usermodel.XSLFObjectShape), <init>/-444300003=([org.apache.poi.xslf.usermodel.XSLFObjectShape, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, org.apache.poi.xslf.usermodel.XSLFSheet], void)}
; {var1866=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var560=r0, var500=org.apache.poi.xslf.usermodel.XSLFSheet, var2612=r3, var1593=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var2219=r1, var1416=null_type, var2949=$r7, var1766=b1, var2523=$i0, var2328=org.apache.poi.xslf.usermodel.XSLFObjectShape, var3359=$r4}
; {org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var1866, r0=var560, org.apache.poi.xslf.usermodel.XSLFSheet=var500, r3=var2612, org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var1593, r1=var2219, null_type=var1416, $r7=var2949, b1=var1766, $i0=var2523, org.apache.poi.xslf.usermodel.XSLFObjectShape=var2328, $r4=var3359}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;	r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet;	r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0);	if r1 != null goto $r7 = r1;	$r7 = r1;	b1 = -1;	$i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; };	tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; };	$r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;	specialinvoke $r4.<org.apache.poi.xslf.usermodel.XSLFObjectShape: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3);	return $r4
;block_num 5