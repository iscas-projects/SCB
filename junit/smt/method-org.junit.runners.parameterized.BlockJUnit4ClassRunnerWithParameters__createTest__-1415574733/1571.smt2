(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var132 0)
(declare-sort var2675 0)
(declare-sort var814 0)
(declare-sort var3713 0)
(declare-sort var522 0)
(declare-sort var3277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInjectionType/351186767 (var132) var2675)
(declare-fun ordinal/-291641772 (var3713) Int)
(declare-fun cast-from-var2675-to-var3713 (var2675) var3713)
(declare-fun var522-init () var522)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3277) String)
(declare-fun cast-from-var2675-to-var3277 (var2675) var3277)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var522 String) void)
(declare-const null-var132 var132)
(declare-const var814-$SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType (Array Int Int))
(declare-const var1964 var132) ; Statement: r0 := @this: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters 
(assert (not (= var1964 null-var132)))
(assert true)
(define-const var3332 var2675 (getInjectionType/351186767 var1964)) ; Statement: r1 = specialinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType getInjectionType()>() 
(define-const var1006 (Array Int Int) var814-$SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType) ; Statement: $r2 = <org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$1: int[] $SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType> 
(assert true)
(define-const var1090 Int (ordinal/-291641772 (cast-from-var2675-to-var3713 var3332))) ; Statement: $i0 = virtualinvoke r1.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType: int ordinal()>() 
(define-const var3269 Int (select var1006 var1090)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r4 = specialinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.Object createTestUsingConstructorInjection()>();     case 2: goto $r3 = specialinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.Object createTestUsingFieldInjection()>();     default: goto $r5 = new java.lang.IllegalStateException; } 
(assert (and (not (= var3269 2)) (and (not (= var3269 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var417 var522 var522-init) ; Statement: $r5 = new java.lang.IllegalStateException 
(define-const var646 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var646)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var646!1 String)
(assert (= var646!1 ""))
(assert true)
(define-const var3368 String (append/672562846 var646!1 "The injection type ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The injection type ") 
(declare-const var646!2 String)
(assert (= var646!2 (str.++ var646!1 "The injection type ")))
(assert true)
(define-const var2242 String (append/-1031950772 var3368 (cast-from-var2675-to-var3277 var3332))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3368!1 String)
(assert (str.prefixof var3368 var3368!1))
(assert true)
(define-const var2897 String (append/672562846 var2242 " is not supported.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported.") 
(declare-const var2242!1 String)
(assert (= var2242!1 (str.++ var2242 " is not supported.")))
(assert true)
(define-const var1904 String (toString/-2075883882 var2897)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var417 var1904)) ; Statement: specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10) 

(declare-const var417!1 var522)
(declare-const var1904!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getInjectionType/351186767=([org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters], org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2675-to-var3713=([org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType], java.lang.Enum), var522-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2675-to-var3277=([org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var132=org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters, var1964=r0, var2675=org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType, var3332=r1, var814=org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$1, var1006=$r2, var3713=java.lang.Enum, var1090=$i0, var3269=$i1, var522=java.lang.IllegalStateException, var417=$r5, var646=$r6, var3368=$r7, var3277=java.lang.Object, var2242=$r8, var2897=$r9, var1904=$r10}
; {org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters=var132, r0=var1964, org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType=var2675, r1=var3332, org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$1=var814, $r2=var1006, java.lang.Enum=var3713, $i0=var1090, $i1=var3269, java.lang.IllegalStateException=var522, $r5=var417, $r6=var646, $r7=var3368, java.lang.Object=var3277, $r8=var2242, $r9=var2897, $r10=var1904}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters;	r1 = specialinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType getInjectionType()>();	$r2 = <org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$1: int[] $SwitchMap$org$junit$runners$parameterized$BlockJUnit4ClassRunnerWithParameters$InjectionType>;	$i0 = virtualinvoke r1.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters$InjectionType: int ordinal()>();	$i1 = $r2[$i0];	lookupswitch($i1) {     case 1: goto $r4 = specialinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.Object createTestUsingConstructorInjection()>();     case 2: goto $r3 = specialinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.Object createTestUsingFieldInjection()>();     default: goto $r5 = new java.lang.IllegalStateException; };	$r5 = new java.lang.IllegalStateException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The injection type ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2