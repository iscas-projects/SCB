(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2201 0)
(declare-sort var1188 0)
(declare-sort var382 0)
(declare-sort var2517 0)
(declare-sort var2410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var382_getUri/626169278 (var2201) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2410-init () var2410)
(declare-fun <init>/97881457 (var2410 var2201 var1188) void)
(declare-const null-var2201 var2201)
(declare-const null-var1188 var1188)
(declare-const null-String String)
(declare-const var2082 var2201) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame 
(assert (not (= var2082 null-var2201)))
(declare-const var2810 var1188) ; Statement: r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet 
(assert (not (= var2810 null-var1188)))
(define-const var1694 String (var382_getUri/626169278 var2082)) ; Statement: r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0) 
 ; Statement: if r1 != null goto $r7 = r1 
(assert (not (= var1694 null-String))) ; Cond: r1 != null 
(define-const var870 String var1694) ; Statement: $r7 = r1 
(assert true) ; Non Conditional
(define-const var964 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1134 Int (hashCode/-467973558 var870)) ; Statement: $i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; } 
(assert (and (not (= var1134 (- 603062095))) (and (not (= var1134 (- 809269002))) (and (not (= var1134 (- 844661481))) true)))) ; Intersect: Negate: Cond: $i0 == -603062095   and Intersect: Negate: Cond: $i0 == -809269002   and Intersect: Negate: Cond: $i0 == -844661481   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; } 
(assert (and (= var964 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var1064 var2410 var2410-init) ; Statement: $r5 = new org.apache.poi.xslf.usermodel.XSLFTable 
(assert true)
;(assert (<init>/97881457 var1064 var2082 var2810)) ; Statement: specialinvoke $r5.<org.apache.poi.xslf.usermodel.XSLFTable: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3) 

(declare-const var1064!1 var2410)
(declare-const var2082!1 var2201)
(declare-const var2810!1 var1188)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var382_getUri/626169278=([org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2410-init=([], org.apache.poi.xslf.usermodel.XSLFTable), <init>/97881457=([org.apache.poi.xslf.usermodel.XSLFTable, org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, org.apache.poi.xslf.usermodel.XSLFSheet], void)}
; {var2201=org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame, var2082=r0, var1188=org.apache.poi.xslf.usermodel.XSLFSheet, var2810=r3, var382=org.apache.poi.xslf.usermodel.XSLFGraphicFrame, var1694=r1, var2517=null_type, var870=$r7, var964=b1, var1134=$i0, var2410=org.apache.poi.xslf.usermodel.XSLFTable, var1064=$r5}
; {org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame=var2201, r0=var2082, org.apache.poi.xslf.usermodel.XSLFSheet=var1188, r3=var2810, org.apache.poi.xslf.usermodel.XSLFGraphicFrame=var382, r1=var1694, null_type=var2517, $r7=var870, b1=var964, $i0=var1134, org.apache.poi.xslf.usermodel.XSLFTable=var2410, $r5=var1064}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame;	r3 := @parameter1: org.apache.poi.xslf.usermodel.XSLFSheet;	r1 = staticinvoke <org.apache.poi.xslf.usermodel.XSLFGraphicFrame: java.lang.String getUri(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame)>(r0);	if r1 != null goto $r7 = r1;	$r7 = r1;	b1 = -1;	$i0 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -844661481: goto $z2 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/presentationml/2006/ole");     case -809269002: goto $z1 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/diagram");     case -603062095: goto $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>("http://schemas.openxmlformats.org/drawingml/2006/table");     default: goto tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; }; };	tableswitch(b1) {     case 0: goto $r5 = new org.apache.poi.xslf.usermodel.XSLFTable;     case 1: goto $r4 = new org.apache.poi.xslf.usermodel.XSLFObjectShape;     case 2: goto $r2 = new org.apache.poi.xslf.usermodel.XSLFDiagram;     default: goto $r6 = new org.apache.poi.xslf.usermodel.XSLFGraphicFrame; };	$r5 = new org.apache.poi.xslf.usermodel.XSLFTable;	specialinvoke $r5.<org.apache.poi.xslf.usermodel.XSLFTable: void <init>(org.openxmlformats.schemas.presentationml.x2006.main.CTGraphicalObjectFrame,org.apache.poi.xslf.usermodel.XSLFSheet)>(r0, r3);	return $r5
;block_num 5