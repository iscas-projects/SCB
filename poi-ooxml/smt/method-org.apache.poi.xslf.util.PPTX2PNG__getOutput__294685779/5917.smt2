(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2554 0)
(declare-sort var2561 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-1346839480 (var2554) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2561-init () var2561)
(declare-fun textAsShapes/-1346839480 (var2554) Bool)
(declare-fun fontDir/-1346839480 (var2554) String)
(declare-fun fontTtf/-1346839480 (var2554) String)
(declare-fun <init>/545523157 (var2561 Bool String String) void)
(declare-const null-var2554 var2554)
(declare-const var3672 var2554) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var3672 null-var2554)))
(define-const var2739 String (format/-1346839480 var3672)) ; Statement: r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format> 
(define-const var1204 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2603 Int (hashCode/-467973558 var2739)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 107332: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 110834: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("pdf");     case 114276: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     default: goto tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; }; } 
(assert (and (not (= var2603 114276)) (and (not (= var2603 110834)) (and (not (= var2603 107332)) true)))) ; Intersect: Negate: Cond: $i0 == 114276   and Intersect: Negate: Cond: $i0 == 110834   and Intersect: Negate: Cond: $i0 == 107332   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; } 
(assert (and (= var1204 1) (and (not (= var1204 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var3015 var2561 var2561-init) ; Statement: $r3 = new org.apache.poi.xslf.util.PDFFormat 
(define-const var224 Bool (textAsShapes/-1346839480 var3672)) ; Statement: $z1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: boolean textAsShapes> 
(define-const var427 String (fontDir/-1346839480 var3672)) ; Statement: $r5 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fontDir> 
(define-const var2552 String (fontTtf/-1346839480 var3672)) ; Statement: $r4 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fontTtf> 
(assert true)
;(assert (<init>/545523157 var3015 var224 var427 var2552)) ; Statement: specialinvoke $r3.<org.apache.poi.xslf.util.PDFFormat: void <init>(boolean,java.lang.String,java.lang.String)>($z1, $r5, $r4) 

(declare-const var3015!1 var2561)
(declare-const var224!1 Bool)
(declare-const var427!1 String)
(declare-const var2552!1 String)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2561-init=([], org.apache.poi.xslf.util.PDFFormat), textAsShapes/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], boolean), fontDir/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), fontTtf/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), <init>/545523157=([org.apache.poi.xslf.util.PDFFormat, boolean, java.lang.String, java.lang.String], void)}
; {var2554=org.apache.poi.xslf.util.PPTX2PNG, var3672=r0, var2739=r1, var1204=b1, var2603=$i0, var2561=org.apache.poi.xslf.util.PDFFormat, var3015=$r3, var224=$z1, var427=$r5, var2552=$r4}
; {org.apache.poi.xslf.util.PPTX2PNG=var2554, r0=var3672, r1=var2739, b1=var1204, $i0=var2603, org.apache.poi.xslf.util.PDFFormat=var2561, $r3=var3015, $z1=var224, $r5=var427, $r4=var2552}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format>;	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 107332: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 110834: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("pdf");     case 114276: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     default: goto tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; }; };	tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; };	$r3 = new org.apache.poi.xslf.util.PDFFormat;	$z1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: boolean textAsShapes>;	$r5 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fontDir>;	$r4 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String fontTtf>;	specialinvoke $r3.<org.apache.poi.xslf.util.PDFFormat: void <init>(boolean,java.lang.String,java.lang.String)>($z1, $r5, $r4);	return $r3
;block_num 3