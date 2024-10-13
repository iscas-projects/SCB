(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1878 0)
(declare-sort var3257 0)
(declare-sort var842 0)
(declare-sort var1570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var842_getUri/626169278 (var1878) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var842-init () var842)
(declare-fun <init>/-1203807686 (var842 var1878 var3257) void)
(declare-const null-var1878 var1878)
(declare-const null-var3257 var3257)
(declare-const null-String String)
(declare-const var3353 var1878) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame 
(assert (not (= var3353 null-var1878)))
(declare-const var381 var3257) ; Statement: r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet 
(assert (not (= var381 null-var3257)))
(define-const var3000 String (var842_getUri/626169278 var3353)) ; Statement: r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0) 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (not (= var3000 null-String)))) ; Negate: Cond: r1 != null  
(define-const var3080 String "") ; Statement: $r7 = "" 
 ; Statement: goto [?= b1 = -1] 
(assert true) ; Non Conditional
(define-const var2908 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var670 Int (hashCode/-467973558 var3080)) ; Statement: $i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; } 
(assert (and (not (= var670 (- 603062095))) (and (not (= var670 (- 809269002))) (and (not (= var670 (- 844661481))) true)))) ; Intersect: Negate: Cond: $i0 == -603062095   and Intersect: Negate: Cond: $i0 == -809269002   and Intersect: Negate: Cond: $i0 == -844661481   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; } 
(assert (and (not (= var2908 2)) (and (not (= var2908 1)) (and (not (= var2908 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var3724 var842 var842-init) ; Statement: $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame 
(assert true)
;(assert (<init>/-1203807686 var3724 var3353 var381)) ; Statement: specialinvoke $r6.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3) 

(declare-const var3724!1 var842)
(declare-const var3353!1 var1878)
(declare-const var381!1 var3257)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var842_getUri/626169278=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], java.lang.String), hashCode/-467973558=([java.lang.String], int), var842-init=([], org.apache.poi.xslf.usermodel.XSLFGraphicFrame), <init>/-1203807686=([org.apache.poi.xslf.usermodel.XSLFGraphicFrame, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, org.apache.poi.xslf.usermodel.XSLFSheet], void)}
; {var1878=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var3353=r0, var3257=org.apache.poi.xslf.usermodel.XSLFSheet, var381=r3, var842=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var3000=r1, var1570=null_type, var3080=$r7, var2908=b1, var670=$i0, var3724=$r6}
; {org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var1878, r0=var3353, org.apache.poi.xslf.usermodel.XSLFSheet=var3257, r3=var381, org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var842, r1=var3000, null_type=var1570, $r7=var3080, b1=var2908, $i0=var670, $r6=var3724}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;	r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet;	r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0);	if r1 != null goto $r7 = r1;	$r7 = "";	goto [?= b1 = -1];	b1 = -1;	$i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; };	tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; };	$r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame;	specialinvoke $r6.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3);	return $r6
;block_num 5