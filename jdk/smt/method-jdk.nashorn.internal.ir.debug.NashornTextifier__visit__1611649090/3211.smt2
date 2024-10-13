(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2980 0)
(declare-sort var1550 0)
(declare-sort var3351 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun currentClassName/-340627520 (var2980) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun var2980_appendDescriptor/-359262046 (String Int String) void)
(declare-fun var2980_appendAccess/-2076115506 (String Int) void)
(declare-fun addText/1451988652 (var2980 var3351) void)
(declare-fun cast-from-String-to-var3351 (String) var3351)
(declare-const null-var2980 var2980)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1732 var2980) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var1732 null-var2980)))
(declare-const var3951 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3951 null-Int)))
(declare-const var2382 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2382 null-Int)))
(declare-const var1646 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1646 null-String)))
(declare-const var282 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var282 null-String)))
(declare-const var1068 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var1068 null-String)))
(declare-const var1936 (Array Int String)) ; Statement: r15 := @parameter5: java.lang.String[] 
(assert (not (= var1936 null-__Array__Int__String__)))
(define-const var3408 Int (cast-from-Int-to-Int 65535)) ; Statement: $i13 = (int) 65535 
(define-const var3649 Int (bv2nat (bvand ((_ int2bv 64) var3951) ((_ int2bv 64) var3408)))) ; Statement: i1 = i0 & $i13 
(define-const var1698 Int (div var3951 (to_int (^ 2 16)))) ; Statement: i2 = i0 >>> 16 
(declare-const var1732!1 var2980)
(assert (not (= var1732!1 null-var2980)))
(assert (= (currentClassName/-340627520 var1732!1) var1646)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentClassName> = r1 
(define-const var2507 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2507)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2507!1 String)
(assert (= var2507!1 ""))
(assert true)
(define-const var2957 String (append/672562846 var2507!1 "// class version ")) ; Statement: $r3 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// class version ") 
(declare-const var2507!2 String)
(assert (= var2507!2 (str.++ var2507!1 "// class version ")))
(assert true)
(define-const var1923 String (append/-1001720160 var2957 var3649)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2957!1 String)
(assert (str.prefixof var2957 var2957!1))
(assert true)
(define-const var1084 String (append/-1166366385 var1923 46)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1923!1 String)
(assert (str.prefixof var1923 var1923!1))
(assert true)
(define-const var3945 String (append/-1001720160 var1084 var1698)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1084!1 String)
(assert (str.prefixof var1084 var1084!1))
(assert true)
(define-const var3641 String (append/672562846 var3945 " (")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3945!1 String)
(assert (= var3945!1 (str.++ var3945 " (")))
(assert true)
(define-const var3466 String (append/-1001720160 var3641 var3951)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3641!1 String)
(assert (str.prefixof var3641 var3641!1))
(assert true)
;(assert (append/672562846 var3466 ")\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")\n") 
(declare-const var3466!1 String)
(assert (= var3466!1 (str.++ var3466 ")\n")))
(define-const var3241 Int (bv2nat (bvand ((_ int2bv 64) var2382) ((_ int2bv 64) 131072)))) ; Statement: $i4 = i3 & 131072 
 ; Statement: if $i4 == 0 goto $r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// access flags 0x") 
(assert (= var3241 0)) ; Cond: $i4 == 0 
(assert true)
(define-const var747 String (append/672562846 var2507!2 "// access flags 0x")) ; Statement: $r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// access flags 0x") 
(declare-const var2507!3 String)
(assert (= var2507!3 (str.++ var2507!2 "// access flags 0x")))
(define-const var3242 String (Int_toHexString/1865784998 var2382)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i3) 
(assert true)
(define-const var772 String (toUpperCase/1156088314 var3242)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var3071 String (append/672562846 var747 var772)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var747!1 String)
(assert (= var747!1 (str.++ var747 var772)))
(assert true)
;(assert (append/-1166366385 var3071 10)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3071!1 String)
(assert (str.prefixof var3071 var3071!1))
;(assert (var2980_appendDescriptor/-359262046 var2507!3 5 var282)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r24, 5, r13) 

(declare-const var2507!4 String)
(declare-const var1011 Int)
(declare-const var282!1 String)
 ; Statement: if r13 == null goto $i15 = (int) -33 
(assert (= var282!1 null-String)) ; Cond: r13 == null 
(define-const var3376 Int (cast-from-Int-to-Int (- 33))) ; Statement: $i15 = (int) -33 
(define-const var3003 Int (bv2nat (bvand ((_ int2bv 64) var2382) ((_ int2bv 64) var3376)))) ; Statement: $i5 = i3 & $i15 
;(assert (var2980_appendAccess/-2076115506 var2507!4 var3003)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r24, $i5) 

(declare-const var2507!5 String)
(declare-const var3003!1 Int)
(define-const var188 Int (bv2nat (bvand ((_ int2bv 64) var2382) ((_ int2bv 64) 8192)))) ; Statement: $i6 = i3 & 8192 
 ; Statement: if $i6 == 0 goto $i7 = i3 & 512 
(assert (not (= var188 0))) ; Negate: Cond: $i6 == 0  
(assert true)
;(assert (append/672562846 var2507!5 "@interface ")) ; Statement: virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@interface ") 
(declare-const var2507!6 String)
(assert (= var2507!6 (str.++ var2507!5 "@interface ")))
 ; Statement: goto [?= staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r24, 0, r1)] 
(assert true) ; Non Conditional
;(assert (var2980_appendDescriptor/-359262046 var2507!6 0 var1646)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r24, 0, r1) 

(declare-const var2507!7 String)
(declare-const var3234 Int)
(declare-const var1646!1 String)
 ; Statement: if r14 == null goto (branch) 
(assert (= var1068 null-String)) ; Cond: r14 == null 
 ; Statement: if r15 == null goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n") 
(assert (= var1936 null-__Array__Int__String__)) ; Cond: r15 == null 
(assert true)
;(assert (append/672562846 var2507!7 " {\n")) ; Statement: virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n") 
(declare-const var2507!8 String)
(assert (= var2507!8 (str.++ var2507!7 " {\n")))
(assert true)
;(assert (addText/1451988652 var1732!1 (cast-from-String-to-var3351 var2507!8))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r24) 

(declare-const var1732!2 var2980)
(declare-const var2507!9 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), currentClassName/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), var2980_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), var2980_appendAccess/-2076115506=([java.lang.StringBuilder, int], void), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var3351=([java.lang.StringBuilder], java.lang.Object)}
; {var2980=jdk.nashorn.internal.ir.debug.NashornTextifier, var1732=r0, var3951=i0, var2382=i3, var1646=r1, var1550=null_type, var282=r13, var1068=r14, var1936=r15, var3408=$i13, var3649=i1, var1698=i2, var2507=$r24, var2957=$r3, var1923=$r4, var1084=$r5, var3945=$r6, var3641=$r7, var3466=$r8, var3241=$i4, var747=$r11, var3242=$r9, var772=$r10, var3071=$r12, var1011=5, var3376=$i15, var3003=$i5, var188=$i6, var3234=0, var3351=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2980, r0=var1732, i0=var3951, i3=var2382, r1=var1646, null_type=var1550, r13=var282, r14=var1068, r15=var1936, $i13=var3408, i1=var3649, i2=var1698, $r24=var2507, $r3=var2957, $r4=var1923, $r5=var1084, $r6=var3945, $r7=var3641, $r8=var3466, $i4=var3241, $r11=var747, $r9=var3242, $r10=var772, $r12=var3071, 5=var1011, $i15=var3376, $i5=var3003, $i6=var188, 0=var3234, java.lang.Object=var3351}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i3 := @parameter1: int;	r1 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	r14 := @parameter4: java.lang.String;	r15 := @parameter5: java.lang.String[];	$i13 = (int) 65535;	i1 = i0 & $i13;	i2 = i0 >>> 16;	r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentClassName> = r1;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// class version ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")\n");	$i4 = i3 & 131072;	if $i4 == 0 goto $r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// access flags 0x");	$r11 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// access flags 0x");	$r9 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i3);	$r10 = virtualinvoke $r9.<java.lang.String: java.lang.String toUpperCase()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r24, 5, r13);	if r13 == null goto $i15 = (int) -33;	$i15 = (int) -33;	$i5 = i3 & $i15;	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r24, $i5);	$i6 = i3 & 8192;	if $i6 == 0 goto $i7 = i3 & 512;	virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@interface ");	goto [?= staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r24, 0, r1)];	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r24, 0, r1);	if r14 == null goto (branch);	if r15 == null goto virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n");	virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" {\n");	specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r24);	return
;block_num 7