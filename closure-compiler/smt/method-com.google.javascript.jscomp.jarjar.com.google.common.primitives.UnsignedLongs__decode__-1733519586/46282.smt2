(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2502 0)
(declare-sort var1042 0)
(declare-sort var115 0)
(declare-sort var3124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1042_fromString/34806845 (String) var1042)
(declare-fun rawValue/1802554002 (var1042) String)
(declare-fun radix/1802554002 (var1042) Int)
(declare-fun var115-init () var115)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var115 String) void)
(declare-fun initCause/2003336360 (var3124 var3124) var3124)
(declare-fun cast-from-var115-to-var3124 (var115) var3124)
(declare-const null-String String)
(declare-const null-var115 var115)
(declare-const var2292 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2292 null-String)))
(define-const var1941 var1042 (var1042_fromString/34806845 var2292)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest fromString(java.lang.String)>(r0) 
(define-const var3463 String (rawValue/1802554002 var1941)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: java.lang.String rawValue> 
(define-const var2547 Int (radix/1802554002 var1941)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: int radix> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1340 var115) ; Statement: $r3 := @caughtexception 
(assert (not (= var1340 null-var115)))
(define-const var2712 var115 var115-init) ; Statement: $r4 = new java.lang.NumberFormatException 
(define-const var265 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var265)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var265!1 String)
(assert (= var265!1 ""))
(assert true)
(define-const var1487 String (append/672562846 var265!1 "Error parsing value: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing value: ") 
(declare-const var265!2 String)
(assert (= var265!2 (str.++ var265!1 "Error parsing value: ")))
(assert true)
(define-const var229 String (append/672562846 var1487 var2292)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1487!1 String)
(assert (= var1487!1 (str.++ var1487 var2292)))
(assert true)
(define-const var3703 String (toString/-2075883882 var229)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var2712 var3703)) ; Statement: specialinvoke $r4.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r8) 

(declare-const var2712!1 var115)
(declare-const var3703!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var115-to-var3124 var2712!1) (cast-from-var115-to-var3124 var1340))) ; Statement: virtualinvoke $r4.<java.lang.NumberFormatException: java.lang.Throwable initCause(java.lang.Throwable)>($r3) 

(declare-const var2712!2 var115)
(declare-const var1340!1 var115)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1042_fromString/34806845=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest), rawValue/1802554002=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest], java.lang.String), radix/1802554002=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest], int), var115-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var115-to-var3124=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var2292=r0, var2502=null_type, var1042=com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest, var1941=r1, var3463=$r2, var2547=$i0, var115=java.lang.NumberFormatException, var1340=$r3, var2712=$r4, var265=$r5, var1487=$r6, var229=$r7, var3703=$r8, var3124=java.lang.Throwable}
; {r0=var2292, null_type=var2502, com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest=var1042, r1=var1941, $r2=var3463, $i0=var2547, java.lang.NumberFormatException=var115, $r3=var1340, $r4=var2712, $r5=var265, $r6=var1487, $r7=var229, $r8=var3703, java.lang.Throwable=var3124}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest fromString(java.lang.String)>(r0);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: java.lang.String rawValue>;	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: int radix>;	$r3 := @caughtexception;	$r4 = new java.lang.NumberFormatException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing value: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r8);	virtualinvoke $r4.<java.lang.NumberFormatException: java.lang.Throwable initCause(java.lang.Throwable)>($r3);	throw $r4
;block_num 2