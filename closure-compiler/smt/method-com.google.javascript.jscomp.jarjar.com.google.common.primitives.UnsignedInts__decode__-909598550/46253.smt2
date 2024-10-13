(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var358 0)
(declare-sort var3185 0)
(declare-sort var1901 0)
(declare-sort var1174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3185_fromString/34806845 (String) var3185)
(declare-fun rawValue/1802554002 (var3185) String)
(declare-fun radix/1802554002 (var3185) Int)
(declare-fun var1901-init () var1901)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var1901 String) void)
(declare-fun initCause/2003336360 (var1174 var1174) var1174)
(declare-fun cast-from-var1901-to-var1174 (var1901) var1174)
(declare-const null-String String)
(declare-const null-var1901 var1901)
(declare-const var681 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var681 null-String)))
(define-const var3637 var3185 (var3185_fromString/34806845 var681)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest fromString(java.lang.String)>(r0) 
(define-const var2368 String (rawValue/1802554002 var3637)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: java.lang.String rawValue> 
(define-const var3102 Int (radix/1802554002 var3637)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: int radix> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3072 var1901) ; Statement: $r3 := @caughtexception 
(assert (not (= var3072 null-var1901)))
(define-const var2286 var1901 var1901-init) ; Statement: $r4 = new java.lang.NumberFormatException 
(define-const var3095 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3095)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3095!1 String)
(assert (= var3095!1 ""))
(assert true)
(define-const var729 String (append/672562846 var3095!1 "Error parsing value: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing value: ") 
(declare-const var3095!2 String)
(assert (= var3095!2 (str.++ var3095!1 "Error parsing value: ")))
(assert true)
(define-const var1666 String (append/672562846 var729 var681)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var729!1 String)
(assert (= var729!1 (str.++ var729 var681)))
(assert true)
(define-const var3197 String (toString/-2075883882 var1666)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var2286 var3197)) ; Statement: specialinvoke $r4.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r8) 

(declare-const var2286!1 var1901)
(declare-const var3197!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1901-to-var1174 var2286!1) (cast-from-var1901-to-var1174 var3072))) ; Statement: virtualinvoke $r4.<java.lang.NumberFormatException: java.lang.Throwable initCause(java.lang.Throwable)>($r3) 

(declare-const var2286!2 var1901)
(declare-const var3072!1 var1901)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3185_fromString/34806845=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest), rawValue/1802554002=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest], java.lang.String), radix/1802554002=([com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest], int), var1901-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1901-to-var1174=([java.lang.NumberFormatException], java.lang.Throwable)}
; {var681=r0, var358=null_type, var3185=com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest, var3637=r1, var2368=$r2, var3102=$i0, var1901=java.lang.NumberFormatException, var3072=$r3, var2286=$r4, var3095=$r5, var729=$r6, var1666=$r7, var3197=$r8, var1174=java.lang.Throwable}
; {r0=var681, null_type=var358, com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest=var3185, r1=var3637, $r2=var2368, $i0=var3102, java.lang.NumberFormatException=var1901, $r3=var3072, $r4=var2286, $r5=var3095, $r6=var729, $r7=var1666, $r8=var3197, java.lang.Throwable=var1174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest fromString(java.lang.String)>(r0);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: java.lang.String rawValue>;	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.primitives.ParseRequest: int radix>;	$r3 := @caughtexception;	$r4 = new java.lang.NumberFormatException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing value: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r8);	virtualinvoke $r4.<java.lang.NumberFormatException: java.lang.Throwable initCause(java.lang.Throwable)>($r3);	throw $r4
;block_num 2