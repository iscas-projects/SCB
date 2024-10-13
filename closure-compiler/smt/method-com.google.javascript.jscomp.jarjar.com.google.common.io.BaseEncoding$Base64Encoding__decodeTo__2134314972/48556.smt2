(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1995 0)
(declare-sort var3043 0)
(declare-sort var957 0)
(declare-sort var2444 0)
(declare-sort var2440 0)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3043_checkNotNull/1446102589 (var957) var957)
(declare-fun cast-from-__Array__Int__Int__-to-var957 ((Array Int Int)) var957)
(declare-fun trimTrailingPadding/35071171 (var2444 String) String)
(declare-fun cast-from-var1995-to-var2444 (var1995) var2444)
(declare-fun alphabet/988383717 (var2444) var2440)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun isValidPaddingStartPosition/-688529097 (var2440 Int) Bool)
(declare-fun var2636-init () var2636)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2135481038 (var2636 String) void)
(declare-const null-var1995 var1995)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var286 var1995) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding 
(assert (not (= var286 null-var1995)))
(declare-const var842 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var842 null-__Array__Int__Int__)))
(declare-const var2136 String) ; Statement: r12 := @parameter1: java.lang.CharSequence 
(assert (not (= var2136 null-String)))
;(assert (var3043_checkNotNull/1446102589 (cast-from-__Array__Int__Int__-to-var957 var842))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var842!1 (Array Int Int))
(assert true)
(define-const var3176 String (trimTrailingPadding/35071171 (cast-from-var1995-to-var2444 var286) var2136)) ; Statement: r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding: java.lang.CharSequence trimTrailingPadding(java.lang.CharSequence)>(r12) 
(define-const var1186 var2440 (alphabet/988383717 (cast-from-var1995-to-var2444 var286))) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet> 
(define-const var3184 Int (String_length/-667254855 var3176)) ; Statement: $i0 = interfaceinvoke r13.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var3234 Bool (isValidPaddingStartPosition/-688529097 var1186 var3184)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: boolean isValidPaddingStartPosition(int)>($i0) 
 ; Statement: if $z0 != 0 goto i27 = 0 
(assert (not (not (= (ite var3234 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1736 var2636 var2636-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException 
(define-const var2839 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2839)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2839!1 String)
(assert (= var2839!1 ""))
(assert true)
(define-const var2000 String (append/672562846 var2839!1 "Invalid input length ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid input length ") 
(declare-const var2839!2 String)
(assert (= var2839!2 (str.++ var2839!1 "Invalid input length ")))
(define-const var2266 Int (String_length/-667254855 var3176)) ; Statement: $i26 = interfaceinvoke r13.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var733 String (append/-1001720160 var2000 var2266)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i26) 
(declare-const var2000!1 String)
(assert (str.prefixof var2000 var2000!1))
(assert true)
(define-const var3421 String (toString/-2075883882 var733)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2135481038 var1736 var3421)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException: void <init>(java.lang.String)>($r11) 

(declare-const var1736!1 var2636)
(declare-const var3421!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3043_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-__Array__Int__Int__-to-var957=([byte[]], java.lang.Object), trimTrailingPadding/35071171=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, java.lang.CharSequence], java.lang.CharSequence), cast-from-var1995-to-var2444=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding), alphabet/988383717=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet), String_length/-667254855=([java.lang.CharSequence], int), isValidPaddingStartPosition/-688529097=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, int], boolean), var2636-init=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2135481038=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException, java.lang.String], void)}
; {var1995=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding, var286=r1, var842=r0, var2136=r12, var3043=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var957=java.lang.Object, var2444=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, var3176=r13, var2440=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var1186=$r2, var3184=$i0, var3234=$z0, var2636=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException, var1736=$r7, var2839=$r8, var2000=$r9, var2266=$i26, var733=$r10, var3421=$r11}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding=var1995, r1=var286, r0=var842, r12=var2136, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3043, java.lang.Object=var957, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding=var2444, r13=var3176, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var2440, $r2=var1186, $i0=var3184, $z0=var3234, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException=var2636, $r7=var1736, $r8=var2839, $r9=var2000, $i26=var2266, $r10=var733, $r11=var3421}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding;	r0 := @parameter0: byte[];	r12 := @parameter1: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	r13 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding: java.lang.CharSequence trimTrailingPadding(java.lang.CharSequence)>(r12);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base64Encoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet>;	$i0 = interfaceinvoke r13.<java.lang.CharSequence: int length()>();	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: boolean isValidPaddingStartPosition(int)>($i0);	if $z0 != 0 goto i27 = 0;	$r7 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid input length ");	$i26 = interfaceinvoke r13.<java.lang.CharSequence: int length()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i26);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2