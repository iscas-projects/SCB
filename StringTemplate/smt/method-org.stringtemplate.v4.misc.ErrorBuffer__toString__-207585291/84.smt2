(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var593 0)
(declare-sort var204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun errors/1515792413 (var593) var204)
(declare-fun var204_iterator/-912451715 (var204) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var593 var593)
(declare-const var3263 var593) ; Statement: r1 := @this: org.stringtemplate.v4.misc.ErrorBuffer 
(assert (not (= var3263 null-var593)))
(define-const var2304 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2304)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2304!1 String)
(assert (= var2304!1 ""))
(define-const var3999 var204 (errors/1515792413 var3263)) ; Statement: $r2 = r1.<org.stringtemplate.v4.misc.ErrorBuffer: java.util.List errors> 
(define-const var2722 Iterator (var204_iterator/-912451715 var3999)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var19 Bool (Iterator_hasNext/-1669924200 var2722)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var19 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1139 String (toString/-2075883882 var2304!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), errors/1515792413=([org.stringtemplate.v4.misc.ErrorBuffer], java.util.List), var204_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var593=org.stringtemplate.v4.misc.ErrorBuffer, var3263=r1, var2304=$r0, var204=java.util.List, var3999=$r2, var2722=r3, var19=$z0, var1139=$r4}
; {org.stringtemplate.v4.misc.ErrorBuffer=var593, r1=var3263, $r0=var2304, java.util.List=var204, $r2=var3999, r3=var2722, $z0=var19, $r4=var1139}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.misc.ErrorBuffer;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.stringtemplate.v4.misc.ErrorBuffer: java.util.List errors>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3