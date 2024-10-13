(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3622 0)
(declare-sort var2276 0)
(declare-sort var488 0)
(declare-sort var3233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2276_ofNoFunction/-1091342154 (var3622) var2276)
(declare-fun ordinal/-291641772 (var3233) Int)
(declare-fun cast-from-var2276-to-var3233 (var2276) var3233)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3622 var3622)
(declare-const var488-$SwitchMap$jdk$nashorn$internal$runtime$JSType (Array Int Int))
(declare-const var2341 var3622) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2341 null-var3622)))
(define-const var2020 var2276 (var2276_ofNoFunction/-1091342154 var2341)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0) 
(define-const var1345 (Array Int Int) var488-$SwitchMap$jdk$nashorn$internal$runtime$JSType) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType> 
(assert true)
(define-const var2128 Int (ordinal/-291641772 (cast-from-var2276-to-var3233 var2020))) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>() 
(define-const var720 Int (select var1345 var2128)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); } 
(assert (and (= var720 2) (and (not (= var720 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3274 String "Number") ; Statement: r7 = "Number" 
 ; Statement: goto [?= $r8 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3591 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3591)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3591!1 String)
(assert (= var3591!1 ""))
(assert true)
;(assert (append/672562846 var3591!1 "[object ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ") 
(declare-const var3591!2 String)
(assert (= var3591!2 (str.++ var3591!1 "[object ")))
(assert true)
;(assert (append/672562846 var3591!2 var3274)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3591!3 String)
(assert (= var3591!3 (str.++ var3591!2 var3274)))
(assert true)
;(assert (append/-1166366385 var3591!3 93)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3591!4 String)
(assert (str.prefixof var3591!3 var3591!4))
(assert true)
(define-const var1591 String (toString/-2075883882 var3591!4)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2276_ofNoFunction/-1091342154=([java.lang.Object], jdk.nashorn.internal.runtime.JSType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2276-to-var3233=([jdk.nashorn.internal.runtime.JSType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3622=java.lang.Object, var2341=r0, var2276=jdk.nashorn.internal.runtime.JSType, var2020=r1, var488=jdk.nashorn.internal.runtime.ScriptRuntime$2, var1345=$r2, var3233=java.lang.Enum, var2128=$i0, var720=$i1, var3274=r7, var3591=$r8, var1591=$r9}
; {java.lang.Object=var3622, r0=var2341, jdk.nashorn.internal.runtime.JSType=var2276, r1=var2020, jdk.nashorn.internal.runtime.ScriptRuntime$2=var488, $r2=var1345, java.lang.Enum=var3233, $i0=var2128, $i1=var720, r7=var3274, $r8=var3591, $r9=var1591}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0);	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime$2: int[] $SwitchMap$jdk$nashorn$internal$runtime$JSType>;	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.JSType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto r7 = "Boolean";     case 2: goto r7 = "Number";     case 3: goto r7 = "String";     case 4: goto r7 = "Null";     case 5: goto r7 = "Undefined";     case 6: goto $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;     default: goto $r6 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>(); };	r7 = "Number";	goto [?= $r8 = new java.lang.StringBuilder];	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[object ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3