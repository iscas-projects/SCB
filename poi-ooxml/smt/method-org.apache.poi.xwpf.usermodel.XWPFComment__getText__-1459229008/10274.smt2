(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1909 0)
(declare-sort var1009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun paragraphs/-1566387461 (var1909) var1009)
(declare-fun var1009_iterator/-912451715 (var1009) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1909 var1909)
(declare-const var2445 var1909) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFComment 
(assert (not (= var2445 null-var1909)))
(define-const var760 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var760)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var760!1 String)
(assert (= var760!1 ""))
(define-const var1642 var1009 (paragraphs/-1566387461 var2445)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFComment: java.util.List paragraphs> 
(define-const var2873 Iterator (var1009_iterator/-912451715 var1642)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1792 Bool (Iterator_hasNext/-1669924200 var2873)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1792 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1347 String (toString/-2075883882 var760!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), paragraphs/-1566387461=([org.apache.poi.xwpf.usermodel.XWPFComment], java.util.List), var1009_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1909=org.apache.poi.xwpf.usermodel.XWPFComment, var2445=r1, var760=$r0, var1009=java.util.List, var1642=$r2, var2873=r3, var1792=$z0, var1347=$r4}
; {org.apache.poi.xwpf.usermodel.XWPFComment=var1909, r1=var2445, $r0=var760, java.util.List=var1009, $r2=var1642, r3=var2873, $z0=var1792, $r4=var1347}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFComment;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFComment: java.util.List paragraphs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3