(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3297 0)
(declare-sort var2799 0)
(declare-sort var3710 0)
(declare-sort var2721 0)
(declare-sort var917 0)
(declare-sort var3232 0)
(declare-sort var464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3710-init () var3710)
(declare-fun <init>/2015575920 (var3710 String) void)
(declare-fun graph/-340627520 (var3297) var3710)
(declare-fun cr/-340627520 (var3297) var2721)
(declare-fun currentClassName/-340627520 (var3297) String)
(declare-fun getExtraLabels/-538345160 (var2721 String String String) var917)
(declare-fun var917_iterator/-912451715 (var917) Iterator)
(declare-fun labelIter/-340627520 (var3297) Iterator)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun var3297_appendAccess/-2076115506 (String Int) void)
(declare-fun var3297_appendDescriptor/-359262046 (String Int String) void)
(declare-fun addText/1451988652 (var3297 var3232) void)
(declare-fun cast-from-String-to-var3232 (String) var3232)
(declare-fun createNashornTextifier/-1153041222 (var3297) var3297)
(declare-fun getText/-142638630 (var464) var917)
(declare-fun cast-from-var3297-to-var464 (var3297) var464)
(declare-fun cast-from-var917-to-var3232 (var917) var3232)
(declare-const null-var3297 var3297)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var917 var917)
(declare-const var1794 var3297) ; Statement: r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var1794 null-var3297)))
(declare-const var819 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var819 null-Int)))
(declare-const var3603 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3603 null-String)))
(declare-const var3532 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3532 null-String)))
(declare-const var492 String) ; Statement: r13 := @parameter3: java.lang.String 
(assert (not (= var492 null-String)))
(declare-const var2196 (Array Int String)) ; Statement: r14 := @parameter4: java.lang.String[] 
(assert (not (= var2196 null-__Array__Int__String__)))
(define-const var1739 var3710 var3710-init) ; Statement: $r1 = new jdk.nashorn.internal.ir.debug.NashornTextifier$Graph 
(assert true)
;(assert (<init>/2015575920 var1739 var3603)) ; Statement: specialinvoke $r1.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void <init>(java.lang.String)>(r2) 

(declare-const var1739!1 var3710)
(declare-const var3603!1 String)
(declare-const var1794!1 var3297)
(assert (not (= var1794!1 null-var3297)))
(assert (= (graph/-340627520 var1794!1) var1739!1)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> = $r1 
(define-const var2373 var2721 (cr/-340627520 var1794!1)) ; Statement: $r5 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornClassReader cr> 
(define-const var2871 String (currentClassName/-340627520 var1794!1)) ; Statement: $r4 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentClassName> 
(assert true)
(define-const var1897 var917 (getExtraLabels/-538345160 var2373 var2871 var3603!1 var3532)) ; Statement: r6 = virtualinvoke $r5.<jdk.nashorn.internal.ir.debug.NashornClassReader: java.util.List getExtraLabels(java.lang.String,java.lang.String,java.lang.String)>($r4, r2, r3) 
 ; Statement: if r6 != null goto $r25 = interfaceinvoke r6.<java.util.List: java.util.Iterator iterator()>() 
(assert (not (= var1897 null-var917))) ; Cond: r6 != null 
(define-const var428 Iterator (var917_iterator/-912451715 var1897)) ; Statement: $r25 = interfaceinvoke r6.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(declare-const var1794!2 var3297)
(assert (not (= var1794!2 null-var3297)))
(assert (= (labelIter/-340627520 var1794!2) var428)) ; Statement: r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Iterator labelIter> = $r25 
(define-const var2793 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2793)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2793!1 String)
(assert (= var2793!1 ""))
(assert true)
;(assert (append/-1166366385 var2793!1 10)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2793!2 String)
(assert (str.prefixof var2793!1 var2793!2))
(define-const var1817 Int (bv2nat (bvand ((_ int2bv 64) var819) ((_ int2bv 64) 131072)))) ; Statement: $i1 = i0 & 131072 
 ; Statement: if $i1 == 0 goto $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(assert (= var1817 0)) ; Cond: $i1 == 0 
(assert true)
(define-const var2334 String (append/672562846 var2793!2 "  ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2793!3 String)
(assert (= var2793!3 (str.++ var2793!2 "  ")))
(assert true)
(define-const var3601 String (append/672562846 var2334 "// access flags 0x")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// access flags 0x") 
(declare-const var2334!1 String)
(assert (= var2334!1 (str.++ var2334 "// access flags 0x")))
(define-const var2468 String (Int_toHexString/1865784998 var819)) ; Statement: $r9 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var3610 String (toUpperCase/1156088314 var2468)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var3548 String (append/672562846 var3601 var3610)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3601!1 String)
(assert (= var3601!1 (str.++ var3601 var3610)))
(assert true)
;(assert (append/-1166366385 var3548 10)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3548!1 String)
(assert (str.prefixof var3548 var3548!1))
 ; Statement: if r13 == null goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(assert (= var492 null-String)) ; Cond: r13 == null 
(assert true)
;(assert (append/672562846 var2793!3 "  ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2793!4 String)
(assert (= var2793!4 (str.++ var2793!3 "  ")))
;(assert (var3297_appendAccess/-2076115506 var2793!4 var819)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r7, i0) 

(declare-const var2793!5 String)
(declare-const var819!1 Int)
(define-const var3221 Int (bv2nat (bvand ((_ int2bv 64) var819!1) ((_ int2bv 64) 256)))) ; Statement: $i5 = i0 & 256 
 ; Statement: if $i5 == 0 goto $i2 = i0 & 128 
(assert (= var3221 0)) ; Cond: $i5 == 0 
(define-const var1483 Int (bv2nat (bvand ((_ int2bv 64) var819!1) ((_ int2bv 64) 128)))) ; Statement: $i2 = i0 & 128 
 ; Statement: if $i2 == 0 goto $i3 = i0 & 64 
(assert (= var1483 0)) ; Cond: $i2 == 0 
(define-const var3585 Int (bv2nat (bvand ((_ int2bv 64) var819!1) ((_ int2bv 64) 64)))) ; Statement: $i3 = i0 & 64 
 ; Statement: if $i3 == 0 goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(assert (= var3585 0)) ; Cond: $i3 == 0 
(assert true)
;(assert (append/672562846 var2793!5 var3603!1)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2793!6 String)
(assert (= var2793!6 (str.++ var2793!5 var3603!1)))
;(assert (var3297_appendDescriptor/-359262046 var2793!6 3 var3532)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r7, 3, r3) 

(declare-const var2793!7 String)
(declare-const var3184 Int)
(declare-const var3532!1 String)
 ; Statement: if r14 == null goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (= var2196 null-__Array__Int__String__)) ; Cond: r14 == null 
(assert true)
;(assert (append/-1166366385 var2793!7 10)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2793!8 String)
(assert (str.prefixof var2793!7 var2793!8))
(assert true)
;(assert (addText/1451988652 var1794!2 (cast-from-String-to-var3232 var2793!8))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r7) 

(declare-const var1794!3 var3297)
(declare-const var2793!9 String)
(assert true)
(define-const var2046 var3297 (createNashornTextifier/-1153041222 var1794!3)) ; Statement: $r29 = virtualinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier createNashornTextifier()>() 
(assert true)
(define-const var560 var917 (getText/-142638630 (cast-from-var3297-to-var464 var2046))) ; Statement: $r30 = virtualinvoke $r29.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.List getText()>() 
(assert true)
;(assert (addText/1451988652 var1794!3 (cast-from-var917-to-var3232 var560))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r30) 

(declare-const var1794!4 var3297)
(declare-const var560!1 var917)
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var3710-init=([], jdk.nashorn.internal.ir.debug.NashornTextifier$Graph), <init>/2015575920=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, java.lang.String], void), graph/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier$Graph), cr/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornClassReader), currentClassName/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], java.lang.String), getExtraLabels/-538345160=([jdk.nashorn.internal.ir.debug.NashornClassReader, java.lang.String, java.lang.String, java.lang.String], java.util.List), var917_iterator/-912451715=([java.util.List], java.util.Iterator), labelIter/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], java.util.Iterator), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), Int_toHexString/1865784998=([int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), var3297_appendAccess/-2076115506=([java.lang.StringBuilder, int], void), var3297_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var3232=([java.lang.StringBuilder], java.lang.Object), createNashornTextifier/-1153041222=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3297-to-var464=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.internal.org.objectweb.asm.util.Printer), cast-from-var917-to-var3232=([java.util.List], java.lang.Object)}
; {var3297=jdk.nashorn.internal.ir.debug.NashornTextifier, var1794=r0, var819=i0, var3603=r2, var2799=null_type, var3532=r3, var492=r13, var2196=r14, var3710=jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, var1739=$r1, var2721=jdk.nashorn.internal.ir.debug.NashornClassReader, var2373=$r5, var2871=$r4, var917=java.util.List, var1897=r6, var428=$r25, var2793=$r7, var1817=$i1, var2334=$r8, var3601=$r11, var2468=$r9, var3610=$r10, var3548=$r12, var3221=$i5, var1483=$i2, var3585=$i3, var3184=3, var3232=java.lang.Object, var2046=$r29, var464=jdk.internal.org.objectweb.asm.util.Printer, var560=$r30}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3297, r0=var1794, i0=var819, r2=var3603, null_type=var2799, r3=var3532, r13=var492, r14=var2196, jdk.nashorn.internal.ir.debug.NashornTextifier$Graph=var3710, $r1=var1739, jdk.nashorn.internal.ir.debug.NashornClassReader=var2721, $r5=var2373, $r4=var2871, java.util.List=var917, r6=var1897, $r25=var428, $r7=var2793, $i1=var1817, $r8=var2334, $r11=var3601, $r9=var2468, $r10=var3610, $r12=var3548, $i5=var3221, $i2=var1483, $i3=var3585, 3=var3184, java.lang.Object=var3232, $r29=var2046, jdk.internal.org.objectweb.asm.util.Printer=var464, $r30=var560}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r13 := @parameter3: java.lang.String;	r14 := @parameter4: java.lang.String[];	$r1 = new jdk.nashorn.internal.ir.debug.NashornTextifier$Graph;	specialinvoke $r1.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void <init>(java.lang.String)>(r2);	r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> = $r1;	$r5 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornClassReader cr>;	$r4 = r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentClassName>;	r6 = virtualinvoke $r5.<jdk.nashorn.internal.ir.debug.NashornClassReader: java.util.List getExtraLabels(java.lang.String,java.lang.String,java.lang.String)>($r4, r2, r3);	if r6 != null goto $r25 = interfaceinvoke r6.<java.util.List: java.util.Iterator iterator()>();	$r25 = interfaceinvoke r6.<java.util.List: java.util.Iterator iterator()>();	r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.Iterator labelIter> = $r25;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$i1 = i0 & 131072;	if $i1 == 0 goto $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("// access flags 0x");	$r9 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.String: java.lang.String toUpperCase()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	if r13 == null goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r7, i0);	$i5 = i0 & 256;	if $i5 == 0 goto $i2 = i0 & 128;	$i2 = i0 & 128;	if $i2 == 0 goto $i3 = i0 & 64;	$i3 = i0 & 64;	if $i3 == 0 goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r7, 3, r3);	if r14 == null goto virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r7);	$r29 = virtualinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier createNashornTextifier()>();	$r30 = virtualinvoke $r29.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.List getText()>();	specialinvoke r0.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r30);	return $r29
;block_num 9