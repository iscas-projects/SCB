(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var998 0)
(declare-sort var3025 0)
(declare-sort var2631 0)
(declare-sort var3750 0)
(declare-sort var2800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun symbols/302871663 (var998) var3025)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3025_get/1088891777 (var3025 var2631) var2631)
(declare-fun cast-from-Int-to-var2631 (Int) var2631)
(declare-fun cast-from-var2631-to-String (var2631) String)
(declare-fun var2800-init () var2800)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2800 String) void)
(declare-const null-var998 var998)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3029 var998) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONBDump 
(assert (not (= var3029 null-var998)))
(declare-const var1744 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1744 null-Int)))
 ; Statement: if i0 >= 0 goto $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols> 
(assert (>= var1744 0)) ; Cond: i0 >= 0 
(define-const var1220 var3025 (symbols/302871663 var3029)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols> 
(define-const var3812 Int (Int_valueOf/-1371140006 var1744)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var3459 var2631 (var3025_get/1088891777 var1220 (cast-from-Int-to-var2631 var3812))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var404 String (cast-from-var2631-to-String var3459)) ; Statement: r10 = (java.lang.String) $r3 
(assert true) ; Non Conditional
 ; Statement: if r10 != null goto return r10 
(assert (not (not (= var404 null-String)))) ; Negate: Cond: r10 != null  
(define-const var3083 var2800 var2800-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var2428 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2428)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2428!1 String)
(assert (= var2428!1 ""))
(assert true)
(define-const var3313 String (append/672562846 var2428!1 "symbol not found : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("symbol not found : ") 
(declare-const var2428!2 String)
(assert (= var2428!2 (str.++ var2428!1 "symbol not found : ")))
(assert true)
(define-const var3551 String (append/-1001720160 var3313 var1744)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3313!1 String)
(assert (str.prefixof var3313 var3313!1))
(assert true)
(define-const var2485 String (toString/-2075883882 var3551)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3083 var2485)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var3083!1 var2800)
(declare-const var2485!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {symbols/302871663=([com.alibaba.fastjson2.JSONBDump], java.util.Map), Int_valueOf/-1371140006=([int], java.lang.Integer), var3025_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var2631=([java.lang.Integer], java.lang.Object), cast-from-var2631-to-String=([java.lang.Object], java.lang.String), var2800-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var998=com.alibaba.fastjson2.JSONBDump, var3029=r0, var1744=i0, var3025=java.util.Map, var1220=$r1, var3812=$r2, var2631=java.lang.Object, var3459=$r3, var404=r10, var3750=null_type, var2800=com.alibaba.fastjson2.JSONException, var3083=$r4, var2428=$r5, var3313=$r6, var3551=$r7, var2485=$r8}
; {com.alibaba.fastjson2.JSONBDump=var998, r0=var3029, i0=var1744, java.util.Map=var3025, $r1=var1220, $r2=var3812, java.lang.Object=var2631, $r3=var3459, r10=var404, null_type=var3750, com.alibaba.fastjson2.JSONException=var2800, $r4=var3083, $r5=var2428, $r6=var3313, $r7=var3551, $r8=var2485}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONBDump;	i0 := @parameter0: int;	if i0 >= 0 goto $r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols>;	$r1 = r0.<com.alibaba.fastjson2.JSONBDump: java.util.Map symbols>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r10 = (java.lang.String) $r3;	if r10 != null goto return r10;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("symbol not found : ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 4