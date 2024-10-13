(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1653 0)
(declare-sort var2936 0)
(declare-sort var2838 0)
(declare-sort var3787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2936_ofNoFunction/-1091342154 (var1653) var2936)
(declare-fun ordinal/-291641772 (var3787) Int)
(declare-fun cast-from-var2936-to-var3787 (var2936) var3787)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1653 var1653)
(declare-const var2838-$SwitchMap$jdk$nashorn$internal$runtime$JSType (Array Int Int))
(declare-const var3456 var1653) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3456 null-var1653)))
(define-const var117 var2936 (var2936_ofNoFunction/-1091342154 var3456)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0) 
(define-const var1456 (Array Int Int) var2838-$SwitchMap$jdk$nashorn$internal$runtime$JSType) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType> 
(assert true)
(define-const var757 Int (ordinal/-291641772 (cast-from-var2936-to-var3787 var117))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>() 
(define-const var2932 Int (select var1456 var757)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); } 
(assert (and (= var2932 4) (and (not (= var2932 3)) (and (not (= var2932 2)) (and (not (= var2932 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var1677 String "Null") ; Statement: r7 = "Null" 
 ; Statement: goto [?= $r8 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var248 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var248)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var248!1 String)
(assert (= var248!1 ""))
(assert true)
;(assert (append/672562846 var248!1 "[object ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ") 
(declare-const var248!2 String)
(assert (= var248!2 (str.++ var248!1 "[object ")))
(assert true)
;(assert (append/672562846 var248!2 var1677)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var248!3 String)
(assert (= var248!3 (str.++ var248!2 var1677)))
(assert true)
;(assert (append/-1166366385 var248!3 93)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var248!4 String)
(assert (str.prefixof var248!3 var248!4))
(assert true)
(define-const var3598 String (toString/-2075883882 var248!4)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2936_ofNoFunction/-1091342154=([java.lang.Object], jdk.nashorn.internal.runtime.JSType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2936-to-var3787=([jdk.nashorn.internal.runtime.JSType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1653=java.lang.Object, var3456=r0, var2936=jdk.nashorn.internal.runtime.JSType, var117=r1, var2838=jdk.nashorn.internal.runtime.ScriptRuntime$2, var1456=$r2, var3787=java.lang.Enum, var757=$i0, var2932=$i1, var1677=r7, var248=$r8, var3598=$r9}
; {java.lang.Object=var1653, r0=var3456, jdk.nashorn.internal.runtime.JSType=var2936, r1=var117, jdk.nashorn.internal.runtime.ScriptRuntime$2=var2838, $r2=var1456, java.lang.Enum=var3787, $i0=var757, $i1=var2932, r7=var1677, $r8=var248, $r9=var3598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0);	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); };	r7 = "Null";	goto [?= $r8 = new java.lang.StringBuilder];	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3