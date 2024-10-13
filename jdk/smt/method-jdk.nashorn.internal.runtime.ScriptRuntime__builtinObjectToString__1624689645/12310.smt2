(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3477 0)
(declare-sort var2564 0)
(declare-sort var1342 0)
(declare-sort var2445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2564_ofNoFunction/-1091342154 (var3477) var2564)
(declare-fun ordinal/-291641772 (var2445) Int)
(declare-fun cast-from-var2564-to-var2445 (var2564) var2445)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3477 var3477)
(declare-const var1342-$SwitchMap$jdk$nashorn$internal$runtime$JSType (Array Int Int))
(declare-const var2998 var3477) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2998 null-var3477)))
(define-const var758 var2564 (var2564_ofNoFunction/-1091342154 var2998)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0) 
(define-const var342 (Array Int Int) var1342-$SwitchMap$jdk$nashorn$internal$runtime$JSType) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType> 
(assert true)
(define-const var2570 Int (ordinal/-291641772 (cast-from-var2564-to-var2445 var758))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>() 
(define-const var1969 Int (select var342 var2570)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); } 
(assert (and (= var1969 3) (and (not (= var1969 2)) (and (not (= var1969 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var2419 String "String") ; Statement: r7 = "String" 
 ; Statement: goto [?= $r8 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3585 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3585)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3585!1 String)
(assert (= var3585!1 ""))
(assert true)
;(assert (append/672562846 var3585!1 "[object ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ") 
(declare-const var3585!2 String)
(assert (= var3585!2 (str.++ var3585!1 "[object ")))
(assert true)
;(assert (append/672562846 var3585!2 var2419)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3585!3 String)
(assert (= var3585!3 (str.++ var3585!2 var2419)))
(assert true)
;(assert (append/-1166366385 var3585!3 93)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3585!4 String)
(assert (str.prefixof var3585!3 var3585!4))
(assert true)
(define-const var3940 String (toString/-2075883882 var3585!4)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2564_ofNoFunction/-1091342154=([java.lang.Object], jdk.nashorn.internal.runtime.JSType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2564-to-var2445=([jdk.nashorn.internal.runtime.JSType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3477=java.lang.Object, var2998=r0, var2564=jdk.nashorn.internal.runtime.JSType, var758=r1, var1342=jdk.nashorn.internal.runtime.ScriptRuntime$2, var342=$r2, var2445=java.lang.Enum, var2570=$i0, var1969=$i1, var2419=r7, var3585=$r8, var3940=$r9}
; {java.lang.Object=var3477, r0=var2998, jdk.nashorn.internal.runtime.JSType=var2564, r1=var758, jdk.nashorn.internal.runtime.ScriptRuntime$2=var1342, $r2=var342, java.lang.Enum=var2445, $i0=var2570, $i1=var1969, r7=var2419, $r8=var3585, $r9=var3940}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0);	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); };	r7 = "String";	goto [?= $r8 = new java.lang.StringBuilder];	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3