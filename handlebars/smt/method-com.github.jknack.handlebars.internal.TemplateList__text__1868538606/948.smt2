(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var437 0)
(declare-sort var3001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun nodes/1562531319 (var437) var3001)
(declare-fun var3001_iterator/-912451715 (var3001) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var437 var437)
(declare-const var2892 var437) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.TemplateList 
(assert (not (= var2892 null-var437)))
(define-const var208 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var208)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var208!1 String)
(assert (= var208!1 ""))
(define-const var1607 var3001 (nodes/1562531319 var2892)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.TemplateList: java.util.List nodes> 
(define-const var3855 Iterator (var3001_iterator/-912451715 var1607)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2236 Bool (Iterator_hasNext/-1669924200 var3855)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2236 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var369 String (toString/-2075883882 var208!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), nodes/1562531319=([com.github.jknack.handlebars.internal.TemplateList], java.util.List), var3001_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var437=com.github.jknack.handlebars.internal.TemplateList, var2892=r1, var208=$r0, var3001=java.util.List, var1607=$r2, var3855=r3, var2236=$z0, var369=$r4}
; {com.github.jknack.handlebars.internal.TemplateList=var437, r1=var2892, $r0=var208, java.util.List=var3001, $r2=var1607, r3=var3855, $z0=var2236, $r4=var369}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.TemplateList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.TemplateList: java.util.List nodes>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3