(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2615 0)
(declare-sort var802 0)
(declare-sort var715 0)
(declare-sort var2218 0)
(declare-sort var2886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var715_getUri/626169278 (var2615) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2886-init () var2886)
(declare-fun <init>/2139047500 (var2886 var2615 var802) void)
(declare-const null-var2615 var2615)
(declare-const null-var802 var802)
(declare-const null-String String)
(declare-const var3710 var2615) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame 
(assert (not (= var3710 null-var2615)))
(declare-const var1989 var802) ; Statement: r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet 
(assert (not (= var1989 null-var802)))
(define-const var835 String (var715_getUri/626169278 var3710)) ; Statement: r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0) 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (= var835 null-String))) ; Cond: r1 != null 
(define-const var518 String var835) ; Statement: $r7 = r1 
(assert true) ; Non Conditional
(define-const var1065 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1078 Int (hashCode/-467973558 var518)) ; Statement: $i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; } 
(assert (and (not (= var1078 (- 603062095))) (and (not (= var1078 (- 809269002))) (and (not (= var1078 (- 844661481))) true)))) ; Intersect: Negate: Cond: $i0 == -603062095   and Intersect: Negate: Cond: $i0 == -809269002   and Intersect: Negate: Cond: $i0 == -844661481   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; } 
(assert (and (= var1065 2) (and (not (= var1065 1)) (and (not (= var1065 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var2133 var2886 var2886-init) ; Statement: $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram 
(assert true)
;(assert (<init>/2139047500 var2133 var3710 var1989)) ; Statement: specialinvoke $r2.<org.apache.poi.xslf.usermodel.XSLFDiagram: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3) 

(declare-const var2133!1 var2886)
(declare-const var3710!1 var2615)
(declare-const var1989!1 var802)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var715_getUri/626169278=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2886-init=([], org.apache.poi.xslf.usermodel.XSLFDiagram), <init>/2139047500=([org.apache.poi.xslf.usermodel.XSLFDiagram, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, org.apache.poi.xslf.usermodel.XSLFSheet], void)}
; {var2615=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var3710=r0, var802=org.apache.poi.xslf.usermodel.XSLFSheet, var1989=r3, var715=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var835=r1, var2218=null_type, var518=$r7, var1065=b1, var1078=$i0, var2886=org.apache.poi.xslf.usermodel.XSLFDiagram, var2133=$r2}
; {org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var2615, r0=var3710, org.apache.poi.xslf.usermodel.XSLFSheet=var802, r3=var1989, org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var715, r1=var835, null_type=var2218, $r7=var518, b1=var1065, $i0=var1078, org.apache.poi.xslf.usermodel.XSLFDiagram=var2886, $r2=var2133}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;	r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet;	r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0);	if r1 != null goto $r7 = r1;	$r7 = r1;	b1 = -1;	$i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; };	tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; };	$r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;	specialinvoke $r2.<org.apache.poi.xslf.usermodel.XSLFDiagram: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3);	return $r2
;block_num 5