(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var439 0)
(declare-sort var1847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun _runs/-1597181400 (var439) var1847)
(declare-fun iterator/529268990 (var1847) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var439 var439)
(declare-const var2042 var439) ; Statement: r1 := @this: org.apache.poi.xddf.usermodel.text.XDDFTextParagraph 
(assert (not (= var2042 null-var439)))
(define-const var3007 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3007)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3007!1 String)
(assert (= var3007!1 ""))
(define-const var2107 var1847 (_runs/-1597181400 var2042)) ; Statement: $r2 = r1.<org.apache.poi.xddf.usermodel.text.XDDFTextParagraph: java.util.ArrayList _runs> 
(assert true)
(define-const var1026 Iterator (iterator/529268990 var2107)) ; Statement: r3 = virtualinvoke $r2.<java.util.ArrayList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1070 Bool (Iterator_hasNext/-1669924200 var1026)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1070 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2678 String (toString/-2075883882 var3007!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), _runs/-1597181400=([org.apache.poi.xddf.usermodel.text.XDDFTextParagraph], java.util.ArrayList), iterator/529268990=([java.util.ArrayList], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var439=org.apache.poi.xddf.usermodel.text.XDDFTextParagraph, var2042=r1, var3007=$r0, var1847=java.util.ArrayList, var2107=$r2, var1026=r3, var1070=$z0, var2678=$r4}
; {org.apache.poi.xddf.usermodel.text.XDDFTextParagraph=var439, r1=var2042, $r0=var3007, java.util.ArrayList=var1847, $r2=var2107, r3=var1026, $z0=var1070, $r4=var2678}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xddf.usermodel.text.XDDFTextParagraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.xddf.usermodel.text.XDDFTextParagraph: java.util.ArrayList _runs>;	r3 = virtualinvoke $r2.<java.util.ArrayList: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3