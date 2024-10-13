(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var481 0)
(declare-sort var2803 0)
(declare-sort var3772 0)
(declare-sort var3542 0)
(declare-sort var560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var481_getCallSiteDescriptor/-488476513 (var481) var2803)
(declare-fun cast-from-var2803-to-var3772 (var2803) var3772)
(declare-fun getFirstOperator/-1683874211 (var3772) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3542-init () var3542)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var560) String)
(declare-fun cast-from-var3772-to-var560 (var3772) var560)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3542 var560) void)
(declare-fun cast-from-String-to-var560 (String) var560)
(declare-const null-var481 var481)
(declare-const var2314 var481) ; Statement: r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var2314 null-var481)))
(define-const var1165 var2803 (var481_getCallSiteDescriptor/-488476513 var2314)) ; Statement: $r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>() 
(define-const var2389 var3772 (cast-from-var2803-to-var3772 var1165)) ; Statement: r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1 
(assert true)
(define-const var2017 String (getFirstOperator/-1683874211 var2389)) ; Statement: r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>() 
(define-const var1603 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var221 Int (hashCode/-467973558 var2017)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; }; } 
(assert (and (not (= var221 1984877285)) (and (not (= var221 1984543505)) (and (not (= var221 1402960095)) (and (not (= var221 618460119)) (and (not (= var221 3045982)) (and (not (= var221 108960)) (and (not (= var221 (- 75232295))) (and (not (= var221 (- 75566075))) true))))))))) ; Intersect: Negate: Cond: $i0 == 1984877285   and Intersect: Negate: Cond: $i0 == 1984543505   and Intersect: Negate: Cond: $i0 == 1402960095   and Intersect: Negate: Cond: $i0 == 618460119   and Intersect: Negate: Cond: $i0 == 3045982   and Intersect: Negate: Cond: $i0 == 108960   and Intersect: Negate: Cond: $i0 == -75232295   and Intersect: Negate: Cond: $i0 == -75566075   and Non Conditional        
 ; Statement: tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; } 
(assert (and (not (= var1603 7)) (and (not (= var1603 6)) (and (not (= var1603 5)) (and (not (= var1603 4)) (and (not (= var1603 3)) (and (not (= var1603 2)) (and (not (= var1603 1)) (and (not (= var1603 0)) true))))))))) ; Intersect: Negate: Cond: b1 == 7   and Intersect: Negate: Cond: b1 == 6   and Intersect: Negate: Cond: b1 == 5   and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional        
(define-const var3671 var3542 var3542-init) ; Statement: $r15 = new java.lang.AssertionError 
(define-const var914 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var914)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var914!1 String)
(assert (= var914!1 ""))
(assert true)
(define-const var2699 String (append/672562846 var914!1 "unknown call type ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown call type ") 
(declare-const var914!2 String)
(assert (= var914!2 (str.++ var914!1 "unknown call type ")))
(assert true)
(define-const var2605 String (append/-1031950772 var2699 (cast-from-var3772-to-var560 var2389))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2699!1 String)
(assert (str.prefixof var2699 var2699!1))
(assert true)
(define-const var3406 String (toString/-2075883882 var2605)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var3671 (cast-from-String-to-var560 var3406))) ; Statement: specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19) 

(declare-const var3671!1 var3542)
(declare-const var3406!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var481_getCallSiteDescriptor/-488476513=([jdk.internal.dynalink.linker.LinkRequest], jdk.internal.dynalink.CallSiteDescriptor), cast-from-var2803-to-var3772=([jdk.internal.dynalink.CallSiteDescriptor], jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor), getFirstOperator/-1683874211=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3542-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3772-to-var560=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var560=([java.lang.String], java.lang.Object)}
; {var481=jdk.internal.dynalink.linker.LinkRequest, var2314=r0, var2803=jdk.internal.dynalink.CallSiteDescriptor, var1165=$r1, var3772=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var2389=r2, var2017=r3, var1603=b1, var221=$i0, var3542=java.lang.AssertionError, var3671=$r15, var914=$r16, var2699=$r17, var560=java.lang.Object, var2605=$r18, var3406=$r19}
; {jdk.internal.dynalink.linker.LinkRequest=var481, r0=var2314, jdk.internal.dynalink.CallSiteDescriptor=var2803, $r1=var1165, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var3772, r2=var2389, r3=var2017, b1=var1603, $i0=var221, java.lang.AssertionError=var3542, $r15=var3671, $r16=var914, $r17=var2699, java.lang.Object=var560, $r18=var2605, $r19=var3406}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: jdk.internal.dynalink.linker.LinkRequest;	$r1 = interfaceinvoke r0.<jdk.internal.dynalink.linker.LinkRequest: jdk.internal.dynalink.CallSiteDescriptor getCallSiteDescriptor()>();	r2 = (jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor) $r1;	r3 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: java.lang.String getFirstOperator()>();	b1 = -1;	$i0 = virtualinvoke r3.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -75566075: goto $z7 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getElem");     case -75232295: goto $z6 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getProp");     case 108960: goto $z5 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("new");     case 3045982: goto $z4 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("call");     case 618460119: goto $z3 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("getMethod");     case 1402960095: goto $z2 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("callMethod");     case 1984543505: goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setElem");     case 1984877285: goto $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("setProp");     default: goto tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; }; };	tableswitch(b1) {     case 0: goto $r13 = newarray (java.lang.String)[1];     case 1: goto $r13 = newarray (java.lang.String)[1];     case 2: goto $r10 = newarray (java.lang.String)[2];     case 3: goto $r10 = newarray (java.lang.String)[2];     case 4: goto $r7 = newarray (java.lang.String)[2];     case 5: goto $r7 = newarray (java.lang.String)[2];     case 6: goto $r4 = newarray (java.lang.String)[2];     case 7: goto $r4 = newarray (java.lang.String)[2];     default: goto $r15 = new java.lang.AssertionError; };	$r15 = new java.lang.AssertionError;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown call type ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.AssertionError: void <init>(java.lang.Object)>($r19);	throw $r15
;block_num 3