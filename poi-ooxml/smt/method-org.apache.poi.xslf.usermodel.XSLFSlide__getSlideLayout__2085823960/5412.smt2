(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3515 0)
(declare-sort var693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _layout/-1636718259 (var3515) var693)
(declare-const null-var3515 var3515)
(declare-const null-var693 var693)
(declare-const var2621 var3515) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlide 
(assert (not (= var2621 null-var3515)))
(define-const var3971 var693 (_layout/-1636718259 var2621)) ; Statement: $r1 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
(assert (not (= var3971 null-var693))) ; Cond: $r1 != null 
(define-const var102 var693 (_layout/-1636718259 var2621)) ; Statement: $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
(assert (not (= var102 null-var693))) ; Cond: $r2 != null 
(define-const var1390 var693 (_layout/-1636718259 var2621)) ; Statement: $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {_layout/-1636718259=([org.apache.poi.xslf.usermodel.XSLFSlide], org.apache.poi.xslf.usermodel.XSLFSlideLayout)}
; {var3515=org.apache.poi.xslf.usermodel.XSLFSlide, var2621=r0, var693=org.apache.poi.xslf.usermodel.XSLFSlideLayout, var3971=$r1, var102=$r2, var1390=$r3}
; {org.apache.poi.xslf.usermodel.XSLFSlide=var3515, r0=var2621, org.apache.poi.xslf.usermodel.XSLFSlideLayout=var693, $r1=var3971, $r2=var102, $r3=var1390}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFSlide;	$r1 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	if $r1 != null goto $r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	$r2 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	if $r2 != null goto $r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	$r3 = r0.<org.apache.poi.xslf.usermodel.XSLFSlide: org.apache.poi.xslf.usermodel.XSLFSlideLayout _layout>;	return $r3
;block_num 3