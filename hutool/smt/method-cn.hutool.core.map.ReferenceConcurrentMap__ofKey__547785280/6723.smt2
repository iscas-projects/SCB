(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1795 0)
(declare-sort var585 0)
(declare-sort var557 0)
(declare-sort var627 0)
(declare-sort var2905 0)
(declare-sort var2033 0)
(declare-sort var590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun keyType/1926555733 (var1795) var2905)
(declare-fun ordinal/-291641772 (var2033) Int)
(declare-fun cast-from-var2905-to-var2033 (var2905) var2033)
(declare-fun var590-init () var590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var585) String)
(declare-fun cast-from-var2905-to-var585 (var2905) var585)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var590 String) void)
(declare-const null-var1795 var1795)
(declare-const null-var585 var585)
(declare-const null-var557 var557)
(declare-const var627-$SwitchMap$cn$hutool$core$util$ReferenceUtil$ReferenceType (Array Int Int))
(declare-const var1085 var1795) ; Statement: r0 := @this: cn.hutool.core.map.ReferenceConcurrentMap 
(assert (not (= var1085 null-var1795)))
(declare-const var1557 var585) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var1557 null-var585)))
(declare-const var1784 var557) ; Statement: r5 := @parameter1: java.lang.ref.ReferenceQueue 
(assert (not (= var1784 null-var557)))
(define-const var3653 (Array Int Int) var627-$SwitchMap$cn$hutool$core$util$ReferenceUtil$ReferenceType) ; Statement: $r2 = <cn.hutool.core.map.ReferenceConcurrentMap$1: int[] $SwitchMap$cn$hutool$core$util$ReferenceUtil$ReferenceType> 
(define-const var1158 var2905 (keyType/1926555733 var1085)) ; Statement: $r1 = r0.<cn.hutool.core.map.ReferenceConcurrentMap: cn.hutool.core.util.ReferenceUtil$ReferenceType keyType> 
(assert true)
(define-const var3974 Int (ordinal/-291641772 (cast-from-var2905-to-var2033 var1158))) ; Statement: $i0 = virtualinvoke $r1.<cn.hutool.core.util.ReferenceUtil$ReferenceType: int ordinal()>() 
(define-const var3367 Int (select var3653 var3974)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r6 = new cn.hutool.core.map.ReferenceConcurrentMap$WeakKey;     case 2: goto $r3 = new cn.hutool.core.map.ReferenceConcurrentMap$SoftKey;     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3367 2)) (and (not (= var3367 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1184 var590 var590-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var3286 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3286)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3286!1 String)
(assert (= var3286!1 ""))
(assert true)
(define-const var881 String (append/672562846 var3286!1 "Unsupported key type: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported key type: ") 
(declare-const var3286!2 String)
(assert (= var3286!2 (str.++ var3286!1 "Unsupported key type: ")))
(define-const var3794 var2905 (keyType/1926555733 var1085)) ; Statement: $r9 = r0.<cn.hutool.core.map.ReferenceConcurrentMap: cn.hutool.core.util.ReferenceUtil$ReferenceType keyType> 
(assert true)
(define-const var2967 String (append/-1031950772 var881 (cast-from-var2905-to-var585 var3794))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var881!1 String)
(assert (str.prefixof var881 var881!1))
(assert true)
(define-const var588 String (toString/-2075883882 var2967)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1184 var588)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var1184!1 var590)
(declare-const var588!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {keyType/1926555733=([cn.hutool.core.map.ReferenceConcurrentMap], cn.hutool.core.util.ReferenceUtil$ReferenceType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2905-to-var2033=([cn.hutool.core.util.ReferenceUtil$ReferenceType], java.lang.Enum), var590-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2905-to-var585=([cn.hutool.core.util.ReferenceUtil$ReferenceType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1795=cn.hutool.core.map.ReferenceConcurrentMap, var1085=r0, var585=java.lang.Object, var1557=r4, var557=java.lang.ref.ReferenceQueue, var1784=r5, var627=cn.hutool.core.map.ReferenceConcurrentMap$1, var3653=$r2, var2905=cn.hutool.core.util.ReferenceUtil$ReferenceType, var1158=$r1, var2033=java.lang.Enum, var3974=$i0, var3367=$i1, var590=java.lang.IllegalArgumentException, var1184=$r7, var3286=$r8, var881=$r10, var3794=$r9, var2967=$r11, var588=$r12}
; {cn.hutool.core.map.ReferenceConcurrentMap=var1795, r0=var1085, java.lang.Object=var585, r4=var1557, java.lang.ref.ReferenceQueue=var557, r5=var1784, cn.hutool.core.map.ReferenceConcurrentMap$1=var627, $r2=var3653, cn.hutool.core.util.ReferenceUtil$ReferenceType=var2905, $r1=var1158, java.lang.Enum=var2033, $i0=var3974, $i1=var3367, java.lang.IllegalArgumentException=var590, $r7=var1184, $r8=var3286, $r10=var881, $r9=var3794, $r11=var2967, $r12=var588}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.map.ReferenceConcurrentMap;	r4 := @parameter0: java.lang.Object;	r5 := @parameter1: java.lang.ref.ReferenceQueue;	$r2 = <cn.hutool.core.map.ReferenceConcurrentMap$1: int[] $SwitchMap$cn$hutool$core$util$ReferenceUtil$ReferenceType>;	$r1 = r0.<cn.hutool.core.map.ReferenceConcurrentMap: cn.hutool.core.util.ReferenceUtil$ReferenceType keyType>;	$i0 = virtualinvoke $r1.<cn.hutool.core.util.ReferenceUtil$ReferenceType: int ordinal()>();	$i1 = $r2[$i0];	lookupswitch($i1) {     case 1: goto $r6 = new cn.hutool.core.map.ReferenceConcurrentMap$WeakKey;     case 2: goto $r3 = new cn.hutool.core.map.ReferenceConcurrentMap$SoftKey;     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported key type: ");	$r9 = r0.<cn.hutool.core.map.ReferenceConcurrentMap: cn.hutool.core.util.ReferenceUtil$ReferenceType keyType>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2