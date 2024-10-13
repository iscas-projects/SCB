(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1582 0)
(declare-sort var1840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-754137886 (var1582) String)
(declare-fun queryReturns/-754137886 (var1582) var1840)
(declare-fun var1840_iterator/-912451715 (var1840) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1582 var1582)
(declare-const var3 var1582) ; Statement: r2 := @this: org.hibernate.engine.ResultSetMappingDefinition 
(assert (not (= var3 null-var1582)))
(define-const var2338 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2338)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2338!1 String)
(assert (= var2338!1 ""))
(assert true)
(define-const var505 String (append/672562846 var2338!1 "ResultSetMappingDefinition[\n")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ResultSetMappingDefinition[\n") 
(declare-const var2338!2 String)
(assert (= var2338!2 (str.++ var2338!1 "ResultSetMappingDefinition[\n")))
(assert true)
(define-const var1930 String (append/672562846 var505 "    name=")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    name=") 
(declare-const var505!1 String)
(assert (= var505!1 (str.++ var505 "    name=")))
(define-const var3512 String (name/-754137886 var3)) ; Statement: $r3 = r2.<org.hibernate.engine.ResultSetMappingDefinition: java.lang.String name> 
(assert true)
(define-const var2083 String (append/672562846 var1930 var3512)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1930!1 String)
(assert (= var1930!1 (str.++ var1930 var3512)))
(assert true)
(define-const var2244 String (append/672562846 var2083 "\n")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2083!1 String)
(assert (= var2083!1 (str.++ var2083 "\n")))
(assert true)
(define-const var3571 String (append/672562846 var2244 "    returns=[\n")) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    returns=[\n") 
(declare-const var2244!1 String)
(assert (= var2244!1 (str.++ var2244 "    returns=[\n")))
(define-const var3787 var1840 (queryReturns/-754137886 var3)) ; Statement: $r8 = r2.<org.hibernate.engine.ResultSetMappingDefinition: java.util.List queryReturns> 
(define-const var1777 Iterator (var1840_iterator/-912451715 var3787)) ; Statement: r9 = interfaceinvoke $r8.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1083 Bool (Iterator_hasNext/-1669924200 var1777)) ; Statement: $z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r10 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ]\n") 
(assert (= (ite var1083 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1690 String (append/672562846 var3571 "    ]\n")) ; Statement: $r10 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ]\n") 
(declare-const var3571!1 String)
(assert (= var3571!1 (str.++ var3571 "    ]\n")))
(assert true)
;(assert (append/672562846 var1690 "]")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1690!1 String)
(assert (= var1690!1 (str.++ var1690 "]")))
(assert true)
(define-const var2820 String (toString/-2075883882 var3571!1)) ; Statement: $r11 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-754137886=([org.hibernate.engine.ResultSetMappingDefinition], java.lang.String), queryReturns/-754137886=([org.hibernate.engine.ResultSetMappingDefinition], java.util.List), var1840_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1582=org.hibernate.engine.ResultSetMappingDefinition, var3=r2, var2338=$r0, var505=$r1, var1930=$r4, var3512=$r3, var2083=$r5, var2244=$r6, var3571=r7, var1840=java.util.List, var3787=$r8, var1777=r9, var1083=$z0, var1690=$r10, var2820=$r11}
; {org.hibernate.engine.ResultSetMappingDefinition=var1582, r2=var3, $r0=var2338, $r1=var505, $r4=var1930, $r3=var3512, $r5=var2083, $r6=var2244, r7=var3571, java.util.List=var1840, $r8=var3787, r9=var1777, $z0=var1083, $r10=var1690, $r11=var2820}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.engine.ResultSetMappingDefinition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ResultSetMappingDefinition[\n");	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    name=");	$r3 = r2.<org.hibernate.engine.ResultSetMappingDefinition: java.lang.String name>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    returns=[\n");	$r8 = r2.<org.hibernate.engine.ResultSetMappingDefinition: java.util.List queryReturns>;	r9 = interfaceinvoke $r8.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r9.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r10 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ]\n");	$r10 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ]\n");	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3