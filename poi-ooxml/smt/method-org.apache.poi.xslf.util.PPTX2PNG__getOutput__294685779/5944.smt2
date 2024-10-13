(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2131 0)
(declare-sort var2686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun format/-1346839480 (var2131) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2686-init () var2686)
(declare-fun <init>/2119829843 (var2686) void)
(declare-const null-var2131 var2131)
(declare-const var799 var2131) ; Statement: r0 := @this: org.apache.poi.xslf.util.PPTX2PNG 
(assert (not (= var799 null-var2131)))
(define-const var3484 String (format/-1346839480 var799)) ; Statement: r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format> 
(define-const var3700 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var921 Int (hashCode/-467973558 var3484)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 107332: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 110834: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("pdf");     case 114276: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     default: goto tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; }; } 
(assert (and (not (= var921 114276)) (and (not (= var921 110834)) (and (not (= var921 107332)) true)))) ; Intersect: Negate: Cond: $i0 == 114276   and Intersect: Negate: Cond: $i0 == 110834   and Intersect: Negate: Cond: $i0 == 107332   and Non Conditional   
 ; Statement: tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; } 
(assert (and (= var3700 2) (and (not (= var3700 1)) (and (not (= var3700 0)) true)))) ; Intersect: Cond: b1 == 2  and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional   
(define-const var2108 var2686 var2686-init) ; Statement: $r2 = new org.apache.poi.xslf.util.DummyFormat 
(assert true)
;(assert (<init>/2119829843 var2108)) ; Statement: specialinvoke $r2.<org.apache.poi.xslf.util.DummyFormat: void <init>()>() 

(declare-const var2108!1 var2686)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {format/-1346839480=([org.apache.poi.xslf.util.PPTX2PNG], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2686-init=([], org.apache.poi.xslf.util.DummyFormat), <init>/2119829843=([org.apache.poi.xslf.util.DummyFormat], void)}
; {var2131=org.apache.poi.xslf.util.PPTX2PNG, var799=r0, var3484=r1, var3700=b1, var921=$i0, var2686=org.apache.poi.xslf.util.DummyFormat, var2108=$r2}
; {org.apache.poi.xslf.util.PPTX2PNG=var2131, r0=var799, r1=var3484, b1=var3700, $i0=var921, org.apache.poi.xslf.util.DummyFormat=var2686, $r2=var2108}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.util.PPTX2PNG;	r1 = r0.<org.apache.poi.xslf.util.PPTX2PNG: java.lang.String format>;	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 107332: goto $z4 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log");     case 110834: goto $z3 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("pdf");     case 114276: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     default: goto tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; }; };	tableswitch(b1) {     case 0: goto $r6 = new org.apache.poi.xslf.util.SVGFormat;     case 1: goto $r3 = new org.apache.poi.xslf.util.PDFFormat;     case 2: goto $r2 = new org.apache.poi.xslf.util.DummyFormat;     default: goto $r7 = new org.apache.poi.xslf.util.BitmapFormat; };	$r2 = new org.apache.poi.xslf.util.DummyFormat;	specialinvoke $r2.<org.apache.poi.xslf.util.DummyFormat: void <init>()>();	return $r2
;block_num 3