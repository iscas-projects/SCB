(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3900 0)
(declare-sort var1431 0)
(declare-sort var2588 0)
(declare-sort var1944 0)
(declare-sort var2963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName2/-941001213 (var1431) (Array Int String))
(declare-fun cast-from-var3900-to-var1431 (var3900) var1431)
(declare-fun cast-from-__Array__Int__String__-to-var2588 ((Array Int String)) var2588)
(declare-fun append/-1031950772 (String var1944) String)
(declare-fun cast-from-var2588-to-var1944 (var2588) var1944)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun fieldName/-941001213 (var1431) String)
(declare-fun operator/673404206 (var3900) var2963)
(declare-fun cast-from-var2963-to-var1944 (var2963) var1944)
(declare-fun value/673404206 (var3900) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3900 var3900)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1469 var3900) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment 
(assert (not (= var1469 null-var3900)))
(define-const var1549 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1549)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1549!1 String)
(assert (= var1549!1 ""))
(assert true)
(define-const var2524 String (append/672562846 var1549!1 "[?(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[?(") 
(declare-const var1549!2 String)
(assert (= var1549!2 (str.++ var1549!1 "[?(")))
(define-const var2137 (Array Int String) (fieldName2/-941001213 (cast-from-var3900-to-var1431 var1469))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2> 
 ; Statement: if $r2 != null goto $r15 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2> 
(assert (not (= var2137 null-__Array__Int__String__))) ; Cond: $r2 != null 
(define-const var2440 var2588 (cast-from-__Array__Int__String__-to-var2588 (fieldName2/-941001213 (cast-from-var3900-to-var1431 var1469)))) ; Statement: $r15 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2> 
(assert true) ; Non Conditional
(assert true)
(define-const var3073 String (append/-1031950772 var2524 (cast-from-var2588-to-var1944 var2440))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var2524!1 String)
(assert (str.prefixof var2524 var2524!1))
(assert true)
(define-const var3091 String (append/-1166366385 var3073 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3073!1 String)
(assert (str.prefixof var3073 var3073!1))
(define-const var3503 String (fieldName/-941001213 (cast-from-var3900-to-var1431 var1469))) ; Statement: $r5 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String fieldName> 
(assert true)
(define-const var1266 String (append/672562846 var3091 var3503)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3091!1 String)
(assert (= var3091!1 (str.++ var3091 var3503)))
(assert true)
(define-const var3120 String (append/-1166366385 var1266 32)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1266!1 String)
(assert (str.prefixof var1266 var1266!1))
(define-const var2905 var2963 (operator/673404206 var1469)) ; Statement: $r8 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator> 
(assert true)
(define-const var1410 String (append/-1031950772 var3120 (cast-from-var2963-to-var1944 var2905))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var3120!1 String)
(assert (str.prefixof var3120 var3120!1))
(assert true)
(define-const var2680 String (append/-1166366385 var1410 32)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1410!1 String)
(assert (str.prefixof var1410 var1410!1))
(define-const var2338 Int (value/673404206 var1469)) ; Statement: $l0 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: long value> 
(assert true)
(define-const var3477 String (append/-901862667 var2680 var2338)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var2680!1 String)
(assert (str.prefixof var2680 var2680!1))
(assert true)
(define-const var2911 String (append/672562846 var3477 ")]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]") 
(declare-const var3477!1 String)
(assert (= var3477!1 (str.++ var3477 ")]")))
(assert true)
(define-const var463 String (toString/-2075883882 var2911)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName2/-941001213=([com.alibaba.fastjson2.JSONPathFilter$NameFilter], java.lang.String[]), cast-from-var3900-to-var1431=([com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment], com.alibaba.fastjson2.JSONPathFilter$NameFilter), cast-from-__Array__Int__String__-to-var2588=([java.lang.String[]], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2588-to-var1944=([java.io.Serializable], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), fieldName/-941001213=([com.alibaba.fastjson2.JSONPathFilter$NameFilter], java.lang.String), operator/673404206=([com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment], com.alibaba.fastjson2.JSONPathFilter$Operator), cast-from-var2963-to-var1944=([com.alibaba.fastjson2.JSONPathFilter$Operator], java.lang.Object), value/673404206=([com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3900=com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment, var1469=r1, var1549=$r0, var2524=$r3, var1431=com.alibaba.fastjson2.JSONPathFilter$NameFilter, var2137=$r2, var2588=java.io.Serializable, var2440=$r15, var1944=java.lang.Object, var3073=$r4, var3091=$r6, var3503=$r5, var1266=$r7, var3120=$r9, var2963=com.alibaba.fastjson2.JSONPathFilter$Operator, var2905=$r8, var1410=$r10, var2680=$r11, var2338=$l0, var3477=$r12, var2911=$r13, var463=$r14}
; {com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment=var3900, r1=var1469, $r0=var1549, $r3=var2524, com.alibaba.fastjson2.JSONPathFilter$NameFilter=var1431, $r2=var2137, java.io.Serializable=var2588, $r15=var2440, java.lang.Object=var1944, $r4=var3073, $r6=var3091, $r5=var3503, $r7=var1266, $r9=var3120, com.alibaba.fastjson2.JSONPathFilter$Operator=var2963, $r8=var2905, $r10=var1410, $r11=var2680, $l0=var2338, $r12=var3477, $r13=var2911, $r14=var463}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[?(");	$r2 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2>;	if $r2 != null goto $r15 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2>;	$r15 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String[] fieldName2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r5 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: java.lang.String fieldName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r8 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$l0 = r1.<com.alibaba.fastjson2.JSONPathFilter$NameIntOpSegment: long value>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 3