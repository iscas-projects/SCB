(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var412 0)
(declare-sort var685 0)
(declare-sort var662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var662_getEnclosingInstanceStack/-1854286439 (var412 Bool) var685)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var685_iterator/-912451715 (var685) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var412 var412)
(declare-const var3789 var412) ; Statement: r0 := @parameter0: org.stringtemplate.v4.InstanceScope 
(assert (not (= var3789 null-var412)))
(define-const var3881 var685 (var662_getEnclosingInstanceStack/-1854286439 var3789 (ite (= 1 1) true false))) ; Statement: r1 = staticinvoke <org.stringtemplate.v4.Interpreter: java.util.List getEnclosingInstanceStack(org.stringtemplate.v4.InstanceScope,boolean)>(r0, 1) 
(define-const var1341 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1341)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1341!1 String)
(assert (= var1341!1 ""))
(define-const var3740 Int 0) ; Statement: i0 = 0 
(define-const var2637 Iterator (var685_iterator/-912451715 var3881)) ; Statement: r3 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1603 Bool (Iterator_hasNext/-1669924200 var2637)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1603 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2500 String (toString/-2075883882 var1341!1)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var662_getEnclosingInstanceStack/-1854286439=([org.stringtemplate.v4.InstanceScope, boolean], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var685_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var412=org.stringtemplate.v4.InstanceScope, var3789=r0, var685=java.util.List, var662=org.stringtemplate.v4.Interpreter, var3881=r1, var1341=$r2, var3740=i0, var2637=r3, var1603=$z0, var2500=$r4}
; {org.stringtemplate.v4.InstanceScope=var412, r0=var3789, java.util.List=var685, org.stringtemplate.v4.Interpreter=var662, r1=var3881, $r2=var1341, i0=var3740, r3=var2637, $z0=var1603, $r4=var2500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.stringtemplate.v4.InstanceScope;	r1 = staticinvoke <org.stringtemplate.v4.Interpreter: java.util.List getEnclosingInstanceStack(org.stringtemplate.v4.InstanceScope,boolean)>(r0, 1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	i0 = 0;	r3 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3