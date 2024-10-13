(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2152 0)
(declare-sort var3178 0)
(declare-sort var3060 0)
(declare-sort var576 0)
(declare-sort var3238 0)
(declare-sort var1404 0)
(declare-sort var1465 0)
(declare-sort var2283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3060) void)
(declare-fun cast-from-var2152-to-var3060 (var2152) var3060)
(declare-fun var576_checkNotNull/1446102589 (var3060) var3060)
(declare-fun cast-from-String-to-var3060 (String) var3060)
(declare-fun cast-from-var3060-to-String (var3060) String)
(declare-fun name/990560183 (var2152) String)
(declare-fun cast-from-__Array__Int__Int__-to-var3060 ((Array Int Int)) var3060)
(declare-fun cast-from-var3060-to-__Array__Int__Int__ (var3060) (Array Int Int))
(declare-fun chars/990560183 (var2152) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1465-init () var1465)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1425936906 (var1465 String var2283) void)
(declare-fun cast-from-var1404-to-var2283 (var1404) var2283)
(declare-const null-var2152 var2152)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Bool Bool)
(declare-const var3238-UNNECESSARY var3238)
(declare-const null-var1404 var1404)
(declare-const var854 var2152) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet 
(assert (not (= var854 null-var2152)))
(declare-const var3353 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3353 null-String)))
(declare-const var2737 (Array Int Int)) ; Statement: r4 := @parameter1: char[] 
(assert (not (= var2737 null-__Array__Int__Int__)))
(declare-const var252 (Array Int Int)) ; Statement: r8 := @parameter2: byte[] 
(assert (not (= var252 null-__Array__Int__Int__)))
(declare-const var1763 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1763 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2152-to-var3060 var854))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var854!1 var2152)
(define-const var180 var3060 (var576_checkNotNull/1446102589 (cast-from-String-to-var3060 var3353))) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 
(define-const var2017 String (cast-from-var3060-to-String var180)) ; Statement: $r3 = (java.lang.String) $r2 
(declare-const var854!2 var2152)
(assert (not (= var854!2 null-var2152)))
(assert (= (name/990560183 var854!2) var2017)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: java.lang.String name> = $r3 
(define-const var2804 var3060 (var576_checkNotNull/1446102589 (cast-from-__Array__Int__Int__-to-var3060 var2737))) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r4) 
(define-const var3454 (Array Int Int) (cast-from-var3060-to-__Array__Int__Int__ var2804)) ; Statement: $r6 = (char[]) $r5 
(declare-const var854!3 var2152)
(assert (not (= var854!3 null-var2152)))
(assert (= (chars/990560183 var854!3) var3454)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: char[] chars> = $r6 
(define-const var1956 Int (getLength-Arr-Int-1 var2737)) ; Statement: $i0 = lengthof r4 
(define-const var3557 var3238 var3238-UNNECESSARY) ; Statement: $r7 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var642 var1404) ; Statement: $r11 := @caughtexception 
(assert (not (= var642 null-var1404)))
(define-const var1034 var1465 var1465-init) ; Statement: $r12 = new java.lang.IllegalArgumentException 
(define-const var1557 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1557)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1557!1 String)
(assert (= var1557!1 ""))
(assert true)
(define-const var3539 String (append/672562846 var1557!1 "Illegal alphabet length ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal alphabet length ") 
(declare-const var1557!2 String)
(assert (= var1557!2 (str.++ var1557!1 "Illegal alphabet length ")))
(define-const var3390 Int (getLength-Arr-Int-1 var2737)) ; Statement: $i14 = lengthof r4 
(assert true)
(define-const var2650 String (append/-1001720160 var3539 var3390)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i14) 
(declare-const var3539!1 String)
(assert (str.prefixof var3539 var3539!1))
(assert true)
(define-const var3226 String (toString/-2075883882 var2650)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1425936906 var1034 var3226 (cast-from-var1404-to-var2283 var642))) ; Statement: specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11) 

(declare-const var1034!1 var1465)
(declare-const var3226!1 String)
(declare-const var642!1 var1404)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2152-to-var3060=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet], java.lang.Object), var576_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var3060=([java.lang.String], java.lang.Object), cast-from-var3060-to-String=([java.lang.Object], java.lang.String), name/990560183=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet], java.lang.String), cast-from-__Array__Int__Int__-to-var3060=([char[]], java.lang.Object), cast-from-var3060-to-__Array__Int__Int__=([java.lang.Object], char[]), chars/990560183=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet], char[]), getLength-Arr-Int-1=([char[]], int), var1465-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1425936906=([java.lang.IllegalArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1404-to-var2283=([java.lang.ArithmeticException], java.lang.Throwable)}
; {var2152=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet, var854=r0, var3353=r1, var3178=null_type, var2737=r4, var252=r8, var1763=z0, var3060=java.lang.Object, var576=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var180=$r2, var2017=$r3, var2804=$r5, var3454=$r6, var1956=$i0, var3238=java.math.RoundingMode, var3557=$r7, var1404=java.lang.ArithmeticException, var642=$r11, var1465=java.lang.IllegalArgumentException, var1034=$r12, var1557=$r13, var3539=$r14, var3390=$i14, var2650=$r15, var3226=$r16, var2283=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet=var2152, r0=var854, r1=var3353, null_type=var3178, r4=var2737, r8=var252, z0=var1763, java.lang.Object=var3060, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var576, $r2=var180, $r3=var2017, $r5=var2804, $r6=var3454, $i0=var1956, java.math.RoundingMode=var3238, $r7=var3557, java.lang.ArithmeticException=var1404, $r11=var642, java.lang.IllegalArgumentException=var1465, $r12=var1034, $r13=var1557, $r14=var3539, $i14=var3390, $r15=var2650, $r16=var3226, java.lang.Throwable=var2283}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: char[];	r8 := @parameter2: byte[];	z0 := @parameter3: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$r3 = (java.lang.String) $r2;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: java.lang.String name> = $r3;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r4);	$r6 = (char[]) $r5;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$Alphabet: char[] chars> = $r6;	$i0 = lengthof r4;	$r7 = <java.math.RoundingMode: java.math.RoundingMode UNNECESSARY>;	$r11 := @caughtexception;	$r12 = new java.lang.IllegalArgumentException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal alphabet length ");	$i14 = lengthof r4;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i14);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r11);	throw $r12
;block_num 2