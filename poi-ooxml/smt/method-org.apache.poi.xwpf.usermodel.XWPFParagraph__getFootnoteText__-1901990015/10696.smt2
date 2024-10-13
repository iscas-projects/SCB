(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun footnoteText/1384511242 (var1165) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1165 var1165)
(declare-const var2124 var1165) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var2124 null-var1165)))
(define-const var2653 String (footnoteText/1384511242 var2124)) ; Statement: $r1 = r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.StringBuilder footnoteText> 
(assert true)
(define-const var1086 String (toString/-2075883882 var2653)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {footnoteText/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1165=org.apache.poi.xwpf.usermodel.XWPFParagraph, var2124=r0, var2653=$r1, var1086=$r2}
; {org.apache.poi.xwpf.usermodel.XWPFParagraph=var1165, r0=var2124, $r1=var2653, $r2=var1086}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph;	$r1 = r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.StringBuilder footnoteText>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1