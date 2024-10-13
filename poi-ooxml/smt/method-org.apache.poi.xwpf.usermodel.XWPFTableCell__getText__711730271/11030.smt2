(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2039 0)
(declare-sort var3417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun paragraphs/1741148140 (var2039) var3417)
(declare-fun var3417_iterator/-912451715 (var3417) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2039 var2039)
(declare-const var8 var2039) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFTableCell 
(assert (not (= var8 null-var2039)))
(define-const var980 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var980)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var980!1 String)
(assert (= var980!1 ""))
(define-const var3120 var3417 (paragraphs/1741148140 var8)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFTableCell: java.util.List paragraphs> 
(define-const var3408 Iterator (var3417_iterator/-912451715 var3120)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3687 Bool (Iterator_hasNext/-1669924200 var3408)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3687 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var251 String (toString/-2075883882 var980!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), paragraphs/1741148140=([org.apache.poi.xwpf.usermodel.XWPFTableCell], java.util.List), var3417_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2039=org.apache.poi.xwpf.usermodel.XWPFTableCell, var8=r1, var980=$r0, var3417=java.util.List, var3120=$r2, var3408=r3, var3687=$z0, var251=$r4}
; {org.apache.poi.xwpf.usermodel.XWPFTableCell=var2039, r1=var8, $r0=var980, java.util.List=var3417, $r2=var3120, r3=var3408, $z0=var3687, $r4=var251}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFTableCell;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFTableCell: java.util.List paragraphs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3