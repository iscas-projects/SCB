(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1781 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/1416992618 (var1781) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1781 var1781)
(declare-const var3261 var1781) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFTable 
(assert (not (= var3261 null-var1781)))
(define-const var180 String (text/1416992618 var3261)) ; Statement: $r1 = r0.<org.apache.poi.xwpf.usermodel.XWPFTable: java.lang.StringBuilder text> 
(assert true)
(define-const var287 String (toString/-2075883882 var180)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {text/1416992618=([org.apache.poi.xwpf.usermodel.XWPFTable], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1781=org.apache.poi.xwpf.usermodel.XWPFTable, var3261=r0, var180=$r1, var287=$r2}
; {org.apache.poi.xwpf.usermodel.XWPFTable=var1781, r0=var3261, $r1=var180, $r2=var287}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFTable;	$r1 = r0.<org.apache.poi.xwpf.usermodel.XWPFTable: java.lang.StringBuilder text>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1