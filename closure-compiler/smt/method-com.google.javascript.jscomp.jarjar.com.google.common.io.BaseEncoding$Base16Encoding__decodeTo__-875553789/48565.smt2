(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1183 0)
(declare-sort var3687 0)
(declare-sort var751 0)
(declare-sort var32 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3687_checkNotNull/1446102589 (var751) var751)
(declare-fun cast-from-__Array__Int__Int__-to-var751 ((Array Int Int)) var751)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var32-init () var32)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2135481038 (var32 String) void)
(declare-const null-var1183 var1183)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var674 var1183) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding 
(assert (not (= var674 null-var1183)))
(declare-const var2605 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var2605 null-__Array__Int__Int__)))
(declare-const var722 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var722 null-String)))
;(assert (var3687_checkNotNull/1446102589 (cast-from-__Array__Int__Int__-to-var751 var2605))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2605!1 (Array Int Int))
(define-const var1955 Int (String_length/-667254855 var722)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var2603 Int (mod var1955 2)) ; Statement: $i1 = $i0 % 2 
 ; Statement: if $i1 != 1 goto i13 = 0 
(assert (not (not (= var2603 1)))) ; Negate: Cond: $i1 != 1  
(define-const var1814 var32 var32-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException 
(define-const var173 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var173)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var173!1 String)
(assert (= var173!1 ""))
(assert true)
(define-const var742 String (append/672562846 var173!1 "Invalid input length ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid input length ") 
(declare-const var173!2 String)
(assert (= var173!2 (str.++ var173!1 "Invalid input length ")))
(define-const var3119 Int (String_length/-667254855 var722)) ; Statement: $i12 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var2955 String (append/-1001720160 var742 var3119)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var742!1 String)
(assert (str.prefixof var742 var742!1))
(assert true)
(define-const var3235 String (toString/-2075883882 var2955)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2135481038 var1814 var3235)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException: void <init>(java.lang.String)>($r9) 

(declare-const var1814!1 var32)
(declare-const var3235!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3687_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-__Array__Int__Int__-to-var751=([byte[]], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), var32-init=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2135481038=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException, java.lang.String], void)}
; {var1183=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding, var674=r2, var2605=r0, var722=r1, var3687=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var751=java.lang.Object, var1955=$i0, var2603=$i1, var32=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException, var1814=$r5, var173=$r6, var742=$r7, var3119=$i12, var2955=$r8, var3235=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding=var1183, r2=var674, r0=var2605, r1=var722, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3687, java.lang.Object=var751, $i0=var1955, $i1=var2603, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException=var32, $r5=var1814, $r6=var173, $r7=var742, $i12=var3119, $r8=var2955, $r9=var3235}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Base16Encoding;	r0 := @parameter0: byte[];	r1 := @parameter1: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i1 = $i0 % 2;	if $i1 != 1 goto i13 = 0;	$r5 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid input length ");	$i12 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2