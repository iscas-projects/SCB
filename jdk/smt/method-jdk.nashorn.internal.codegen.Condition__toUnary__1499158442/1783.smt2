(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3061 0)
(declare-sort var2018 0)
(declare-sort var3417 0)
(declare-sort var2776 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3417) Int)
(declare-fun cast-from-var3061-to-var3417 (var3061) var3417)
(declare-fun var2776-init () var2776)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/1761020461 (var3417) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2776 String) void)
(declare-const null-var3061 var3061)
(declare-const var2018-$SwitchMap$jdk$nashorn$internal$codegen$Condition (Array Int Int))
(declare-const var195 var3061) ; Statement: r0 := @parameter0: jdk.nashorn.internal.codegen.Condition 
(assert (not (= var195 null-var3061)))
(define-const var3381 (Array Int Int) var2018-$SwitchMap$jdk$nashorn$internal$codegen$Condition) ; Statement: $r1 = <jdk.nashorn.internal.codegen.Condition$1: int[] $SwitchMap$jdk$nashorn$internal$codegen$Condition> 
(assert true)
(define-const var3233 Int (ordinal/-291641772 (cast-from-var3061-to-var3417 var195))) ; Statement: $i0 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Condition: int ordinal()>() 
(define-const var3188 Int (select var3381 var3233)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return 153;     case 2: goto return 154;     case 3: goto return 158;     case 4: goto return 155;     case 5: goto return 156;     case 6: goto return 157;     default: goto $r2 = new java.lang.UnsupportedOperationException; } 
(assert (and (not (= var3188 6)) (and (not (= var3188 5)) (and (not (= var3188 4)) (and (not (= var3188 3)) (and (not (= var3188 2)) (and (not (= var3188 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var1751 var2776 var2776-init) ; Statement: $r2 = new java.lang.UnsupportedOperationException 
(define-const var3898 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3898)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3898!1 String)
(assert (= var3898!1 ""))
(assert true)
(define-const var3073 String (append/672562846 var3898!1 "toUnary:")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("toUnary:") 
(declare-const var3898!2 String)
(assert (= var3898!2 (str.++ var3898!1 "toUnary:")))
(assert true)
(define-const var948 String (toString/1761020461 (cast-from-var3061-to-var3417 var195))) ; Statement: $r4 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Condition: java.lang.String toString()>() 
(assert true)
(define-const var2698 String (append/672562846 var3073 var948)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3073!1 String)
(assert (= var3073!1 (str.++ var3073 var948)))
(assert true)
(define-const var766 String (toString/-2075883882 var2698)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1751 var766)) ; Statement: specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var1751!1 var2776)
(declare-const var766!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3061-to-var3417=([jdk.nashorn.internal.codegen.Condition], java.lang.Enum), var2776-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/1761020461=([java.lang.Enum], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3061=jdk.nashorn.internal.codegen.Condition, var195=r0, var2018=jdk.nashorn.internal.codegen.Condition$1, var3381=$r1, var3417=java.lang.Enum, var3233=$i0, var3188=$i1, var2776=java.lang.UnsupportedOperationException, var1751=$r2, var3898=$r3, var3073=$r5, var948=$r4, var2698=$r6, var766=$r7}
; {jdk.nashorn.internal.codegen.Condition=var3061, r0=var195, jdk.nashorn.internal.codegen.Condition$1=var2018, $r1=var3381, java.lang.Enum=var3417, $i0=var3233, $i1=var3188, java.lang.UnsupportedOperationException=var2776, $r2=var1751, $r3=var3898, $r5=var3073, $r4=var948, $r6=var2698, $r7=var766}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Enum: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.codegen.Condition;	$r1 = <jdk.nashorn.internal.codegen.Condition$1: int[] $SwitchMap$jdk$nashorn$internal$codegen$Condition>;	$i0 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Condition: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return 153;     case 2: goto return 154;     case 3: goto return 158;     case 4: goto return 155;     case 5: goto return 156;     case 6: goto return 157;     default: goto $r2 = new java.lang.UnsupportedOperationException; };	$r2 = new java.lang.UnsupportedOperationException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("toUnary:");	$r4 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Condition: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2