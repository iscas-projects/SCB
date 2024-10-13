(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1055 0)
(declare-sort var1186 0)
(declare-sort var2554 0)
(declare-sort var1950 0)
(declare-sort var2828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2554_getEnclosingInstanceStack/-1854286439 (var1055 Bool) var1186)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1186_iterator/-912451715 (var1186) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1950)
(declare-fun cast-from-var1950-to-var2828 (var1950) var2828)
(declare-fun getName/621987389 (var2828) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1055 var1055)
(declare-const var1006 var1055) ; Statement: r0 := @parameter0: org.stringtemplate.v4.InstanceScope 
(assert (not (= var1006 null-var1055)))
(define-const var3519 var1186 (var2554_getEnclosingInstanceStack/-1854286439 var1006 (ite (= 1 1) true false))) ; Statement: r1 = staticinvoke <org.stringtemplate.v4.Interpreter: java.util.List getEnclosingInstanceStack(org.stringtemplate.v4.InstanceScope,boolean)>(r0, 1) 
(define-const var2048 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2048)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2048!1 String)
(assert (= var2048!1 ""))
(define-const var3462 Int 0) ; Statement: i0 = 0 
(define-const var1715 Iterator (var1186_iterator/-912451715 var3519)) ; Statement: r3 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3595 Bool (Iterator_hasNext/-1669924200 var1715)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var3595 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3198 var1950 (Iterator_next/-1124697587 var1715)) ; Statement: $r5 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1715!1 Iterator)
(define-const var3435 var2828 (cast-from-var1950-to-var2828 var3198)) ; Statement: r6 = (org.stringtemplate.v4.ST) $r5 
 ; Statement: if i0 <= 0 goto $r7 = virtualinvoke r6.<org.stringtemplate.v4.ST: java.lang.String getName()>() 
(assert (<= var3462 0)) ; Cond: i0 <= 0 
(assert true)
(define-const var1767 String (getName/621987389 var3435)) ; Statement: $r7 = virtualinvoke r6.<org.stringtemplate.v4.ST: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var2048!1 var1767)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2048!2 String)
(assert (= var2048!2 (str.++ var2048!1 var1767)))
(define-const var3462!1 Int (+ var3462 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var3595!1 Bool (Iterator_hasNext/-1669924200 var1715!1)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3595!1 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3799 String (toString/-2075883882 var2048!2)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2554_getEnclosingInstanceStack/-1854286439=([org.stringtemplate.v4.InstanceScope, boolean], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1186_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var1950-to-var2828=([java.lang.Object], org.stringtemplate.v4.ST), getName/621987389=([org.stringtemplate.v4.ST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1055=org.stringtemplate.v4.InstanceScope, var1006=r0, var1186=java.util.List, var2554=org.stringtemplate.v4.Interpreter, var3519=r1, var2048=$r2, var3462=i0, var1715=r3, var3595=$z0, var1950=java.lang.Object, var3198=$r5, var2828=org.stringtemplate.v4.ST, var3435=r6, var1767=$r7, var3799=$r4}
; {org.stringtemplate.v4.InstanceScope=var1055, r0=var1006, java.util.List=var1186, org.stringtemplate.v4.Interpreter=var2554, r1=var3519, $r2=var2048, i0=var3462, r3=var1715, $z0=var3595, java.lang.Object=var1950, $r5=var3198, org.stringtemplate.v4.ST=var2828, r6=var3435, $r7=var1767, $r4=var3799}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.stringtemplate.v4.InstanceScope;	r1 = staticinvoke <org.stringtemplate.v4.Interpreter: java.util.List getEnclosingInstanceStack(org.stringtemplate.v4.InstanceScope,boolean)>(r0, 1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	i0 = 0;	r3 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r6 = (org.stringtemplate.v4.ST) $r5;	if i0 <= 0 goto $r7 = virtualinvoke r6.<org.stringtemplate.v4.ST: java.lang.String getName()>();	$r7 = virtualinvoke r6.<org.stringtemplate.v4.ST: java.lang.String getName()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	i0 = i0 + 1;	goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 6