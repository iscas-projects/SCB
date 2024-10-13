(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2712 0)
(declare-sort var365 0)
(declare-sort var1001 0)
(declare-sort var56 0)
(declare-sort var1438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1001) String)
(declare-fun cast-from-var2712-to-var1001 (var2712) var1001)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun tab/-788090934 (var2712) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun appendAccess/867888050 (var2712 Int) void)
(declare-fun access/-788090934 (var2712) Int)
(declare-fun appendDescriptor/199836990 (var2712 Int String) void)
(declare-fun text/-10557480 (var1001) var56)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var56_add/328494887 (var56 var1438) Bool)
(declare-fun cast-from-String-to-var1438 (String) var1438)
(declare-fun createTextifier/-1341636553 (var2712) var2712)
(declare-fun getText/-142638630 (var1001) var56)
(declare-fun cast-from-var56-to-var1438 (var56) var1438)
(declare-const null-var2712 var2712)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var583 var2712) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var583 null-var2712)))
(declare-const var1350 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1350 null-Int)))
(declare-const var988 String) ; Statement: r11 := @parameter1: java.lang.String 
(assert (not (= var988 null-String)))
(declare-const var1364 String) ; Statement: r12 := @parameter2: java.lang.String 
(assert (not (= var1364 null-String)))
(declare-const var3590 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var3590 null-String)))
(declare-const var3118 (Array Int String)) ; Statement: r13 := @parameter4: java.lang.String[] 
(assert (not (= var3118 null-__Array__Int__String__)))
(define-const var905 String (buf/-10557480 (cast-from-var2712-to-var1001 var583))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var905 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var905!1 String)
(declare-const var3762 Int)
(define-const var3800 String (buf/-10557480 (cast-from-var2712-to-var1001 var583))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3800 10)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3800!1 String)
(declare-const var2627 Int)
(define-const var2762 Int (bv2nat (bvand ((_ int2bv 64) var1350) ((_ int2bv 64) 131072)))) ; Statement: $i1 = i0 & 131072 
 ; Statement: if $i1 == 0 goto $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var2762 0)) ; Cond: $i1 == 0 
(define-const var3369 String (buf/-10557480 (cast-from-var2712-to-var1001 var583))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1812 String (tab/-788090934 var583)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var3629 String (append/1560614132 var3369 var1812)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3369!1 String)
(assert (str.prefixof var3369 var3369!1))
(assert true)
(define-const var604 String (append/1560614132 var3629 "// access flags 0x")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// access flags 0x") 
(declare-const var3629!1 String)
(assert (str.prefixof var3629 var3629!1))
(define-const var1375 String (Int_toHexString/1865784998 var1350)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var3274 String (toUpperCase/1156088314 var1375)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var2101 String (append/1560614132 var604 var3274)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var604!1 String)
(assert (str.prefixof var604 var604!1))
(assert true)
;(assert (append/1183289509 var2101 10)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2101!1 String)
(declare-const var2627!1 Int)
 ; Statement: if r10 == null goto $r41 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var3590 null-String)) ; Cond: r10 == null 
(define-const var857 String (buf/-10557480 (cast-from-var2712-to-var1001 var583))) ; Statement: $r41 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var568 String (tab/-788090934 var583)) ; Statement: $r42 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
;(assert (append/1560614132 var857 var568)) ; Statement: virtualinvoke $r41.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r42) 
(declare-const var857!1 String)
(assert (str.prefixof var857 var857!1))
(define-const var3525 Int (cast-from-Int-to-Int (- 65))) ; Statement: $i14 = (int) -65 
(define-const var3699 Int (bv2nat (bvand ((_ int2bv 64) var1350) ((_ int2bv 64) var3525)))) ; Statement: $i10 = i0 & $i14 
(assert true)
;(assert (appendAccess/867888050 var583 var3699)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>($i10) 

(declare-const var583!1 var2712)
(declare-const var3699!1 Int)
(define-const var3733 Int (bv2nat (bvand ((_ int2bv 64) var1350) ((_ int2bv 64) 256)))) ; Statement: $i11 = i0 & 256 
 ; Statement: if $i11 == 0 goto $i2 = i0 & 128 
(assert (= var3733 0)) ; Cond: $i11 == 0 
(define-const var2730 Int (bv2nat (bvand ((_ int2bv 64) var1350) ((_ int2bv 64) 128)))) ; Statement: $i2 = i0 & 128 
 ; Statement: if $i2 == 0 goto $i3 = i0 & 64 
(assert (= var2730 0)) ; Cond: $i2 == 0 
(define-const var558 Int (bv2nat (bvand ((_ int2bv 64) var1350) ((_ int2bv 64) 64)))) ; Statement: $i3 = i0 & 64 
 ; Statement: if $i3 == 0 goto $i4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int access> 
(assert (= var558 0)) ; Cond: $i3 == 0 
(define-const var3468 Int (access/-788090934 var583!1)) ; Statement: $i4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int access> 
(define-const var3579 Int (bv2nat (bvand ((_ int2bv 64) var3468) ((_ int2bv 64) 512)))) ; Statement: $i5 = $i4 & 512 
 ; Statement: if $i5 == 0 goto $r43 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var3579 0)) ; Cond: $i5 == 0 
(define-const var259 String (buf/-10557480 (cast-from-var2712-to-var1001 var583!1))) ; Statement: $r43 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var259 var988)) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r11) 
(declare-const var259!1 String)
(assert (str.prefixof var259 var259!1))
(assert true)
;(assert (appendDescriptor/199836990 var583!1 3 var1364)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r12) 

(declare-const var583!2 var2712)
(declare-const var3103 Int)
(declare-const var1364!1 String)
 ; Statement: if r13 == null goto $r44 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var3118 null-__Array__Int__String__)) ; Cond: r13 == null 
(define-const var2569 String (buf/-10557480 (cast-from-var2712-to-var1001 var583!2))) ; Statement: $r44 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2569 10)) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2569!1 String)
(declare-const var2627!2 Int)
(define-const var1981 var56 (text/-10557480 (cast-from-var2712-to-var1001 var583!2))) ; Statement: $r45 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var119 String (buf/-10557480 (cast-from-var2712-to-var1001 var583!2))) ; Statement: $r46 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2441 String (toString/-222306083 var119)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var56_add/328494887 var1981 (cast-from-String-to-var1438 var2441))) ; Statement: interfaceinvoke $r45.<java.util.List: boolean add(java.lang.Object)>($r47) 

(declare-const var1981!1 var56)
(declare-const var2441!1 String)
(assert true)
(define-const var991 var2712 (createTextifier/-1341636553 var583!2)) ; Statement: $r48 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var3273 var56 (text/-10557480 (cast-from-var2712-to-var1001 var583!2))) ; Statement: $r49 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var2625 var56 (getText/-142638630 (cast-from-var2712-to-var1001 var991))) ; Statement: $r50 = virtualinvoke $r48.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var56_add/328494887 var3273 (cast-from-var56-to-var1438 var2625))) ; Statement: interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r50) 

(declare-const var3273!1 var56)
(declare-const var2625!1 var56)
 ; Statement: return $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2712-to-var1001=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), Int_toHexString/1865784998=([int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), cast-from-Int-to-Int=([int], int), appendAccess/867888050=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), access/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], int), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var56_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1438=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var56-to-var1438=([java.util.List], java.lang.Object)}
; {var2712=jdk.internal.org.objectweb.asm.util.Textifier, var583=r0, var1350=i0, var988=r11, var365=null_type, var1364=r12, var3590=r10, var3118=r13, var1001=jdk.internal.org.objectweb.asm.util.Printer, var905=$r1, var3762=0, var3800=$r2, var2627=10, var2762=$i1, var3369=$r4, var1812=$r3, var3629=$r5, var604=$r8, var1375=$r6, var3274=$r7, var2101=$r9, var857=$r41, var568=$r42, var3525=$i14, var3699=$i10, var3733=$i11, var2730=$i2, var558=$i3, var3468=$i4, var3579=$i5, var259=$r43, var3103=3, var2569=$r44, var56=java.util.List, var1981=$r45, var119=$r46, var2441=$r47, var1438=java.lang.Object, var991=$r48, var3273=$r49, var2625=$r50}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2712, r0=var583, i0=var1350, r11=var988, null_type=var365, r12=var1364, r10=var3590, r13=var3118, jdk.internal.org.objectweb.asm.util.Printer=var1001, $r1=var905, 0=var3762, $r2=var3800, 10=var2627, $i1=var2762, $r4=var3369, $r3=var1812, $r5=var3629, $r8=var604, $r6=var1375, $r7=var3274, $r9=var2101, $r41=var857, $r42=var568, $i14=var3525, $i10=var3699, $i11=var3733, $i2=var2730, $i3=var558, $i4=var3468, $i5=var3579, $r43=var259, 3=var3103, $r44=var2569, java.util.List=var56, $r45=var1981, $r46=var119, $r47=var2441, java.lang.Object=var1438, $r48=var991, $r49=var3273, $r50=var2625}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r11 := @parameter1: java.lang.String;	r12 := @parameter2: java.lang.String;	r10 := @parameter3: java.lang.String;	r13 := @parameter4: java.lang.String[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$i1 = i0 & 131072;	if $i1 == 0 goto $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// access flags 0x");	$r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String toUpperCase()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	if r10 == null goto $r41 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r41 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r42 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	virtualinvoke $r41.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r42);	$i14 = (int) -65;	$i10 = i0 & $i14;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>($i10);	$i11 = i0 & 256;	if $i11 == 0 goto $i2 = i0 & 128;	$i2 = i0 & 128;	if $i2 == 0 goto $i3 = i0 & 64;	$i3 = i0 & 64;	if $i3 == 0 goto $i4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int access>;	$i4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int access>;	$i5 = $i4 & 512;	if $i5 == 0 goto $r43 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r43 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r11);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(3, r12);	if r13 == null goto $r44 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r44 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r45 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r46 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r45.<java.util.List: boolean add(java.lang.Object)>($r47);	$r48 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r49 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r50 = virtualinvoke $r48.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r50);	return $r48
;block_num 8