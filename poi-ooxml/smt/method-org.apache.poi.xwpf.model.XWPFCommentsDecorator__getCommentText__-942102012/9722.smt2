(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun commentText/-2129733266 (var2798) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2798 var2798)
(declare-const var1288 var2798) ; Statement: r0 := @this: org.apache.poi.xwpf.model.XWPFCommentsDecorator 
(assert (not (= var1288 null-var2798)))
(define-const var1316 String (commentText/-2129733266 var1288)) ; Statement: $r1 = r0.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: java.lang.StringBuilder commentText> 
(assert true)
(define-const var806 String (toString/-2075883882 var1316)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {commentText/-2129733266=([org.apache.poi.xwpf.model.XWPFCommentsDecorator], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2798=org.apache.poi.xwpf.model.XWPFCommentsDecorator, var1288=r0, var1316=$r1, var806=$r2}
; {org.apache.poi.xwpf.model.XWPFCommentsDecorator=var2798, r0=var1288, $r1=var1316, $r2=var806}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.model.XWPFCommentsDecorator;	$r1 = r0.<org.apache.poi.xwpf.model.XWPFCommentsDecorator: java.lang.StringBuilder commentText>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1