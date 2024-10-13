(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3805 0)
(declare-sort var2366 0)
(declare-sort var3026 0)
(declare-sort var2453 0)
(declare-sort var3927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2366_checkNotNull/1446102589 (var3026) var3026)
(declare-fun cast-from-__Array__Int__Int__-to-var3026 ((Array Int Int)) var3026)
(declare-fun trimTrailingPadding/35071171 (var3805 String) String)
(declare-fun alphabet/988383717 (var3805) var2453)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun isValidPaddingStartPosition/-688529097 (var2453 Int) Bool)
(declare-fun var3927-init () var3927)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2135481038 (var3927 String) void)
(declare-const null-var3805 var3805)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var76 var3805) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding 
(assert (not (= var76 null-var3805)))
(declare-const var1191 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1191 null-__Array__Int__Int__)))
(declare-const var43 String) ; Statement: r15 := @parameter1: java.lang.CharSequence 
(assert (not (= var43 null-String)))
;(assert (var2366_checkNotNull/1446102589 (cast-from-__Array__Int__Int__-to-var3026 var1191))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1191!1 (Array Int Int))
(assert true)
(define-const var3405 String (trimTrailingPadding/35071171 var76 var43)) ; Statement: r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: java.lang.CharSequence trimTrailingPadding(java.lang.CharSequence)>(r15) 
(define-const var685 var2453 (alphabet/988383717 var76)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet> 
(define-const var2899 Int (String_length/-667254855 var3405)) ; Statement: $i0 = interfaceinvoke r16.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var2865 Bool (isValidPaddingStartPosition/-688529097 var685 var2899)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: boolean isValidPaddingStartPosition(int)>($i0) 
 ; Statement: if $z0 != 0 goto i24 = 0 
(assert (not (not (= (ite var2865 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2081 var3927 var3927-init) ; Statement: $r18 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException 
(define-const var390 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var390)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var390!1 String)
(assert (= var390!1 ""))
(assert true)
(define-const var2489 String (append/672562846 var390!1 "Invalid input length ")) ; Statement: $r12 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid input length ") 
(declare-const var390!2 String)
(assert (= var390!2 (str.++ var390!1 "Invalid input length ")))
(define-const var2362 Int (String_length/-667254855 var3405)) ; Statement: $i23 = interfaceinvoke r16.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var1717 String (append/-1001720160 var2489 var2362)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i23) 
(declare-const var2489!1 String)
(assert (str.prefixof var2489 var2489!1))
(assert true)
(define-const var1778 String (toString/-2075883882 var1717)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/2135481038 var2081 var1778)) ; Statement: specialinvoke $r18.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException: void <init>(java.lang.String)>($r14) 

(declare-const var2081!1 var3927)
(declare-const var1778!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var2366_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-__Array__Int__Int__-to-var3026=([byte[]], java.lang.Object), trimTrailingPadding/35071171=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, java.lang.CharSequence], java.lang.CharSequence), alphabet/988383717=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet), String_length/-667254855=([java.lang.CharSequence], int), isValidPaddingStartPosition/-688529097=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, int], boolean), var3927-init=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2135481038=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException, java.lang.String], void)}
; {var3805=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, var76=r1, var1191=r0, var43=r15, var2366=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3026=java.lang.Object, var3405=r16, var2453=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var685=$r2, var2899=$i0, var2865=$z0, var3927=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException, var2081=$r18, var390=$r17, var2489=$r12, var2362=$i23, var1717=$r13, var1778=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding=var3805, r1=var76, r0=var1191, r15=var43, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2366, java.lang.Object=var3026, r16=var3405, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var2453, $r2=var685, $i0=var2899, $z0=var2865, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException=var3927, $r18=var2081, $r17=var390, $r12=var2489, $i23=var2362, $r13=var1717, $r14=var1778}
;seq <java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.CharSequence: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding;	r0 := @parameter0: byte[];	r15 := @parameter1: java.lang.CharSequence;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: java.lang.CharSequence trimTrailingPadding(java.lang.CharSequence)>(r15);	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet alphabet>;	$i0 = interfaceinvoke r16.<java.lang.CharSequence: int length()>();	$z0 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: boolean isValidPaddingStartPosition(int)>($i0);	if $z0 != 0 goto i24 = 0;	$r18 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid input length ");	$i23 = interfaceinvoke r16.<java.lang.CharSequence: int length()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i23);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$DecodingException: void <init>(java.lang.String)>($r14);	throw $r18
;block_num 2