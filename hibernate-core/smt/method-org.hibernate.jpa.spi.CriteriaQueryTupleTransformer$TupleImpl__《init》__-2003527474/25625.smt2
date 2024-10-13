(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2445 0)
(declare-sort var1110 0)
(declare-sort var2797 0)
(declare-sort var1253 0)
(declare-sort var3603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-945384285 (var2445) var1110)
(declare-fun <init>/-279557996 (var2797) void)
(declare-fun cast-from-var2445-to-var2797 (var2445) var2797)
(declare-fun getLength-Arr-var2797-1 ((Array Int var2797)) Int)
(declare-fun var1110_access$100/-1993979914 (var1110) var1253)
(declare-fun var1253_size/-959786421 (var1253) Int)
(declare-fun var3603-init () var3603)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3603 String) void)
(declare-const null-var2445 var2445)
(declare-const null-var1110 var1110)
(declare-const null-__Array__Int__var2797__ (Array Int var2797))
(declare-const var680 var2445) ; Statement: r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl 
(assert (not (= var680 null-var2445)))
(declare-const var873 var1110) ; Statement: r1 := @parameter0: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer 
(assert (not (= var873 null-var1110)))
(declare-const var2909 (Array Int var2797)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var2909 null-__Array__Int__var2797__)))
(declare-const var680!1 var2445)
(assert (not (= var680!1 null-var2445)))
(assert (= (this$0/-945384285 var680!1) var873)) ; Statement: r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var2445-to-var2797 var680!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var680!2 var2445)
(define-const var2098 Int (getLength-Arr-var2797-1 var2909)) ; Statement: $i1 = lengthof r2 
(define-const var2744 var1253 (var1110_access$100/-1993979914 var873)) ; Statement: $r3 = staticinvoke <org.hibernate.jpa.spi.CriteriaQueryTupleTransformer: java.util.List access$100(org.hibernate.jpa.spi.CriteriaQueryTupleTransformer)>(r1) 
(define-const var3098 Int (var1253_size/-959786421 var2744)) ; Statement: $i0 = interfaceinvoke $r3.<java.util.List: int size()>() 
 ; Statement: if $i1 == $i0 goto r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> = r2 
(assert (not (= var2098 var3098))) ; Negate: Cond: $i1 == $i0  
(define-const var883 var3603 var3603-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3880 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3880)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3880!1 String)
(assert (= var3880!1 ""))
(assert true)
(define-const var70 String (append/672562846 var3880!1 "Size mismatch between tuple result [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size mismatch between tuple result [") 
(declare-const var3880!2 String)
(assert (= var3880!2 (str.++ var3880!1 "Size mismatch between tuple result [")))
(define-const var1647 Int (getLength-Arr-var2797-1 var2909)) ; Statement: $i2 = lengthof r2 
(assert true)
(define-const var1827 String (append/-1001720160 var70 var1647)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var70!1 String)
(assert (str.prefixof var70 var70!1))
(assert true)
(define-const var2304 String (append/672562846 var1827 "] and expected tuple elements [")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] and expected tuple elements [") 
(declare-const var1827!1 String)
(assert (= var1827!1 (str.++ var1827 "] and expected tuple elements [")))
(define-const var2475 var1253 (var1110_access$100/-1993979914 var873)) ; Statement: $r8 = staticinvoke <org.hibernate.jpa.spi.CriteriaQueryTupleTransformer: java.util.List access$100(org.hibernate.jpa.spi.CriteriaQueryTupleTransformer)>(r1) 
(define-const var1150 Int (var1253_size/-959786421 var2475)) ; Statement: $i3 = interfaceinvoke $r8.<java.util.List: int size()>() 
(assert true)
(define-const var1361 String (append/-1001720160 var2304 var1150)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2304!1 String)
(assert (str.prefixof var2304 var2304!1))
(assert true)
(define-const var3053 String (append/672562846 var1361 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1361!1 String)
(assert (= var1361!1 (str.++ var1361 "]")))
(assert true)
(define-const var1961 String (toString/-2075883882 var3053)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var883 var1961)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var883!1 var3603)
(declare-const var1961!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-945384285=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl], org.hibernate.jpa.spi.CriteriaQueryTupleTransformer), <init>/-279557996=([java.lang.Object], void), cast-from-var2445-to-var2797=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl], java.lang.Object), getLength-Arr-var2797-1=([java.lang.Object[]], int), var1110_access$100/-1993979914=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer], java.util.List), var1253_size/-959786421=([java.util.List], int), var3603-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2445=org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl, var680=r0, var1110=org.hibernate.jpa.spi.CriteriaQueryTupleTransformer, var873=r1, var2797=java.lang.Object, var2909=r2, var2098=$i1, var1253=java.util.List, var2744=$r3, var3098=$i0, var3603=java.lang.IllegalArgumentException, var883=$r4, var3880=$r5, var70=$r6, var1647=$i2, var1827=$r7, var2304=$r9, var2475=$r8, var1150=$i3, var1361=$r10, var3053=$r11, var1961=$r12}
; {org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl=var2445, r0=var680, org.hibernate.jpa.spi.CriteriaQueryTupleTransformer=var1110, r1=var873, java.lang.Object=var2797, r2=var2909, $i1=var2098, java.util.List=var1253, $r3=var2744, $i0=var3098, java.lang.IllegalArgumentException=var3603, $r4=var883, $r5=var3880, $r6=var70, $i2=var1647, $r7=var1827, $r9=var2304, $r8=var2475, $i3=var1150, $r10=var1361, $r11=var3053, $r12=var1961}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl;	r1 := @parameter0: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer;	r2 := @parameter1: java.lang.Object[];	r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i1 = lengthof r2;	$r3 = staticinvoke <org.hibernate.jpa.spi.CriteriaQueryTupleTransformer: java.util.List access$100(org.hibernate.jpa.spi.CriteriaQueryTupleTransformer)>(r1);	$i0 = interfaceinvoke $r3.<java.util.List: int size()>();	if $i1 == $i0 goto r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> = r2;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Size mismatch between tuple result [");	$i2 = lengthof r2;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] and expected tuple elements [");	$r8 = staticinvoke <org.hibernate.jpa.spi.CriteriaQueryTupleTransformer: java.util.List access$100(org.hibernate.jpa.spi.CriteriaQueryTupleTransformer)>(r1);	$i3 = interfaceinvoke $r8.<java.util.List: int size()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r4
;block_num 2