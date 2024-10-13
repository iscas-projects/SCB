(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1232 0)
(declare-sort var3016 0)
(declare-sort var3077 0)
(declare-sort var924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3077) Int)
(declare-fun cast-from-var1232-to-var3077 (var1232) var3077)
(declare-fun var924-init () var924)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/1761020461 (var3077) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var924 String) void)
(declare-const null-var1232 var1232)
(declare-const null-Bool Bool)
(declare-const var3016-$SwitchMap$jdk$nashorn$internal$codegen$Condition (Array Int Int))
(declare-const var2842 var1232) ; Statement: r0 := @parameter0: jdk.nashorn.internal.codegen.Condition 
(assert (not (= var2842 null-var1232)))
(declare-const var2539 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2539 null-Bool)))
(define-const var3861 (Array Int Int) var3016-$SwitchMap$jdk$nashorn$internal$codegen$Condition) ; Statement: $r1 = <jdk.nashorn.internal.codegen.Condition$1: int[] $SwitchMap$jdk$nashorn$internal$codegen$Condition> 
(assert true)
(define-const var3496 Int (ordinal/-291641772 (cast-from-var1232-to-var3077 var2842))) ; Statement: $i0 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Condition: int ordinal()>() 
(define-const var1574 Int (select var3861 var3496)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto if z0 == 0 goto $s2 = 159;     case 2: goto if z0 == 0 goto $s3 = 160;     case 3: goto return 164;     case 4: goto return 161;     case 5: goto return 162;     case 6: goto return 163;     default: goto $r2 = new java.lang.UnsupportedOperationException; } 
(assert (and (not (= var1574 6)) (and (not (= var1574 5)) (and (not (= var1574 4)) (and (not (= var1574 3)) (and (not (= var1574 2)) (and (not (= var1574 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var2344 var924 var924-init) ; Statement: $r2 = new java.lang.UnsupportedOperationException 
(define-const var3808 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3808)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3808!1 String)
(assert (= var3808!1 ""))
(assert true)
(define-const var2815 String (append/672562846 var3808!1 "toBinary:")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("toBinary:") 
(declare-const var3808!2 String)
(assert (= var3808!2 (str.++ var3808!1 "toBinary:")))
(assert true)
(define-const var1141 String (toString/1761020461 (cast-from-var1232-to-var3077 var2842))) ; Statement: $r4 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Condition: java.lang.String toString()>() 
(assert true)
(define-const var2016 String (append/672562846 var2815 var1141)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2815!1 String)
(assert (= var2815!1 (str.++ var2815 var1141)))
(assert true)
(define-const var3078 String (toString/-2075883882 var2016)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2344 var3078)) ; Statement: specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var2344!1 var924)
(declare-const var3078!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1232-to-var3077=([jdk.nashorn.internal.codegen.Condition], java.lang.Enum), var924-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/1761020461=([java.lang.Enum], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1232=jdk.nashorn.internal.codegen.Condition, var2842=r0, var2539=z0, var3016=jdk.nashorn.internal.codegen.Condition$1, var3861=$r1, var3077=java.lang.Enum, var3496=$i0, var1574=$i1, var924=java.lang.UnsupportedOperationException, var2344=$r2, var3808=$r3, var2815=$r5, var1141=$r4, var2016=$r6, var3078=$r7}
; {jdk.nashorn.internal.codegen.Condition=var1232, r0=var2842, z0=var2539, jdk.nashorn.internal.codegen.Condition$1=var3016, $r1=var3861, java.lang.Enum=var3077, $i0=var3496, $i1=var1574, java.lang.UnsupportedOperationException=var924, $r2=var2344, $r3=var3808, $r5=var2815, $r4=var1141, $r6=var2016, $r7=var3078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Enum: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: jdk.nashorn.internal.codegen.Condition;	z0 := @parameter1: boolean;	$r1 = <jdk.nashorn.internal.codegen.Condition$1: int[] $SwitchMap$jdk$nashorn$internal$codegen$Condition>;	$i0 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Condition: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto if z0 == 0 goto $s2 = 159;     case 2: goto if z0 == 0 goto $s3 = 160;     case 3: goto return 164;     case 4: goto return 161;     case 5: goto return 162;     case 6: goto return 163;     default: goto $r2 = new java.lang.UnsupportedOperationException; };	$r2 = new java.lang.UnsupportedOperationException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("toBinary:");	$r4 = virtualinvoke r0.<jdk.nashorn.internal.codegen.Condition: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 2