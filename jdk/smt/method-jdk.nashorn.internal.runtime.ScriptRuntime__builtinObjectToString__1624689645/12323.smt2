(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3393 0)
(declare-sort var1348 0)
(declare-sort var803 0)
(declare-sort var1671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1348_ofNoFunction/-1091342154 (var3393) var1348)
(declare-fun ordinal/-291641772 (var1671) Int)
(declare-fun cast-from-var1348-to-var1671 (var1348) var1671)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3393 var3393)
(declare-const var803-$SwitchMap$jdk$nashorn$internal$runtime$JSType (Array Int Int))
(declare-const var3000 var3393) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3000 null-var3393)))
(define-const var2182 var1348 (var1348_ofNoFunction/-1091342154 var3000)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0) 
(define-const var1677 (Array Int Int) var803-$SwitchMap$jdk$nashorn$internal$runtime$JSType) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType> 
(assert true)
(define-const var2594 Int (ordinal/-291641772 (cast-from-var1348-to-var1671 var2182))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>() 
(define-const var1367 Int (select var1677 var2594)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); } 
(assert (and (= var1367 5) (and (not (= var1367 4)) (and (not (= var1367 3)) (and (not (= var1367 2)) (and (not (= var1367 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var1036 String "Undefined") ; Statement: r7 = "Undefined" 
 ; Statement: goto [?= $r8 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1555 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1555)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1555!1 String)
(assert (= var1555!1 ""))
(assert true)
;(assert (append/672562846 var1555!1 "[object ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ") 
(declare-const var1555!2 String)
(assert (= var1555!2 (str.++ var1555!1 "[object ")))
(assert true)
;(assert (append/672562846 var1555!2 var1036)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1555!3 String)
(assert (= var1555!3 (str.++ var1555!2 var1036)))
(assert true)
;(assert (append/-1166366385 var1555!3 93)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1555!4 String)
(assert (str.prefixof var1555!3 var1555!4))
(assert true)
(define-const var1371 String (toString/-2075883882 var1555!4)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1348_ofNoFunction/-1091342154=([java.lang.Object], jdk.nashorn.internal.runtime.JSType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1348-to-var1671=([jdk.nashorn.internal.runtime.JSType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3393=java.lang.Object, var3000=r0, var1348=jdk.nashorn.internal.runtime.JSType, var2182=r1, var803=jdk.nashorn.internal.runtime.ScriptRuntime$2, var1677=$r2, var1671=java.lang.Enum, var2594=$i0, var1367=$i1, var1036=r7, var1555=$r8, var1371=$r9}
; {java.lang.Object=var3393, r0=var3000, jdk.nashorn.internal.runtime.JSType=var1348, r1=var2182, jdk.nashorn.internal.runtime.ScriptRuntime$2=var803, $r2=var1677, java.lang.Enum=var1671, $i0=var2594, $i1=var1367, r7=var1036, $r8=var1555, $r9=var1371}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0);	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); };	r7 = "Undefined";	goto [?= $r8 = new java.lang.StringBuilder];	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3