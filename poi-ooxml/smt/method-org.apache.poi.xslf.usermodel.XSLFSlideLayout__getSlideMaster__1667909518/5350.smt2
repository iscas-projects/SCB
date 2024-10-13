(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2829 0)
(declare-sort var835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _master/-1286692137 (var2829) var835)
(declare-const null-var2829 var2829)
(declare-const null-var835 var835)
(declare-const var647 var2829) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlideLayout 
(assert (not (= var647 null-var2829)))
(define-const var678 var835 (_master/-1286692137 var647)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
(assert (not (= var678 null-var835))) ; Cond: $r1 != null 
(define-const var2576 var835 (_master/-1286692137 var647)) ; Statement: $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
(assert (not (= var2576 null-var835))) ; Cond: $r2 != null 
(define-const var3264 var835 (_master/-1286692137 var647)) ; Statement: $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {_master/-1286692137=([org.apache.poi.xslf.usermodel.XSLFSlideLayout], org.apache.poi.xslf.usermodel.XSLFSlideMaster)}
; {var2829=org.apache.poi.xslf.usermodel.XSLFSlideLayout, var647=r0, var835=org.apache.poi.xslf.usermodel.XSLFSlideMaster, var678=$r1, var2576=$r2, var3264=$r3}
; {org.apache.poi.xslf.usermodel.XSLFSlideLayout=var2829, r0=var647, org.apache.poi.xslf.usermodel.XSLFSlideMaster=var835, $r1=var678, $r2=var2576, $r3=var3264}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlideLayout;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	if $r1 != null goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	$r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	if $r2 != null goto $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	$r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlideLayout: org.apache.poi.xslf.usermodel.XSLFSlideMaster _master>;	return $r3
;block_num 3