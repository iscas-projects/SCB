(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var605 0)
(declare-sort var710 0)
(declare-sort var1233 0)
(declare-sort var2840 0)
(declare-sort var1084 0)
(declare-sort var2694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var710-init () var710)
(declare-fun <init>/2015575920 (var710 String) void)
(declare-fun graph/-340627520 (var3187) var710)
(declare-fun cr/-340627520 (var3187) var1233)
(declare-fun currentClassName/-340627520 (var3187) String)
(declare-fun getExtraLabels/-538345160 (var1233 String String String) var2840)
(declare-fun labelIter/-340627520 (var3187) Iterator)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun var3187_appendAccess/-2076115506 (String Int) void)
(declare-fun var3187_appendDescriptor/-359262046 (String Int String) void)
(declare-fun addText/1451988652 (var3187 var1084) void)
(declare-fun cast-from-String-to-var1084 (String) var1084)
(declare-fun createNashornTextifier/-1153041222 (var3187) var3187)
(declare-fun getText/-142638630 (var2694) var2840)
(declare-fun cast-from-var3187-to-var2694 (var3187) var2694)
(declare-fun cast-from-var2840-to-var1084 (var2840) var1084)
(declare-const null-var3187 var3187)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2840 var2840)
(declare-const null-Iterator Iterator)
(declare-const var3941 var3187) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3941 null-var3187)))
(declare-const var1139 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1139 null-Int)))
(declare-const var745 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var745 null-String)))
(declare-const var677 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var677 null-String)))
(declare-const var3804 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var3804 null-String)))
(declare-const var2920 (Array Int String)) ; Statement: r14 := @parameter4: java.lang.String[] 
(assert (not (= var2920 null-__Array__Int__String__)))
(define-const var3021 var710 var710-init) ; Statement: $r1 = new jdk.nashorn.internal.ir.debug.NashornTextifier$Graph 
(assert true)
;(assert (<init>/2015575920 var3021 var745)) ; Statement: specialinvoke $r1.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void <init>(java.lang.String)>(r2) 

(declare-const var3021!1 var710)
(declare-const var745!1 String)
(declare-const var3941!1 var3187)
(assert (not (= var3941!1 null-var3187)))
(assert (= (graph/-340627520 var3941!1) var3021!1)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> = $r1 
(define-const var3904 var1233 (cr/-340627520 var3941!1)) ; Statement: $r5 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornClassReader cr> 
(define-const var3061 String (currentClassName/-340627520 var3941!1)) ; Statement: $r4 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentClassName> 
(assert true)
(define-const var2608 var2840 (getExtraLabels/-538345160 var3904 var3061 var745!1 var677)) ; Statement: r6 = virtualinvoke $r5.<jdk.nashorn.internal.ir.debug.NashornClassReader: java.util.List getExtraLabels(java.lang.String,java.lang.String,java.lang.String)>($r4, r2, r3) 
 ; Statement: if r6 != null goto $r25 = interfaceinvoke r6.<java.util.List: java.util.Iterator iterator()>() 
(assert (not (not (= var2608 null-var2840)))) ; Negate: Cond: r6 != null  
(define-const var1778 Iterator null-Iterator) ; Statement: $r25 = null 
 ; Statement: goto [?= r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Iterator labelIter> = $r25] 
(assert true) ; Non Conditional
(declare-const var3941!2 var3187)
(assert (not (= var3941!2 null-var3187)))
(assert (= (labelIter/-340627520 var3941!2) var1778)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Iterator labelIter> = $r25 
(define-const var2213 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2213)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2213!1 String)
(assert (= var2213!1 ""))
(assert true)
;(assert (append/-1166366385 var2213!1 10)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2213!2 String)
(assert (str.prefixof var2213!1 var2213!2))
(define-const var85 Int (bv2nat (bvand ((_ int2bv 64) var1139) ((_ int2bv 64) 131072)))) ; Statement: $i1 = i0 & 131072 
 ; Statement: if $i1 == 0 goto $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(assert (= var85 0)) ; Cond: $i1 == 0 
(assert true)
(define-const var3141 String (append/672562846 var2213!2 "  ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2213!3 String)
(assert (= var2213!3 (str.++ var2213!2 "  ")))
(assert true)
(define-const var3532 String (append/672562846 var3141 "// access flags 0x")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// access flags 0x") 
(declare-const var3141!1 String)
(assert (= var3141!1 (str.++ var3141 "// access flags 0x")))
(define-const var1291 String (Int_toHexString/1865784998 var1139)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var2208 String (toUpperCase/1156088314 var1291)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var2938 String (append/672562846 var3532 var2208)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3532!1 String)
(assert (= var3532!1 (str.++ var3532 var2208)))
(assert true)
;(assert (append/-1166366385 var2938 10)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2938!1 String)
(assert (str.prefixof var2938 var2938!1))
 ; Statement: if r13 == null goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(assert (= var3804 null-String)) ; Cond: r13 == null 
(assert true)
;(assert (append/672562846 var2213!3 "  ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2213!4 String)
(assert (= var2213!4 (str.++ var2213!3 "  ")))
;(assert (var3187_appendAccess/-2076115506 var2213!4 var1139)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r7, i0) 

(declare-const var2213!5 String)
(declare-const var1139!1 Int)
(define-const var2241 Int (bv2nat (bvand ((_ int2bv 64) var1139!1) ((_ int2bv 64) 256)))) ; Statement: $i5 = i0 & 256 
 ; Statement: if $i5 == 0 goto $i2 = i0 & 128 
(assert (= var2241 0)) ; Cond: $i5 == 0 
(define-const var3773 Int (bv2nat (bvand ((_ int2bv 64) var1139!1) ((_ int2bv 64) 128)))) ; Statement: $i2 = i0 & 128 
 ; Statement: if $i2 == 0 goto $i3 = i0 & 64 
(assert (= var3773 0)) ; Cond: $i2 == 0 
(define-const var3788 Int (bv2nat (bvand ((_ int2bv 64) var1139!1) ((_ int2bv 64) 64)))) ; Statement: $i3 = i0 & 64 
 ; Statement: if $i3 == 0 goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(assert (= var3788 0)) ; Cond: $i3 == 0 
(assert true)
;(assert (append/672562846 var2213!5 var745!1)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2213!6 String)
(assert (= var2213!6 (str.++ var2213!5 var745!1)))
;(assert (var3187_appendDescriptor/-359262046 var2213!6 3 var677)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r7, 3, r3) 

(declare-const var2213!7 String)
(declare-const var2073 Int)
(declare-const var677!1 String)
 ; Statement: if r14 == null goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (= var2920 null-__Array__Int__String__)) ; Cond: r14 == null 
(assert true)
;(assert (append/-1166366385 var2213!7 10)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2213!8 String)
(assert (str.prefixof var2213!7 var2213!8))
(assert true)
;(assert (addText/1451988652 var3941!2 (cast-from-String-to-var1084 var2213!8))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r7) 

(declare-const var3941!3 var3187)
(declare-const var2213!9 String)
(assert true)
(define-const var2726 var3187 (createNashornTextifier/-1153041222 var3941!3)) ; Statement: $r29 = virtualinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier createNashornTextifier()>() 
(assert true)
(define-const var3229 var2840 (getText/-142638630 (cast-from-var3187-to-var2694 var2726))) ; Statement: $r30 = virtualinvoke $r29.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.List getText()>() 
(assert true)
;(assert (addText/1451988652 var3941!3 (cast-from-var2840-to-var1084 var3229))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r30) 

(declare-const var3941!4 var3187)
(declare-const var3229!1 var2840)
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var710-init=([], jdk.nashorn.internal.ir.debug.NashornTextifier$Graph), <init>/2015575920=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, java.lang.String], void), graph/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier$Graph), cr/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornClassReader), currentClassName/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], java.lang.String), getExtraLabels/-538345160=([jdk.nashorn.internal.ir.debug.NashornClassReader, java.lang.String, java.lang.String, java.lang.String], java.util.List), labelIter/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], java.util.Iterator), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), var3187_appendAccess/-2076115506=([java.lang.StringBuilder, int], void), var3187_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var1084=([java.lang.StringBuilder], java.lang.Object), createNashornTextifier/-1153041222=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3187-to-var2694=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.internal.org.objectweb.asm.util.Printer), cast-from-var2840-to-var1084=([java.util.List], java.lang.Object)}
; {var3187=jdk.nashorn.internal.ir.debug.NashornTextifier, var3941=r0, var1139=i0, var745=r2, var605=null_type, var677=r3, var3804=r13, var2920=r14, var710=jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, var3021=$r1, var1233=jdk.nashorn.internal.ir.debug.NashornClassReader, var3904=$r5, var3061=$r4, var2840=java.util.List, var2608=r6, var1778=$r25, var2213=$r7, var85=$i1, var3141=$r8, var3532=$r11, var1291=$r9, var2208=$r10, var2938=$r12, var2241=$i5, var3773=$i2, var3788=$i3, var2073=3, var1084=java.lang.Object, var2726=$r29, var2694=jdk.internal.org.objectweb.asm.util.Printer, var3229=$r30}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3187, r0=var3941, i0=var1139, r2=var745, null_type=var605, r3=var677, r13=var3804, r14=var2920, jdk.nashorn.internal.ir.debug.NashornTextifier$Graph=var710, $r1=var3021, jdk.nashorn.internal.ir.debug.NashornClassReader=var1233, $r5=var3904, $r4=var3061, java.util.List=var2840, r6=var2608, $r25=var1778, $r7=var2213, $i1=var85, $r8=var3141, $r11=var3532, $r9=var1291, $r10=var2208, $r12=var2938, $i5=var2241, $i2=var3773, $i3=var3788, 3=var2073, java.lang.Object=var1084, $r29=var2726, jdk.internal.org.objectweb.asm.util.Printer=var2694, $r30=var3229}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	r14 := @parameter4: java.lang.String[];	$r1 = new jdk.nashorn.internal.ir.debug.NashornTextifier$Graph;	specialinvoke $r1.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void <init>(java.lang.String)>(r2);	r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> = $r1;	$r5 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornClassReader cr>;	$r4 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentClassName>;	r6 = virtualinvoke $r5.<jdk.nashorn.internal.ir.debug.NashornClassReader: java.util.List getExtraLabels(java.lang.String,java.lang.String,java.lang.String)>($r4, r2, r3);	if r6 != null goto $r25 = interfaceinvoke r6.<java.util.List: java.util.Iterator iterator()>();	$r25 = null;	goto [?= r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Iterator labelIter> = $r25];	r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Iterator labelIter> = $r25;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$i1 = i0 & 131072;	if $i1 == 0 goto $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// access flags 0x");	$r9 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.String: java.lang.String toUpperCase()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	if r13 == null goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r7, i0);	$i5 = i0 & 256;	if $i5 == 0 goto $i2 = i0 & 128;	$i2 = i0 & 128;	if $i2 == 0 goto $i3 = i0 & 64;	$i3 = i0 & 64;	if $i3 == 0 goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r7, 3, r3);	if r14 == null goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r7);	$r29 = virtualinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier createNashornTextifier()>();	$r30 = virtualinvoke $r29.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.List getText()>();	specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r30);	return $r29
;block_num 9