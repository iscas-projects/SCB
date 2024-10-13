(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var2914 0)
(declare-sort var1109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/-623529951 (var966) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun keys/-63145882 (var966) var2914)
(declare-fun var2914_hasMoreElements/-1180312480 (var2914) Bool)
(declare-fun var2914_nextElement/-898234352 (var2914) var1109)
(declare-fun cast-from-var1109-to-String (var1109) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var966 var966)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var887 var966) ; Statement: r0 := @parameter0: java.util.Hashtable 
(assert (not (= var887 null-var966)))
(assert true)
(define-const var3495 Int (size/-623529951 var887)) ; Statement: $i0 = virtualinvoke r0.<java.util.Hashtable: int size()>() 
(define-const var536 (Array Int String) arr-String-init) ; Statement: r1 = newarray (java.lang.String)[$i0] 
(assert true)
(define-const var1475 var2914 (keys/-63145882 var887)) ; Statement: r2 = virtualinvoke r0.<java.util.Hashtable: java.util.Enumeration keys()>() 
(define-const var3065 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var2115 Bool (var2914_hasMoreElements/-1180312480 var1475)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z0 == 0 goto return r1 
(assert (not (= (ite var2115 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2646 Int 0) ; Statement: i5 = 0 
(define-const var1787 var1109 (var2914_nextElement/-898234352 var1475)) ; Statement: $r3 = interfaceinvoke r2.<java.util.Enumeration: java.lang.Object nextElement()>() 
(define-const var82 String (cast-from-var1109-to-String var1787)) ; Statement: $r4 = (java.lang.String) $r3 
(assert (and true (and (> (str.len var82) 0) (<= 0 0))))
(define-const var503 Int (charAt/698050440 var82 0)) ; Statement: c1 = virtualinvoke $r4.<java.lang.String: char charAt(int)>(0) 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i4 goto (branch) 
(assert (>= var2646 var3065)) ; Cond: i5 >= i4 
 ; Statement: if i5 >= i4 goto r1[i5] = $r4 
(assert (>= var2646 var3065)) ; Cond: i5 >= i4 
(declare-const var536!1 (Array Int String))
(assert (not (= var536!1 null-__Array__Int__String__)))
(assert (= (select var536!1 var2646) var82)) ; Statement: r1[i5] = $r4 
(define-const var3065!1 Int (+ var3065 1)) ; Statement: i4 = i4 + 1 
 ; Statement: goto [?= $z0 = interfaceinvoke r2.<java.util.Enumeration: boolean hasMoreElements()>()] 
(assert true) ; Non Conditional
(define-const var2115!1 Bool (var2914_hasMoreElements/-1180312480 var1475)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z0 == 0 goto return r1 
(assert (= (ite var2115!1 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {size/-623529951=([java.util.Hashtable], int), arr-String-init=([], java.lang.String[]), keys/-63145882=([java.util.Hashtable], java.util.Enumeration), var2914_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), var2914_nextElement/-898234352=([java.util.Enumeration], java.lang.Object), cast-from-var1109-to-String=([java.lang.Object], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var966=java.util.Hashtable, var887=r0, var3495=$i0, var536=r1, var2914=java.util.Enumeration, var1475=r2, var3065=i4, var2115=$z0, var2646=i5, var1109=java.lang.Object, var1787=$r3, var82=$r4, var503=c1}
; {java.util.Hashtable=var966, r0=var887, $i0=var3495, r1=var536, java.util.Enumeration=var2914, r2=var1475, i4=var3065, $z0=var2115, i5=var2646, java.lang.Object=var1109, $r3=var1787, $r4=var82, c1=var503}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.util.Hashtable;	$i0 = virtualinvoke r0.<java.util.Hashtable: int size()>();	r1 = newarray (java.lang.String)[$i0];	r2 = virtualinvoke r0.<java.util.Hashtable: java.util.Enumeration keys()>();	i4 = 0;	$z0 = interfaceinvoke r2.<java.util.Enumeration: boolean hasMoreElements()>();	if $z0 == 0 goto return r1;	i5 = 0;	$r3 = interfaceinvoke r2.<java.util.Enumeration: java.lang.Object nextElement()>();	$r4 = (java.lang.String) $r3;	c1 = virtualinvoke $r4.<java.lang.String: char charAt(int)>(0);	if i5 >= i4 goto (branch);	if i5 >= i4 goto r1[i5] = $r4;	r1[i5] = $r4;	i4 = i4 + 1;	goto [?= $z0 = interfaceinvoke r2.<java.util.Enumeration: boolean hasMoreElements()>()];	$z0 = interfaceinvoke r2.<java.util.Enumeration: boolean hasMoreElements()>();	if $z0 == 0 goto return r1;	return r1
;block_num 8