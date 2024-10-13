(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2922 0)
(declare-sort var3740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun _runs/-2037041571 (var2922) var3740)
(declare-fun var3740_iterator/-912451715 (var3740) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2922 var2922)
(declare-const var3741 var2922) ; Statement: r1 := @this: org.apache.poi.xslf.usermodel.XSLFTextParagraph 
(assert (not (= var3741 null-var2922)))
(define-const var3847 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3847)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3847!1 String)
(assert (= var3847!1 ""))
(define-const var3862 var3740 (_runs/-2037041571 var3741)) ; Statement: $r2 = r1.<org.apache.poi.xslf.usermodel.XSLFTextParagraph: java.util.List _runs> 
(define-const var2588 Iterator (var3740_iterator/-912451715 var3862)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var523 Bool (Iterator_hasNext/-1669924200 var2588)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var523 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var894 String (toString/-2075883882 var3847!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), _runs/-2037041571=([org.apache.poi.xslf.usermodel.XSLFTextParagraph], java.util.List), var3740_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2922=org.apache.poi.xslf.usermodel.XSLFTextParagraph, var3741=r1, var3847=$r0, var3740=java.util.List, var3862=$r2, var2588=r3, var523=$z0, var894=$r4}
; {org.apache.poi.xslf.usermodel.XSLFTextParagraph=var2922, r1=var3741, $r0=var3847, java.util.List=var3740, $r2=var3862, r3=var2588, $z0=var523, $r4=var894}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xslf.usermodel.XSLFTextParagraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.xslf.usermodel.XSLFTextParagraph: java.util.List _runs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3