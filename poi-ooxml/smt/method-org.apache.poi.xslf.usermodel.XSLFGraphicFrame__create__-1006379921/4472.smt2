(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1387 0)
(declare-sort var2237 0)
(declare-sort var1140 0)
(declare-sort var1423 0)
(declare-sort var586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1140_getUri/626169278 (var1387) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var586-init () var586)
(declare-fun <init>/-444300003 (var586 var1387 var2237) void)
(declare-const null-var1387 var1387)
(declare-const null-var2237 var2237)
(declare-const null-String String)
(declare-const var2091 var1387) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame 
(assert (not (= var2091 null-var1387)))
(declare-const var584 var2237) ; Statement: r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet 
(assert (not (= var584 null-var2237)))
(define-const var3390 String (var1140_getUri/626169278 var2091)) ; Statement: r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0) 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (not (= var3390 null-String)))) ; Negate: Cond: r1 != null  
(define-const var852 String "") ; Statement: $r7 = "" 
 ; Statement: goto [?= b1 = -1] 
(assert true) ; Non Conditional
(define-const var2639 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1659 Int (hashCode/-467973558 var852)) ; Statement: $i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; } 
(assert (and (not (= var1659 (- 603062095))) (and (not (= var1659 (- 809269002))) (and (not (= var1659 (- 844661481))) true)))) ; Intersect: Negate: Cond: $i0 == -603062095   and Intersect: Negate: Cond: $i0 == -809269002   and Intersect: Negate: Cond: $i0 == -844661481   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; } 
(assert (and (= var2639 1) (and (not (= var2639 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var559 var586 var586-init) ; Statement: $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape 
(assert true)
;(assert (<init>/-444300003 var559 var2091 var584)) ; Statement: specialinvoke $r4.<org.apache.poi.xslf.usermodel.XSLFObjectShape: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3) 

(declare-const var559!1 var586)
(declare-const var2091!1 var1387)
(declare-const var584!1 var2237)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1140_getUri/626169278=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], java.lang.String), hashCode/-467973558=([java.lang.String], int), var586-init=([], org.apache.poi.xslf.usermodel.XSLFObjectShape), <init>/-444300003=([org.apache.poi.xslf.usermodel.XSLFObjectShape, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, org.apache.poi.xslf.usermodel.XSLFSheet], void)}
; {var1387=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var2091=r0, var2237=org.apache.poi.xslf.usermodel.XSLFSheet, var584=r3, var1140=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var3390=r1, var1423=null_type, var852=$r7, var2639=b1, var1659=$i0, var586=org.apache.poi.xslf.usermodel.XSLFObjectShape, var559=$r4}
; {org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var1387, r0=var2091, org.apache.poi.xslf.usermodel.XSLFSheet=var2237, r3=var584, org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var1140, r1=var3390, null_type=var1423, $r7=var852, b1=var2639, $i0=var1659, org.apache.poi.xslf.usermodel.XSLFObjectShape=var586, $r4=var559}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;	r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet;	r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0);	if r1 != null goto $r7 = r1;	$r7 = "";	goto [?= b1 = -1];	b1 = -1;	$i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; };	tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; };	$r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;	specialinvoke $r4.<org.apache.poi.xslf.usermodel.XSLFObjectShape: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3);	return $r4
;block_num 5