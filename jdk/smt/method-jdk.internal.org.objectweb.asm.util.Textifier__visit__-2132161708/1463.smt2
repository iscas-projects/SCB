(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2369 0)
(declare-sort var613 0)
(declare-sort var3016 0)
(declare-sort var3031 0)
(declare-sort var321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun access/-788090934 (var2369) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun buf/-10557480 (var3016) String)
(declare-fun cast-from-var2369-to-var3016 (var2369) var3016)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun appendDescriptor/199836990 (var2369 Int String) void)
(declare-fun appendAccess/867888050 (var2369 Int) void)
(declare-fun text/-10557480 (var3016) var3031)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3031_add/328494887 (var3031 var321) Bool)
(declare-fun cast-from-String-to-var321 (String) var321)
(declare-const null-var2369 var2369)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3659 var2369) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3659 null-var2369)))
(declare-const var1714 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1714 null-Int)))
(declare-const var815 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var815 null-Int)))
(declare-const var23 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var23 null-String)))
(declare-const var3722 String) ; Statement: r14 := @parameter3: java.lang.String 
(assert (not (= var3722 null-String)))
(declare-const var2124 String) ; Statement: r16 := @parameter4: java.lang.String 
(assert (not (= var2124 null-String)))
(declare-const var2866 (Array Int String)) ; Statement: r17 := @parameter5: java.lang.String[] 
(assert (not (= var2866 null-__Array__Int__String__)))
(declare-const var3659!1 var2369)
(assert (not (= var3659!1 null-var2369)))
(assert (= (access/-788090934 var3659!1) var815)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.Textifier: int access> = i0 
(define-const var2995 Int (cast-from-Int-to-Int 65535)) ; Statement: $i13 = (int) 65535 
(define-const var1107 Int (bv2nat (bvand ((_ int2bv 64) var1714) ((_ int2bv 64) var2995)))) ; Statement: i2 = i1 & $i13 
(define-const var946 Int (div var1714 (to_int (^ 2 16)))) ; Statement: i3 = i1 >>> 16 
(define-const var1098 String (buf/-10557480 (cast-from-var2369-to-var3016 var3659!1))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1098 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1098!1 String)
(declare-const var1371 Int)
(define-const var2084 String (buf/-10557480 (cast-from-var2369-to-var3016 var3659!1))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var8 String (append/1560614132 var2084 "// class version ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// class version ") 
(declare-const var2084!1 String)
(assert (str.prefixof var2084 var2084!1))
(assert true)
(define-const var3078 String (append/1845021834 var8 var1107)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2) 
(assert true)
(define-const var1567 String (append/1183289509 var3078 46)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46) 
(assert true)
(define-const var3085 String (append/1845021834 var1567 var946)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i3) 
(assert true)
(define-const var490 String (append/1560614132 var3085 " (")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" (") 
(declare-const var3085!1 String)
(assert (str.prefixof var3085 var3085!1))
(assert true)
(define-const var3375 String (append/1845021834 var490 var1714)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
;(assert (append/1560614132 var3375 ")\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")\n") 
(declare-const var3375!1 String)
(assert (str.prefixof var3375 var3375!1))
(define-const var1379 Int (bv2nat (bvand ((_ int2bv 64) var815) ((_ int2bv 64) 131072)))) ; Statement: $i4 = i0 & 131072 
 ; Statement: if $i4 == 0 goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var1379 0)) ; Cond: $i4 == 0 
(define-const var2054 String (buf/-10557480 (cast-from-var2369-to-var3016 var3659!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3067 String (append/1560614132 var2054 "// access flags 0x")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// access flags 0x") 
(declare-const var2054!1 String)
(assert (str.prefixof var2054 var2054!1))
(define-const var3082 String (Int_toHexString/1865784998 var815)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var705 String (toUpperCase/1156088314 var3082)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var2459 String (append/1560614132 var3067 var705)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var3067!1 String)
(assert (str.prefixof var3067 var3067!1))
(assert true)
;(assert (append/1183289509 var2459 10)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2459!1 String)
(declare-const var1275 Int)
(assert true)
;(assert (appendDescriptor/199836990 var3659!1 5 var3722)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(5, r14) 

(declare-const var3659!2 var2369)
(declare-const var3114 Int)
(declare-const var3722!1 String)
 ; Statement: if r14 == null goto $i15 = (int) -33 
(assert (= var3722!1 null-String)) ; Cond: r14 == null 
(define-const var3074 Int (cast-from-Int-to-Int (- 33))) ; Statement: $i15 = (int) -33 
(define-const var1790 Int (bv2nat (bvand ((_ int2bv 64) var815) ((_ int2bv 64) var3074)))) ; Statement: $i5 = i0 & $i15 
(assert true)
;(assert (appendAccess/867888050 var3659!2 var1790)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>($i5) 

(declare-const var3659!3 var2369)
(declare-const var1790!1 Int)
(define-const var712 Int (bv2nat (bvand ((_ int2bv 64) var815) ((_ int2bv 64) 8192)))) ; Statement: $i6 = i0 & 8192 
 ; Statement: if $i6 == 0 goto $i7 = i0 & 512 
(assert (not (= var712 0))) ; Negate: Cond: $i6 == 0  
(define-const var1272 String (buf/-10557480 (cast-from-var2369-to-var3016 var3659!3))) ; Statement: $r26 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1272 "@interface ")) ; Statement: virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("@interface ") 
(declare-const var1272!1 String)
(assert (str.prefixof var1272 var1272!1))
 ; Statement: goto [?= virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r15)] 
(assert true) ; Non Conditional
(assert true)
;(assert (appendDescriptor/199836990 var3659!3 0 var23)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r15) 

(declare-const var3659!4 var2369)
(declare-const var1371!1 Int)
(declare-const var23!1 String)
 ; Statement: if r16 == null goto (branch) 
(assert (= var2124 null-String)) ; Cond: r16 == null 
 ; Statement: if r17 == null goto $r35 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var2866 null-__Array__Int__String__)) ; Cond: r17 == null 
(define-const var2958 String (buf/-10557480 (cast-from-var2369-to-var3016 var3659!4))) ; Statement: $r35 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2958 " {\n\n")) ; Statement: virtualinvoke $r35.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" {\n\n") 
(declare-const var2958!1 String)
(assert (str.prefixof var2958 var2958!1))
(define-const var518 var3031 (text/-10557480 (cast-from-var2369-to-var3016 var3659!4))) ; Statement: $r36 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var427 String (buf/-10557480 (cast-from-var2369-to-var3016 var3659!4))) ; Statement: $r37 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2126 String (toString/-222306083 var427)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3031_add/328494887 var518 (cast-from-String-to-var321 var2126))) ; Statement: interfaceinvoke $r36.<java.util.List: boolean add(java.lang.Object)>($r38) 

(declare-const var518!1 var3031)
(declare-const var2126!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {access/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], int), cast-from-Int-to-Int=([int], int), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2369-to-var3016=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), Int_toHexString/1865784998=([int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), appendAccess/867888050=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3031_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var321=([java.lang.String], java.lang.Object)}
; {var2369=jdk.internal.org.objectweb.asm.util.Textifier, var3659=r0, var1714=i1, var815=i0, var23=r15, var613=null_type, var3722=r14, var2124=r16, var2866=r17, var2995=$i13, var1107=i2, var946=i3, var3016=jdk.internal.org.objectweb.asm.util.Printer, var1098=$r1, var1371=0, var2084=$r2, var8=$r3, var3078=$r4, var1567=$r5, var3085=$r6, var490=$r7, var3375=$r8, var1379=$i4, var2054=$r9, var3067=$r12, var3082=$r10, var705=$r11, var2459=$r13, var1275=10, var3114=5, var3074=$i15, var1790=$i5, var712=$i6, var1272=$r26, var2958=$r35, var3031=java.util.List, var518=$r36, var427=$r37, var2126=$r38, var321=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2369, r0=var3659, i1=var1714, i0=var815, r15=var23, null_type=var613, r14=var3722, r16=var2124, r17=var2866, $i13=var2995, i2=var1107, i3=var946, jdk.internal.org.objectweb.asm.util.Printer=var3016, $r1=var1098, 0=var1371, $r2=var2084, $r3=var8, $r4=var3078, $r5=var1567, $r6=var3085, $r7=var490, $r8=var3375, $i4=var1379, $r9=var2054, $r12=var3067, $r10=var3082, $r11=var705, $r13=var2459, 10=var1275, 5=var3114, $i15=var3074, $i5=var1790, $i6=var712, $r26=var1272, $r35=var2958, java.util.List=var3031, $r36=var518, $r37=var427, $r38=var2126, java.lang.Object=var321}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i1 := @parameter0: int;	i0 := @parameter1: int;	r15 := @parameter2: java.lang.String;	r14 := @parameter3: java.lang.String;	r16 := @parameter4: java.lang.String;	r17 := @parameter5: java.lang.String[];	r0.<jdk.internal.org.objectweb.asm.util.Textifier: int access> = i0;	$i13 = (int) 65535;	i2 = i1 & $i13;	i3 = i1 >>> 16;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// class version ");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" (");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(")\n");	$i4 = i0 & 131072;	if $i4 == 0 goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// access flags 0x");	$r10 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r11 = virtualinvoke $r10.<java.lang.String: java.lang.String toUpperCase()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(5, r14);	if r14 == null goto $i15 = (int) -33;	$i15 = (int) -33;	$i5 = i0 & $i15;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>($i5);	$i6 = i0 & 8192;	if $i6 == 0 goto $i7 = i0 & 512;	$r26 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r26.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("@interface ");	goto [?= virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r15)];	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r15);	if r16 == null goto (branch);	if r17 == null goto $r35 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r35 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r35.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" {\n\n");	$r36 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r37 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r38 = virtualinvoke $r37.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r36.<java.util.List: boolean add(java.lang.Object)>($r38);	return
;block_num 7