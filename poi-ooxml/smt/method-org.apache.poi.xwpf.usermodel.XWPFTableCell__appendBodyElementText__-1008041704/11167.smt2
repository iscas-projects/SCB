(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var344 0)
(declare-sort var1919 0)
(declare-sort var262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1919-to-var262 (var1919) var262)
(declare-fun getText/1120893441 (var262) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var344 var344)
(declare-const null-String String)
(declare-const null-var1919 var1919)
(declare-const null-Bool Bool)
(declare-const var249 var344) ; Statement: r15 := @this: org.apache.poi.xwpf.usermodel.XWPFTableCell 
(assert (not (= var249 null-var344)))
(declare-const var1423 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1423 null-String)))
(declare-const var842 var1919) ; Statement: r0 := @parameter1: org.apache.poi.xwpf.usermodel.IBodyElement 
(assert (not (= var842 null-var1919)))
(declare-const var2901 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var2901 null-Bool)))
(define-const var3211 Bool true) ; Statement: $z0 = r0 instanceof org.apache.poi.xwpf.usermodel.XWPFParagraph 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.apache.poi.xwpf.usermodel.XWPFTable 
(assert (not (= (ite var3211 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var437 var262 (cast-from-var1919-to-var262 var842)) ; Statement: $r18 = (org.apache.poi.xwpf.usermodel.XWPFParagraph) r0 
(assert true)
(define-const var13 String (getText/1120893441 var437)) ; Statement: $r19 = virtualinvoke $r18.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.String getText()>() 
(assert true)
;(assert (append/672562846 var1423 var13)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1423!1 String)
(assert (= var1423!1 (str.++ var1423 var13)))
 ; Statement: if z3 != 0 goto return 
(assert (not (= (ite var2901 1 0) 0))) ; Cond: z3 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1919-to-var262=([org.apache.poi.xwpf.usermodel.IBodyElement], org.apache.poi.xwpf.usermodel.XWPFParagraph), getText/1120893441=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var344=org.apache.poi.xwpf.usermodel.XWPFTableCell, var249=r15, var1423=r1, var1919=org.apache.poi.xwpf.usermodel.IBodyElement, var842=r0, var2901=z3, var3211=$z0, var262=org.apache.poi.xwpf.usermodel.XWPFParagraph, var437=$r18, var13=$r19}
; {org.apache.poi.xwpf.usermodel.XWPFTableCell=var344, r15=var249, r1=var1423, org.apache.poi.xwpf.usermodel.IBodyElement=var1919, r0=var842, z3=var2901, $z0=var3211, org.apache.poi.xwpf.usermodel.XWPFParagraph=var262, $r18=var437, $r19=var13}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r15 := @this: org.apache.poi.xwpf.usermodel.XWPFTableCell;	r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: org.apache.poi.xwpf.usermodel.IBodyElement;	z3 := @parameter2: boolean;	$z0 = r0 instanceof org.apache.poi.xwpf.usermodel.XWPFParagraph;	if $z0 == 0 goto $z1 = r0 instanceof org.apache.poi.xwpf.usermodel.XWPFTable;	$r18 = (org.apache.poi.xwpf.usermodel.XWPFParagraph) r0;	$r19 = virtualinvoke $r18.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.String getText()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	if z3 != 0 goto return;	return
;block_num 3