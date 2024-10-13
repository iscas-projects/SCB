(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1268 0)
(declare-sort var3873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1268_iterator/-1617794947 (var1268) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1268 var1268)
(declare-const null-var3873 var3873)
(declare-const var273 var1268) ; Statement: r1 := @parameter0: java.util.Collection 
(assert (not (= var273 null-var1268)))
(declare-const var3619 var3873) ; Statement: r6 := @parameter1: org.hibernate.internal.util.StringHelper$Renderer 
(assert (not (= var3619 null-var3873)))
(define-const var3640 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3640)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3640!1 String)
(assert (= var3640!1 ""))
(define-const var1856 Iterator (var1268_iterator/-1617794947 var273)) ; Statement: r2 = interfaceinvoke r1.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1889 Bool (Iterator_hasNext/-1669924200 var1856)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1889 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3616 String (toString/-2075883882 var3640!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1268_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1268=java.util.Collection, var273=r1, var3873=org.hibernate.internal.util.StringHelper$Renderer, var3619=r6, var3640=$r0, var1856=r2, var1889=$z0, var3616=$r3}
; {java.util.Collection=var1268, r1=var273, org.hibernate.internal.util.StringHelper$Renderer=var3873, r6=var3619, $r0=var3640, r2=var1856, $z0=var1889, $r3=var3616}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Collection;	r6 := @parameter1: org.hibernate.internal.util.StringHelper$Renderer;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = interfaceinvoke r1.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3