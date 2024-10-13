(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2264 0)
(declare-sort var59 0)
(declare-sort var1216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elements/-2042344586 (var2264) var59)
(declare-fun size/-1863229846 (var59) Int)
(declare-fun var1216-init () var1216)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1216 String) void)
(declare-const null-var2264 var2264)
(declare-const var1738 var2264) ; Statement: r0 := @this: com.google.gson.JsonArray 
(assert (not (= var1738 null-var2264)))
(define-const var2783 var59 (elements/-2042344586 var1738)) ; Statement: $r1 = r0.<com.google.gson.JsonArray: java.util.ArrayList elements> 
(assert true)
(define-const var582 Int (size/-1863229846 var2783)) ; Statement: i0 = virtualinvoke $r1.<java.util.ArrayList: int size()>() 
 ; Statement: if i0 != 1 goto $r2 = new java.lang.IllegalStateException 
(assert (not (= var582 1))) ; Cond: i0 != 1 
(define-const var1467 var1216 var1216-init) ; Statement: $r2 = new java.lang.IllegalStateException 
(define-const var1310 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1310)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1310!1 String)
(assert (= var1310!1 ""))
(assert true)
(define-const var3847 String (append/672562846 var1310!1 "Array must have size 1, but has size ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array must have size 1, but has size ") 
(declare-const var1310!2 String)
(assert (= var1310!2 (str.++ var1310!1 "Array must have size 1, but has size ")))
(assert true)
(define-const var2714 String (append/-1001720160 var3847 var582)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3847!1 String)
(assert (str.prefixof var3847 var3847!1))
(assert true)
(define-const var2671 String (toString/-2075883882 var2714)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1467 var2671)) ; Statement: specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6) 

(declare-const var1467!1 var1216)
(declare-const var2671!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {elements/-2042344586=([com.google.gson.JsonArray], java.util.ArrayList), size/-1863229846=([java.util.ArrayList], int), var1216-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2264=com.google.gson.JsonArray, var1738=r0, var59=java.util.ArrayList, var2783=$r1, var582=i0, var1216=java.lang.IllegalStateException, var1467=$r2, var1310=$r3, var3847=$r4, var2714=$r5, var2671=$r6}
; {com.google.gson.JsonArray=var2264, r0=var1738, java.util.ArrayList=var59, $r1=var2783, i0=var582, java.lang.IllegalStateException=var1216, $r2=var1467, $r3=var1310, $r4=var3847, $r5=var2714, $r6=var2671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.JsonArray;	$r1 = r0.<com.google.gson.JsonArray: java.util.ArrayList elements>;	i0 = virtualinvoke $r1.<java.util.ArrayList: int size()>();	if i0 != 1 goto $r2 = new java.lang.IllegalStateException;	$r2 = new java.lang.IllegalStateException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array must have size 1, but has size ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2