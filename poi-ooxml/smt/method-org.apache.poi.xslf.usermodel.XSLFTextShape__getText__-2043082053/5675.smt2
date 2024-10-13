(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1496 0)
(declare-sort var2917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun _paragraphs/1087147024 (var1496) var2917)
(declare-fun var2917_iterator/-912451715 (var2917) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1496 var1496)
(declare-const var3018 var1496) ; Statement: r1 := @this: org.apache.poi.xslf.usermodel.XSLFTextShape 
(assert (not (= var3018 null-var1496)))
(define-const var1086 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1086)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1086!1 String)
(assert (= var1086!1 ""))
(define-const var2621 var2917 (_paragraphs/1087147024 var3018)) ; Statement: $r2 = r1.<org.apache.poi.xslf.usermodel.XSLFTextShape: java.util.List _paragraphs> 
(define-const var3044 Iterator (var2917_iterator/-912451715 var2621)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3070 Bool (Iterator_hasNext/-1669924200 var3044)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3070 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3224 String (toString/-2075883882 var1086!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), _paragraphs/1087147024=([org.apache.poi.xslf.usermodel.XSLFTextShape], java.util.List), var2917_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1496=org.apache.poi.xslf.usermodel.XSLFTextShape, var3018=r1, var1086=$r0, var2917=java.util.List, var2621=$r2, var3044=r3, var3070=$z0, var3224=$r4}
; {org.apache.poi.xslf.usermodel.XSLFTextShape=var1496, r1=var3018, $r0=var1086, java.util.List=var2917, $r2=var2621, r3=var3044, $z0=var3070, $r4=var3224}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xslf.usermodel.XSLFTextShape;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.xslf.usermodel.XSLFTextShape: java.util.List _paragraphs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3