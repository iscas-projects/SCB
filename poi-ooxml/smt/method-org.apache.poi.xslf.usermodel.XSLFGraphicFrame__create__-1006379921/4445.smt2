(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2780 0)
(declare-sort var3427 0)
(declare-sort var2424 0)
(declare-sort var3891 0)
(declare-sort var3447 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2424_getUri/626169278 (var2780) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3447-init () var3447)
(declare-fun <init>/97881457 (var3447 var2780 var3427) void)
(declare-const null-var2780 var2780)
(declare-const null-var3427 var3427)
(declare-const null-String String)
(declare-const var3668 var2780) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame 
(assert (not (= var3668 null-var2780)))
(declare-const var1132 var3427) ; Statement: r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet 
(assert (not (= var1132 null-var3427)))
(define-const var1692 String (var2424_getUri/626169278 var3668)) ; Statement: r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0) 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (not (= var1692 null-String)))) ; Negate: Cond: r1 != null  
(define-const var350 String "") ; Statement: $r7 = "" 
 ; Statement: goto [?= b1 = -1] 
(assert true) ; Non Conditional
(define-const var1556 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3443 Int (hashCode/-467973558 var350)) ; Statement: $i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; } 
(assert (and (not (= var3443 (- 603062095))) (and (not (= var3443 (- 809269002))) (and (not (= var3443 (- 844661481))) true)))) ; Intersect: Negate: Cond: $i0 == -603062095   and Intersect: Negate: Cond: $i0 == -809269002   and Intersect: Negate: Cond: $i0 == -844661481   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; } 
(assert (and (= var1556 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var3001 var3447 var3447-init) ; Statement: $r5 = new org.apache.poi.xslf.usermodel.XSLFTable 
(assert true)
;(assert (<init>/97881457 var3001 var3668 var1132)) ; Statement: specialinvoke $r5.<org.apache.poi.xslf.usermodel.XSLFTable: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3) 

(declare-const var3001!1 var3447)
(declare-const var3668!1 var2780)
(declare-const var1132!1 var3427)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2424_getUri/626169278=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3447-init=([], org.apache.poi.xslf.usermodel.XSLFTable), <init>/97881457=([org.apache.poi.xslf.usermodel.XSLFTable, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, org.apache.poi.xslf.usermodel.XSLFSheet], void)}
; {var2780=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var3668=r0, var3427=org.apache.poi.xslf.usermodel.XSLFSheet, var1132=r3, var2424=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var1692=r1, var3891=null_type, var350=$r7, var1556=b1, var3443=$i0, var3447=org.apache.poi.xslf.usermodel.XSLFTable, var3001=$r5}
; {org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var2780, r0=var3668, org.apache.poi.xslf.usermodel.XSLFSheet=var3427, r3=var1132, org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var2424, r1=var1692, null_type=var3891, $r7=var350, b1=var1556, $i0=var3443, org.apache.poi.xslf.usermodel.XSLFTable=var3447, $r5=var3001}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;	r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet;	r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0);	if r1 != null goto $r7 = r1;	$r7 = "";	goto [?= b1 = -1];	b1 = -1;	$i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; };	tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; };	$r5 = new org.apache.poi.xslf.usermodel.XSLFTable;	specialinvoke $r5.<org.apache.poi.xslf.usermodel.XSLFTable: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3);	return $r5
;block_num 5