(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3462 0)
(declare-sort var3401 0)
(declare-sort var3694 0)
(declare-sort var3427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3401_ofNoFunction/-1091342154 (var3462) var3401)
(declare-fun ordinal/-291641772 (var3427) Int)
(declare-fun cast-from-var3401-to-var3427 (var3401) var3427)
(declare-fun getClass/1258963082 (var3462) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3462 var3462)
(declare-const var3694-$SwitchMap$jdk$nashorn$internal$runtime$JSType (Array Int Int))
(declare-const var3686 var3462) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3686 null-var3462)))
(define-const var1783 var3401 (var3401_ofNoFunction/-1091342154 var3686)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0) 
(define-const var2572 (Array Int Int) var3694-$SwitchMap$jdk$nashorn$internal$runtime$JSType) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType> 
(assert true)
(define-const var3272 Int (ordinal/-291641772 (cast-from-var3401-to-var3427 var1783))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>() 
(define-const var581 Int (select var2572 var3272)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); } 
(assert (and (not (= var581 6)) (and (not (= var581 5)) (and (not (= var581 4)) (and (not (= var581 3)) (and (not (= var581 2)) (and (not (= var581 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(assert true)
(define-const var3855 ClassObject (getClass/1258963082 var3686)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var235 String (getName/-1958580599 var3855)) ; Statement: r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var3998 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3998)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3998!1 String)
(assert (= var3998!1 ""))
(assert true)
;(assert (append/672562846 var3998!1 "[object ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ") 
(declare-const var3998!2 String)
(assert (= var3998!2 (str.++ var3998!1 "[object ")))
(assert true)
;(assert (append/672562846 var3998!2 var235)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3998!3 String)
(assert (= var3998!3 (str.++ var3998!2 var235)))
(assert true)
;(assert (append/-1166366385 var3998!3 93)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3998!4 String)
(assert (str.prefixof var3998!3 var3998!4))
(assert true)
(define-const var3604 String (toString/-2075883882 var3998!4)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3401_ofNoFunction/-1091342154=([java.lang.Object], jdk.nashorn.internal.runtime.JSType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3401-to-var3427=([jdk.nashorn.internal.runtime.JSType], java.lang.Enum), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3462=java.lang.Object, var3686=r0, var3401=jdk.nashorn.internal.runtime.JSType, var1783=r1, var3694=jdk.nashorn.internal.runtime.ScriptRuntime$2, var2572=$r2, var3427=java.lang.Enum, var3272=$i0, var581=$i1, var3855=$r6, var235=r7, var3998=$r8, var3604=$r9}
; {java.lang.Object=var3462, r0=var3686, jdk.nashorn.internal.runtime.JSType=var3401, r1=var1783, jdk.nashorn.internal.runtime.ScriptRuntime$2=var3694, $r2=var2572, java.lang.Enum=var3427, $i0=var3272, $i1=var581, $r6=var3855, r7=var235, $r8=var3998, $r9=var3604}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0);	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); };	$r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3