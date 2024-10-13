(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var919 0)
(declare-sort var1854 0)
(declare-sort var1623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun delegate/1519540417 (var919) var1854)
(declare-fun append/-1031950772 (String var1623) String)
(declare-fun cast-from-var1854-to-var1623 (var1854) var1623)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun separator/1519540417 (var919) String)
(declare-fun afterEveryChars/1519540417 (var919) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var919 var919)
(declare-const var736 var919) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding 
(assert (not (= var736 null-var919)))
(define-const var2821 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2821)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2821!1 String)
(assert (= var2821!1 ""))
(define-const var1247 var1854 (delegate/1519540417 var736)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate> 
(assert true)
(define-const var2461 String (append/-1031950772 var2821!1 (cast-from-var1854-to-var1623 var1247))) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2821!2 String)
(assert (str.prefixof var2821!1 var2821!2))
(assert true)
(define-const var1085 String (append/672562846 var2461 ".withSeparator(\u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".withSeparator(\"") 
(declare-const var2461!1 String)
(assert (= var2461!1 (str.++ var2461 ".withSeparator(\u0022")))
(define-const var1952 String (separator/1519540417 var736)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: java.lang.String separator> 
(assert true)
(define-const var2146 String (append/672562846 var1085 var1952)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1085!1 String)
(assert (= var1085!1 (str.++ var1085 var1952)))
(assert true)
(define-const var2945 String (append/672562846 var2146 "\u0022, ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\", ") 
(declare-const var2146!1 String)
(assert (= var2146!1 (str.++ var2146 "\u0022, ")))
(define-const var1736 Int (afterEveryChars/1519540417 var736)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: int afterEveryChars> 
(assert true)
(define-const var2526 String (append/-1001720160 var2945 var1736)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2945!1 String)
(assert (str.prefixof var2945 var2945!1))
(assert true)
(define-const var3976 String (append/672562846 var2526 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2526!1 String)
(assert (= var2526!1 (str.++ var2526 ")")))
(assert true)
(define-const var2916 String (toString/-2075883882 var3976)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), delegate/1519540417=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1854-to-var1623=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), separator/1519540417=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding], java.lang.String), afterEveryChars/1519540417=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var919=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding, var736=r1, var2821=$r0, var1854=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, var1247=$r2, var1623=java.lang.Object, var2461=$r3, var1085=$r5, var1952=$r4, var2146=$r6, var2945=$r7, var1736=$i0, var2526=$r8, var3976=$r9, var2916=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding=var919, r1=var736, $r0=var2821, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var1854, $r2=var1247, java.lang.Object=var1623, $r3=var2461, $r5=var1085, $r4=var1952, $r6=var2146, $r7=var2945, $i0=var1736, $r8=var2526, $r9=var3976, $r10=var2916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".withSeparator(\"");	$r4 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: java.lang.String separator>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\", ");	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: int afterEveryChars>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1