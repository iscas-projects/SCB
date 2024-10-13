(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3781 0)
(declare-sort var1670 0)
(declare-sort var586 0)
(declare-sort var1549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var586_getUri/626169278 (var3781) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var586-init () var586)
(declare-fun <init>/-1203807686 (var586 var3781 var1670) void)
(declare-const null-var3781 var3781)
(declare-const null-var1670 var1670)
(declare-const null-String String)
(declare-const var338 var3781) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame 
(assert (not (= var338 null-var3781)))
(declare-const var3218 var1670) ; Statement: r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet 
(assert (not (= var3218 null-var1670)))
(define-const var1121 String (var586_getUri/626169278 var338)) ; Statement: r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0) 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (= var1121 null-String))) ; Cond: r1 != null 
(define-const var3275 String var1121) ; Statement: $r7 = r1 
(assert true) ; Non Conditional
(define-const var1746 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1544 Int (hashCode/-467973558 var3275)) ; Statement: $i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; } 
(assert (and (not (= var1544 (- 603062095))) (and (not (= var1544 (- 809269002))) (and (not (= var1544 (- 844661481))) true)))) ; Intersect: Negate: Cond: $i0 == -603062095   and Intersect: Negate: Cond: $i0 == -809269002   and Intersect: Negate: Cond: $i0 == -844661481   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; } 
(assert (and (not (= var1746 2)) (and (not (= var1746 1)) (and (not (= var1746 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var1586 var586 var586-init) ; Statement: $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame 
(assert true)
;(assert (<init>/-1203807686 var1586 var338 var3218)) ; Statement: specialinvoke $r6.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3) 

(declare-const var1586!1 var586)
(declare-const var338!1 var3781)
(declare-const var3218!1 var1670)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var586_getUri/626169278=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], java.lang.String), hashCode/-467973558=([java.lang.String], int), var586-init=([], org.apache.poi.xslf.usermodel.XSLFGraphicFrame), <init>/-1203807686=([org.apache.poi.xslf.usermodel.XSLFGraphicFrame, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, org.apache.poi.xslf.usermodel.XSLFSheet], void)}
; {var3781=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var338=r0, var1670=org.apache.poi.xslf.usermodel.XSLFSheet, var3218=r3, var586=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var1121=r1, var1549=null_type, var3275=$r7, var1746=b1, var1544=$i0, var1586=$r6}
; {org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var3781, r0=var338, org.apache.poi.xslf.usermodel.XSLFSheet=var1670, r3=var3218, org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var586, r1=var1121, null_type=var1549, $r7=var3275, b1=var1746, $i0=var1544, $r6=var1586}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;	r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet;	r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0);	if r1 != null goto $r7 = r1;	$r7 = r1;	b1 = -1;	$i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; };	tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; };	$r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame;	specialinvoke $r6.<org.apache.poi.xslf.usermodel.XSLFGraphicFrame: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3);	return $r6
;block_num 5