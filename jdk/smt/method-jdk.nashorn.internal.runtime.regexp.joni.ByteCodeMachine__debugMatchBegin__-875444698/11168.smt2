(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3398 0)
(declare-sort var2511 0)
(declare-sort var1486 0)
(declare-sort var1150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun str/1924490666 (var1150) Int)
(declare-fun cast-from-var3398-to-var1150 (var3398) var1150)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun end/1924490666 (var1150) Int)
(declare-fun sstart/1023791082 (var3398) Int)
(declare-fun sprev/1023791082 (var3398) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2511 String) void)
(declare-const null-var3398 var3398)
(declare-const var1486-log var2511)
(declare-const var308 var3398) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine 
(assert (not (= var308 null-var3398)))
(define-const var3715 var2511 var1486-log) ; Statement: $r1 = <jdk.nashorn.internal.runtime.regexp.joni.Config: java.io.PrintStream log> 
(define-const var3520 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3520)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3520!1 String)
(assert (= var3520!1 ""))
(assert true)
(define-const var2941 String (append/672562846 var3520!1 "match_at: str: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("match_at: str: ") 
(declare-const var3520!2 String)
(assert (= var3520!2 (str.++ var3520!1 "match_at: str: ")))
(define-const var1320 Int (str/1924490666 (cast-from-var3398-to-var1150 var308))) ; Statement: $i0 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int str> 
(assert true)
(define-const var1650 String (append/-1001720160 var2941 var1320)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2941!1 String)
(assert (str.prefixof var2941 var2941!1))
(assert true)
(define-const var1410 String (append/672562846 var1650 ", end: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", end: ") 
(declare-const var1650!1 String)
(assert (= var1650!1 (str.++ var1650 ", end: ")))
(define-const var3400 Int (end/1924490666 (cast-from-var3398-to-var1150 var308))) ; Statement: $i1 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int end> 
(assert true)
(define-const var63 String (append/-1001720160 var1410 var3400)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1410!1 String)
(assert (str.prefixof var1410 var1410!1))
(assert true)
(define-const var2010 String (append/672562846 var63 ", start: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", start: ") 
(declare-const var63!1 String)
(assert (= var63!1 (str.++ var63 ", start: ")))
(define-const var573 Int (sstart/1023791082 var308)) ; Statement: $i2 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int sstart> 
(assert true)
(define-const var3212 String (append/-1001720160 var2010 var573)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2010!1 String)
(assert (str.prefixof var2010 var2010!1))
(assert true)
(define-const var3663 String (append/672562846 var3212 ", sprev: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sprev: ") 
(declare-const var3212!1 String)
(assert (= var3212!1 (str.++ var3212 ", sprev: ")))
(define-const var2783 Int (sprev/1023791082 var308)) ; Statement: $i3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int sprev> 
(assert true)
(define-const var2734 String (append/-1001720160 var3663 var2783)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3663!1 String)
(assert (str.prefixof var3663 var3663!1))
(assert true)
(define-const var1168 String (toString/-2075883882 var2734)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3715 var1168)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r11) 

(declare-const var3715!1 var2511)
(declare-const var1168!1 String)
(define-const var324 var2511 var1486-log) ; Statement: $r13 = <jdk.nashorn.internal.runtime.regexp.joni.Config: java.io.PrintStream log> 
(define-const var2878 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2878)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2878!1 String)
(assert (= var2878!1 ""))
(assert true)
(define-const var1671 String (append/672562846 var2878!1 "size: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("size: ") 
(declare-const var2878!2 String)
(assert (= var2878!2 (str.++ var2878!1 "size: ")))
(define-const var2397 Int (end/1924490666 (cast-from-var3398-to-var1150 var308))) ; Statement: $i5 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int end> 
(define-const var3734 Int (str/1924490666 (cast-from-var3398-to-var1150 var308))) ; Statement: $i4 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int str> 
(define-const var3112 Int (- var2397 var3734)) ; Statement: $i6 = $i5 - $i4 
(assert true)
(define-const var2019 String (append/-1001720160 var1671 var3112)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var1671!1 String)
(assert (str.prefixof var1671 var1671!1))
(assert true)
(define-const var2043 String (append/672562846 var2019 ", start offset: ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", start offset: ") 
(declare-const var2019!1 String)
(assert (= var2019!1 (str.++ var2019 ", start offset: ")))
(define-const var3360 Int (sstart/1023791082 var308)) ; Statement: $i8 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int sstart> 
(define-const var1324 Int (str/1924490666 (cast-from-var3398-to-var1150 var308))) ; Statement: $i7 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int str> 
(define-const var2139 Int (- var3360 var1324)) ; Statement: $i9 = $i8 - $i7 
(assert true)
(define-const var94 String (append/-1001720160 var2043 var2139)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var2043!1 String)
(assert (str.prefixof var2043 var2043!1))
(assert true)
(define-const var2814 String (toString/-2075883882 var94)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var324 var2814)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r18) 

(declare-const var324!1 var2511)
(declare-const var2814!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), str/1924490666=([jdk.nashorn.internal.runtime.regexp.joni.Matcher], int), cast-from-var3398-to-var1150=([jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine], jdk.nashorn.internal.runtime.regexp.joni.Matcher), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), end/1924490666=([jdk.nashorn.internal.runtime.regexp.joni.Matcher], int), sstart/1023791082=([jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine], int), sprev/1023791082=([jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3398=jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine, var308=r2, var2511=java.io.PrintStream, var1486=jdk.nashorn.internal.runtime.regexp.joni.Config, var3715=$r1, var3520=$r0, var2941=$r3, var1150=jdk.nashorn.internal.runtime.regexp.joni.Matcher, var1320=$i0, var1650=$r4, var1410=$r5, var3400=$i1, var63=$r6, var2010=$r7, var573=$i2, var3212=$r8, var3663=$r9, var2783=$i3, var2734=$r10, var1168=$r11, var324=$r13, var2878=$r12, var1671=$r14, var2397=$i5, var3734=$i4, var3112=$i6, var2019=$r15, var2043=$r16, var3360=$i8, var1324=$i7, var2139=$i9, var94=$r17, var2814=$r18}
; {jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine=var3398, r2=var308, java.io.PrintStream=var2511, jdk.nashorn.internal.runtime.regexp.joni.Config=var1486, $r1=var3715, $r0=var3520, $r3=var2941, jdk.nashorn.internal.runtime.regexp.joni.Matcher=var1150, $i0=var1320, $r4=var1650, $r5=var1410, $i1=var3400, $r6=var63, $r7=var2010, $i2=var573, $r8=var3212, $r9=var3663, $i3=var2783, $r10=var2734, $r11=var1168, $r13=var324, $r12=var2878, $r14=var1671, $i5=var2397, $i4=var3734, $i6=var3112, $r15=var2019, $r16=var2043, $i8=var3360, $i7=var1324, $i9=var2139, $r17=var94, $r18=var2814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine;	$r1 = <jdk.nashorn.internal.runtime.regexp.joni.Config: java.io.PrintStream log>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("match_at: str: ");	$i0 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int str>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", end: ");	$i1 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int end>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", start: ");	$i2 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int sstart>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sprev: ");	$i3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int sprev>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r11);	$r13 = <jdk.nashorn.internal.runtime.regexp.joni.Config: java.io.PrintStream log>;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("size: ");	$i5 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int end>;	$i4 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int str>;	$i6 = $i5 - $i4;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", start offset: ");	$i8 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int sstart>;	$i7 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodeMachine: int str>;	$i9 = $i8 - $i7;	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r18);	return
;block_num 1