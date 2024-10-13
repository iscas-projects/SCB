(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2489 0)
(declare-sort var2420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2420-init () var2420)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2420 String) void)
(declare-const null-var2489 var2489)
(declare-const null-Int Int)
(declare-const var81 var2489) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder 
(assert (not (= var81 null-var2489)))
(declare-const var3672 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3672 null-Int)))
 ; Statement: lookupswitch(i0) {     case 1: goto $r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapField internalGetFields()>();     default: goto $r2 = new java.lang.RuntimeException; } 
(assert (and (not (= var3672 1)) true)) ; Intersect: Negate: Cond: i0 == 1   and Non Conditional 
(define-const var2698 var2420 var2420-init) ; Statement: $r2 = new java.lang.RuntimeException 
(define-const var2812 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2812)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2812!1 String)
(assert (= var2812!1 ""))
(assert true)
(define-const var615 String (append/672562846 var2812!1 "Invalid map field number: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid map field number: ") 
(declare-const var2812!2 String)
(assert (= var2812!2 (str.++ var2812!1 "Invalid map field number: ")))
(assert true)
(define-const var2960 String (append/-1001720160 var615 var3672)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var615!1 String)
(assert (str.prefixof var615 var615!1))
(assert true)
(define-const var1097 String (toString/-2075883882 var2960)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2698 var1097)) ; Statement: specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6) 

(declare-const var2698!1 var2420)
(declare-const var1097!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2420-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2489=com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder, var81=r0, var3672=i0, var2420=java.lang.RuntimeException, var2698=$r2, var2812=$r3, var615=$r4, var2960=$r5, var1097=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder=var2489, r0=var81, i0=var3672, java.lang.RuntimeException=var2420, $r2=var2698, $r3=var2812, $r4=var615, $r5=var2960, $r6=var1097}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder;	i0 := @parameter0: int;	lookupswitch(i0) {     case 1: goto $r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Struct$Builder: com.google.javascript.jscomp.jarjar.com.google.protobuf.MapField internalGetFields()>();     default: goto $r2 = new java.lang.RuntimeException; };	$r2 = new java.lang.RuntimeException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid map field number: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.RuntimeException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2