(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var875 0)
(declare-sort var2024 0)
(declare-sort var3107 0)
(declare-sort var2815 0)
(declare-sort var540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3107_getEnclosingInstanceStack/-1854286439 (var875 Bool) var2024)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2024_iterator/-912451715 (var2024) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var2815)
(declare-fun cast-from-var2815-to-var540 (var2815) var540)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/621987389 (var540) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var875 var875)
(declare-const var3017 var875) ; Statement: r0 := @parameter0: org.stringtemplate.v4.InstanceScope 
(assert (not (= var3017 null-var875)))
(define-const var498 var2024 (var3107_getEnclosingInstanceStack/-1854286439 var3017 (ite (= 1 1) true false))) ; Statement: r1 = staticinvoke <org.stringtemplate.v4.Interpreter: java.util.List getEnclosingInstanceStack(org.stringtemplate.v4.InstanceScope,boolean)>(r0, 1) 
(define-const var31 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var31)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var31!1 String)
(assert (= var31!1 ""))
(define-const var373 Int 0) ; Statement: i0 = 0 
(define-const var1928 Iterator (var2024_iterator/-912451715 var498)) ; Statement: r3 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2678 Bool (Iterator_hasNext/-1669924200 var1928)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var2678 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2216 var2815 (Iterator_next/-1124697587 var1928)) ; Statement: $r5 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1928!1 Iterator)
(define-const var2753 var540 (cast-from-var2815-to-var540 var2216)) ; Statement: r6 = (org.stringtemplate.v4.ST) $r5 
 ; Statement: if i0 <= 0 goto $r7 = virtualinvoke r6.<org.stringtemplate.v4.ST: java.lang.String getName()>() 
(assert (not (<= var373 0))) ; Negate: Cond: i0 <= 0  
(assert true)
;(assert (append/672562846 var31!1 " ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var31!2 String)
(assert (= var31!2 (str.++ var31!1 " ")))
(assert true) ; Non Conditional
(assert true)
(define-const var317 String (getName/621987389 var2753)) ; Statement: $r7 = virtualinvoke r6.<org.stringtemplate.v4.ST: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var31!2 var317)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var31!3 String)
(assert (= var31!3 (str.++ var31!2 var317)))
(define-const var373!1 Int (+ var373 1)) ; Statement: i0 = i0 + 1 
 ; Statement: goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()] 
(assert true) ; Non Conditional
(define-const var2678!1 Bool (Iterator_hasNext/-1669924200 var1928!1)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2678!1 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2766 String (toString/-2075883882 var31!3)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3107_getEnclosingInstanceStack/-1854286439=([org.stringtemplate.v4.InstanceScope, boolean], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2024_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object), cast-from-var2815-to-var540=([java.lang.Object], org.stringtemplate.v4.ST), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/621987389=([org.stringtemplate.v4.ST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var875=org.stringtemplate.v4.InstanceScope, var3017=r0, var2024=java.util.List, var3107=org.stringtemplate.v4.Interpreter, var498=r1, var31=$r2, var373=i0, var1928=r3, var2678=$z0, var2815=java.lang.Object, var2216=$r5, var540=org.stringtemplate.v4.ST, var2753=r6, var317=$r7, var2766=$r4}
; {org.stringtemplate.v4.InstanceScope=var875, r0=var3017, java.util.List=var2024, org.stringtemplate.v4.Interpreter=var3107, r1=var498, $r2=var31, i0=var373, r3=var1928, $z0=var2678, java.lang.Object=var2815, $r5=var2216, org.stringtemplate.v4.ST=var540, r6=var2753, $r7=var317, $r4=var2766}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.stringtemplate.v4.InstanceScope;	r1 = staticinvoke <org.stringtemplate.v4.Interpreter: java.util.List getEnclosingInstanceStack(org.stringtemplate.v4.InstanceScope,boolean)>(r0, 1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	i0 = 0;	r3 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = interfaceinvoke r3.<java.util.Iterator: java.lang.Object next()>();	r6 = (org.stringtemplate.v4.ST) $r5;	if i0 <= 0 goto $r7 = virtualinvoke r6.<org.stringtemplate.v4.ST: java.lang.String getName()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r7 = virtualinvoke r6.<org.stringtemplate.v4.ST: java.lang.String getName()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	i0 = i0 + 1;	goto [?= $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>()];	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 7