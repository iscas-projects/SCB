(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2314 0)
(declare-sort var2855 0)
(declare-sort var3498 0)
(declare-sort var3925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-var2855-1 ((Array Int var2855)) Int)
(declare-fun tupleElements/-461818293 (var2314) var3498)
(declare-fun var3498_size/-959786421 (var3498) Int)
(declare-fun var3925-init () var3925)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3925 String) void)
(declare-const null-var2314 var2314)
(declare-const null-__Array__Int__var2855__ (Array Int var2855))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3353 var2314) ; Statement: r1 := @this: org.hibernate.jpa.spi.TupleBuilderTransformer 
(assert (not (= var3353 null-var2314)))
(declare-const var238 (Array Int var2855)) ; Statement: r0 := @parameter0: java.lang.Object[] 
(assert (not (= var238 null-__Array__Int__var2855__)))
(declare-const var2784 (Array Int String)) ; Statement: r13 := @parameter1: java.lang.String[] 
(assert (not (= var2784 null-__Array__Int__String__)))
(define-const var2093 Int (getLength-Arr-var2855-1 var238)) ; Statement: $i1 = lengthof r0 
(define-const var2223 var3498 (tupleElements/-461818293 var3353)) ; Statement: $r2 = r1.<org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.List tupleElements> 
(define-const var2129 Int (var3498_size/-959786421 var2223)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if $i1 == $i0 goto $r3 = new org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl 
(assert (not (= var2093 var2129))) ; Negate: Cond: $i1 == $i0  
(define-const var2620 var3925 var3925-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1298 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1298)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1298!1 String)
(assert (= var1298!1 ""))
(assert true)
(define-const var2233 String (append/672562846 var1298!1 "Size mismatch between tuple result [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size mismatch between tuple result [") 
(declare-const var1298!2 String)
(assert (= var1298!2 (str.++ var1298!1 "Size mismatch between tuple result [")))
(define-const var3429 Int (getLength-Arr-var2855-1 var238)) ; Statement: $i2 = lengthof r0 
(assert true)
(define-const var3736 String (append/-1001720160 var2233 var3429)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2233!1 String)
(assert (str.prefixof var2233 var2233!1))
(assert true)
(define-const var3994 String (append/672562846 var3736 "] and expected tuple elements [")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] and expected tuple elements [") 
(declare-const var3736!1 String)
(assert (= var3736!1 (str.++ var3736 "] and expected tuple elements [")))
(define-const var2509 var3498 (tupleElements/-461818293 var3353)) ; Statement: $r8 = r1.<org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.List tupleElements> 
(define-const var3401 Int (var3498_size/-959786421 var2509)) ; Statement: $i3 = interfaceinvoke $r8.<java.util.List: int size()>() 
(assert true)
(define-const var2458 String (append/-1001720160 var3994 var3401)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3994!1 String)
(assert (str.prefixof var3994 var3994!1))
(assert true)
(define-const var2690 String (append/672562846 var2458 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2458!1 String)
(assert (= var2458!1 (str.++ var2458 "]")))
(assert true)
(define-const var2067 String (toString/-2075883882 var2690)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2620 var2067)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var2620!1 var3925)
(declare-const var2067!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-var2855-1=([java.lang.Object[]], int), tupleElements/-461818293=([org.hibernate.jpa.spi.TupleBuilderTransformer], java.util.List), var3498_size/-959786421=([java.util.List], int), var3925-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2314=org.hibernate.jpa.spi.TupleBuilderTransformer, var3353=r1, var2855=java.lang.Object, var238=r0, var2784=r13, var2093=$i1, var3498=java.util.List, var2223=$r2, var2129=$i0, var3925=java.lang.IllegalArgumentException, var2620=$r4, var1298=$r5, var2233=$r6, var3429=$i2, var3736=$r7, var3994=$r9, var2509=$r8, var3401=$i3, var2458=$r10, var2690=$r11, var2067=$r12}
; {org.hibernate.jpa.spi.TupleBuilderTransformer=var2314, r1=var3353, java.lang.Object=var2855, r0=var238, r13=var2784, $i1=var2093, java.util.List=var3498, $r2=var2223, $i0=var2129, java.lang.IllegalArgumentException=var3925, $r4=var2620, $r5=var1298, $r6=var2233, $i2=var3429, $r7=var3736, $r9=var3994, $r8=var2509, $i3=var3401, $r10=var2458, $r11=var2690, $r12=var2067}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.jpa.spi.TupleBuilderTransformer;	r0 := @parameter0: java.lang.Object[];	r13 := @parameter1: java.lang.String[];	$i1 = lengthof r0;	$r2 = r1.<org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.List tupleElements>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if $i1 == $i0 goto $r3 = new org.hibernate.jpa.spi.TupleBuilderTransformer$HqlTupleImpl;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size mismatch between tuple result [");	$i2 = lengthof r0;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] and expected tuple elements [");	$r8 = r1.<org.hibernate.jpa.spi.TupleBuilderTransformer: java.util.List tupleElements>;	$i3 = interfaceinvoke $r8.<java.util.List: int size()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r4
;block_num 2