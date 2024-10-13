(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1665 0)
(declare-sort var1366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun _runs/5099389 (var1665) var1366)
(declare-fun var1366_iterator/-912451715 (var1366) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1665 var1665)
(declare-const var1126 var1665) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFTextParagraph 
(assert (not (= var1126 null-var1665)))
(define-const var3028 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3028)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3028!1 String)
(assert (= var3028!1 ""))
(define-const var3505 var1366 (_runs/5099389 var1126)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.util.List _runs> 
(define-const var699 Iterator (var1366_iterator/-912451715 var3505)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var788 Bool (Iterator_hasNext/-1669924200 var699)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var788 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3871 String (toString/-2075883882 var3028!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), _runs/5099389=([org.apache.poi.xssf.usermodel.XSSFTextParagraph], java.util.List), var1366_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1665=org.apache.poi.xssf.usermodel.XSSFTextParagraph, var1126=r1, var3028=$r0, var1366=java.util.List, var3505=$r2, var699=r3, var788=$z0, var3871=$r4}
; {org.apache.poi.xssf.usermodel.XSSFTextParagraph=var1665, r1=var1126, $r0=var3028, java.util.List=var1366, $r2=var3505, r3=var699, $z0=var788, $r4=var3871}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFTextParagraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFTextParagraph: java.util.List _runs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3