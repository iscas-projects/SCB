(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3152 0)
(declare-sort var3469 0)
(declare-sort var2533 0)
(declare-sort var1739 0)
(declare-sort var2161 0)
(declare-sort var2708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2533_checkNotNullParameter/-2060636419 (var1739 String) void)
(declare-fun cast-from-String-to-var1739 (String) var1739)
(declare-fun cast-from-var3469-to-var1739 (var3469) var1739)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun encodeString/1872841425 (var2161 String var3469) var2708)
(declare-fun base64/-54072094 (var2708) String)
(declare-const null-String String)
(declare-const null-var3469 var3469)
(declare-const var2708-Companion var2161)
(declare-const var826 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var826 null-String)))
(declare-const var1637 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1637 null-String)))
(declare-const var520 var3469) ; Statement: r2 := @parameter2: java.nio.charset.Charset 
(assert (not (= var520 null-var3469)))
;(assert (var2533_checkNotNullParameter/-2060636419 (cast-from-String-to-var1739 var826) "username")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "username") 

(declare-const var826!1 String)
(declare-const var3653 String)
;(assert (var2533_checkNotNullParameter/-2060636419 (cast-from-String-to-var1739 var1637) "password")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "password") 

(declare-const var1637!1 String)
(declare-const var2816 String)
;(assert (var2533_checkNotNullParameter/-2060636419 (cast-from-var3469-to-var1739 var520) "charset")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "charset") 

(declare-const var520!1 var3469)
(declare-const var1096 String)
(define-const var3705 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3705)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3705!1 String)
(assert (= var3705!1 ""))
(assert true)
(define-const var1390 String (append/672562846 var3705!1 var826!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3705!2 String)
(assert (= var3705!2 (str.++ var3705!1 var826!1)))
(assert true)
(define-const var1707 String (append/-1166366385 var1390 58)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1390!1 String)
(assert (str.prefixof var1390 var1390!1))
(assert true)
(define-const var2600 String (append/672562846 var1707 var1637!1)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1707!1 String)
(assert (= var1707!1 (str.++ var1707 var1637!1)))
(assert true)
(define-const var3214 String (toString/-2075883882 var2600)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2678 var2161 var2708-Companion) ; Statement: $r8 = <okio.ByteString: okio.ByteString$Companion Companion> 
(assert true)
(define-const var537 var2708 (encodeString/1872841425 var2678 var3214 var520!1)) ; Statement: $r9 = virtualinvoke $r8.<okio.ByteString$Companion: okio.ByteString encodeString(java.lang.String,java.nio.charset.Charset)>(r7, r2) 
(assert true)
(define-const var1392 String (base64/-54072094 var537)) ; Statement: r10 = virtualinvoke $r9.<okio.ByteString: java.lang.String base64()>() 
(define-const var1273 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1273)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1273!1 String)
(assert (= var1273!1 ""))
(assert true)
(define-const var3956 String (append/672562846 var1273!1 "Basic ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Basic ") 
(declare-const var1273!2 String)
(assert (= var1273!2 (str.++ var1273!1 "Basic ")))
(assert true)
(define-const var1070 String (append/672562846 var3956 var1392)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3956!1 String)
(assert (= var3956!1 (str.++ var3956 var1392)))
(assert true)
(define-const var3997 String (toString/-2075883882 var1070)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2533_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1739=([java.lang.String], java.lang.Object), cast-from-var3469-to-var1739=([java.nio.charset.Charset], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), encodeString/1872841425=([okio.ByteString$Companion, java.lang.String, java.nio.charset.Charset], okio.ByteString), base64/-54072094=([okio.ByteString], java.lang.String)}
; {var826=r0, var3152=null_type, var1637=r1, var3469=java.nio.charset.Charset, var520=r2, var2533=kotlin.jvm.internal.Intrinsics, var1739=java.lang.Object, var3653="username", var2816="password", var1096="charset", var3705=$r3, var1390=$r4, var1707=$r5, var2600=$r6, var3214=r7, var2161=okio.ByteString$Companion, var2708=okio.ByteString, var2678=$r8, var537=$r9, var1392=r10, var1273=$r11, var3956=$r12, var1070=$r13, var3997=$r14}
; {r0=var826, null_type=var3152, r1=var1637, java.nio.charset.Charset=var3469, r2=var520, kotlin.jvm.internal.Intrinsics=var2533, java.lang.Object=var1739, "username"=var3653, "password"=var2816, "charset"=var1096, $r3=var3705, $r4=var1390, $r5=var1707, $r6=var2600, r7=var3214, okio.ByteString$Companion=var2161, okio.ByteString=var2708, $r8=var2678, $r9=var537, r10=var1392, $r11=var1273, $r12=var3956, $r13=var1070, $r14=var3997}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.nio.charset.Charset;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "username");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "password");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "charset");	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = <okio.ByteString: okio.ByteString$Companion Companion>;	$r9 = virtualinvoke $r8.<okio.ByteString$Companion: okio.ByteString encodeString(java.lang.String,java.nio.charset.Charset)>(r7, r2);	r10 = virtualinvoke $r9.<okio.ByteString: java.lang.String base64()>();	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Basic ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1