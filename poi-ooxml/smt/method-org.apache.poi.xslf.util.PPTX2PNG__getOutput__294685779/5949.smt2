(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2281 0)
(declare-sort var1170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-1346839480 (var2281) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1170-init () var1170)
(declare-fun <init>/983569409 (var1170 String) void)
(declare-const null-var2281 var2281)
(declare-const var1438 var2281) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var1438 null-var2281)))
(define-const var1107 String (format/-1346839480 var1438)) ; Statement: r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format> 
(define-const var1160 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3197 Int (hashCode/-467973558 var1107)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 107332: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 110834: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("pdf");     case 114276: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     default: goto tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; }; } 
(assert (and (not (= var3197 114276)) (and (not (= var3197 110834)) (and (not (= var3197 107332)) true)))) ; Intersect: Negate: Cond: $i0 == 114276   and Intersect: Negate: Cond: $i0 == 110834   and Intersect: Negate: Cond: $i0 == 107332   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; } 
(assert (and (not (= var1160 2)) (and (not (= var1160 1)) (and (not (= var1160 0)) true)))) ; Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var3955 var1170 var1170-init) ; Statement: $r7 = new org.apache.poi.xslf.util.BitmapFormat 
(define-const var799 String (format/-1346839480 var1438)) ; Statement: $r8 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format> 
(assert true)
;(assert (<init>/983569409 var3955 var799)) ; Statement: specialinvoke $r7.<org.apache.poi.xslf.util.BitmapFormat: void <init>(java.lang.String)>($r8) 

(declare-const var3955!1 var1170)
(declare-const var799!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1170-init=([], org.apache.poi.xslf.util.BitmapFormat), <init>/983569409=([org.apache.poi.xslf.util.BitmapFormat, java.lang.String], void)}
; {var2281=org.apache.poi.xslf.util.PPTX2PNG, var1438=r0, var1107=r1, var1160=b1, var3197=$i0, var1170=org.apache.poi.xslf.util.BitmapFormat, var3955=$r7, var799=$r8}
; {org.apache.poi.xslf.util.PPTX2PNG=var2281, r0=var1438, r1=var1107, b1=var1160, $i0=var3197, org.apache.poi.xslf.util.BitmapFormat=var1170, $r7=var3955, $r8=var799}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format>;	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 107332: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 110834: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("pdf");     case 114276: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     default: goto tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; }; };	tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; };	$r7 = new org.apache.poi.xslf.util.BitmapFormat;	$r8 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format>;	specialinvoke $r7.<org.apache.poi.xslf.util.BitmapFormat: void <init>(java.lang.String)>($r8);	return $r7
;block_num 3