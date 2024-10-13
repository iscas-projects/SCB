(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var986 0)
(declare-sort var3732 0)
(declare-sort var950 0)
(declare-sort var2340 0)
(declare-sort var2928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2340) String)
(declare-fun cast-from-var986-to-var2340 (var986) var2340)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun tab/-788090934 (var986) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun appendAccess/867888050 (var986 Int) void)
(declare-fun appendDescriptor/199836990 (var986 Int String) void)
(declare-fun text/-10557480 (var2340) var2928)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2928_add/328494887 (var2928 var950) Bool)
(declare-fun cast-from-String-to-var950 (String) var950)
(declare-fun createTextifier/-1341636553 (var986) var986)
(declare-fun getText/-142638630 (var2340) var2928)
(declare-fun cast-from-var2928-to-var950 (var2928) var950)
(declare-const null-var986 var986)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var950 var950)
(declare-const var2671 var986) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2671 null-var986)))
(declare-const var280 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var280 null-Int)))
(declare-const var1885 String) ; Statement: r15 := @parameter1: java.lang.String 
(assert (not (= var1885 null-String)))
(declare-const var601 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var601 null-String)))
(declare-const var2221 String) ; Statement: r10 := @parameter3: java.lang.String 
(assert (not (= var2221 null-String)))
(declare-const var1342 var950) ; Statement: r17 := @parameter4: java.lang.Object 
(assert (not (= var1342 null-var950)))
(define-const var2463 String (buf/-10557480 (cast-from-var986-to-var2340 var2671))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2463 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2463!1 String)
(declare-const var1189 Int)
(define-const var2208 String (buf/-10557480 (cast-from-var986-to-var2340 var2671))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2208 10)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2208!1 String)
(declare-const var2734 Int)
(define-const var3798 Int (bv2nat (bvand ((_ int2bv 64) var280) ((_ int2bv 64) 131072)))) ; Statement: $i1 = i0 & 131072 
 ; Statement: if $i1 == 0 goto $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var3798 0)) ; Cond: $i1 == 0 
(define-const var1609 String (buf/-10557480 (cast-from-var986-to-var2340 var2671))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var2809 String (tab/-788090934 var2671)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var1682 String (append/1560614132 var1609 var2809)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1609!1 String)
(assert (str.prefixof var1609 var1609!1))
(assert true)
(define-const var3939 String (append/1560614132 var1682 "// access flags 0x")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// access flags 0x") 
(declare-const var1682!1 String)
(assert (str.prefixof var1682 var1682!1))
(define-const var3838 String (Int_toHexString/1865784998 var280)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(assert true)
(define-const var55 String (toUpperCase/1156088314 var3838)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var2487 String (append/1560614132 var3939 var55)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var3939!1 String)
(assert (str.prefixof var3939 var3939!1))
(assert true)
;(assert (append/1183289509 var2487 10)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2487!1 String)
(declare-const var2734!1 Int)
 ; Statement: if r10 == null goto $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var2221 null-String)) ; Cond: r10 == null 
(define-const var3516 String (buf/-10557480 (cast-from-var986-to-var2340 var2671))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var2016 String (tab/-788090934 var2671)) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
;(assert (append/1560614132 var3516 var2016)) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var3516!1 String)
(assert (str.prefixof var3516 var3516!1))
(assert true)
;(assert (appendAccess/867888050 var2671 var280)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>(i0) 

(declare-const var2671!1 var986)
(declare-const var280!1 Int)
(assert true)
;(assert (appendDescriptor/199836990 var2671!1 1 var601)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r13) 

(declare-const var2671!2 var986)
(declare-const var686 Int)
(declare-const var601!1 String)
(define-const var2591 String (buf/-10557480 (cast-from-var986-to-var2340 var2671!2))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var906 String (append/1183289509 var2591 32)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(assert true)
;(assert (append/1560614132 var906 var1885)) ; Statement: virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r15) 
(declare-const var906!1 String)
(assert (str.prefixof var906 var906!1))
 ; Statement: if r17 == null goto $r36 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var1342 null-var950)) ; Cond: r17 == null 
(define-const var2956 String (buf/-10557480 (cast-from-var986-to-var2340 var2671!2))) ; Statement: $r36 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2956 10)) ; Statement: virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2956!1 String)
(declare-const var2734!2 Int)
(define-const var3901 var2928 (text/-10557480 (cast-from-var986-to-var2340 var2671!2))) ; Statement: $r37 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1883 String (buf/-10557480 (cast-from-var986-to-var2340 var2671!2))) ; Statement: $r38 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2837 String (toString/-222306083 var1883)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2928_add/328494887 var3901 (cast-from-String-to-var950 var2837))) ; Statement: interfaceinvoke $r37.<java.util.List: boolean add(java.lang.Object)>($r39) 

(declare-const var3901!1 var2928)
(declare-const var2837!1 String)
(assert true)
(define-const var2188 var986 (createTextifier/-1341636553 var2671!2)) ; Statement: $r40 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var2777 var2928 (text/-10557480 (cast-from-var986-to-var2340 var2671!2))) ; Statement: $r41 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var3805 var2928 (getText/-142638630 (cast-from-var986-to-var2340 var2188))) ; Statement: $r42 = virtualinvoke $r40.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var2928_add/328494887 var2777 (cast-from-var2928-to-var950 var3805))) ; Statement: interfaceinvoke $r41.<java.util.List: boolean add(java.lang.Object)>($r42) 

(declare-const var2777!1 var2928)
(declare-const var3805!1 var2928)
 ; Statement: return $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var986-to-var2340=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), Int_toHexString/1865784998=([int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), appendAccess/867888050=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2928_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var950=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var2928-to-var950=([java.util.List], java.lang.Object)}
; {var986=jdk.internal.org.objectweb.asm.util.Textifier, var2671=r0, var280=i0, var1885=r15, var3732=null_type, var601=r13, var2221=r10, var950=java.lang.Object, var1342=r17, var2340=jdk.internal.org.objectweb.asm.util.Printer, var2463=$r1, var1189=0, var2208=$r2, var2734=10, var3798=$i1, var1609=$r4, var2809=$r3, var1682=$r5, var3939=$r8, var3838=$r6, var55=$r7, var2487=$r9, var3516=$r12, var2016=$r11, var686=1, var2591=$r14, var906=$r16, var2956=$r36, var2928=java.util.List, var3901=$r37, var1883=$r38, var2837=$r39, var2188=$r40, var2777=$r41, var3805=$r42}
; {jdk.internal.org.objectweb.asm.util.Textifier=var986, r0=var2671, i0=var280, r15=var1885, null_type=var3732, r13=var601, r10=var2221, java.lang.Object=var950, r17=var1342, jdk.internal.org.objectweb.asm.util.Printer=var2340, $r1=var2463, 0=var1189, $r2=var2208, 10=var2734, $i1=var3798, $r4=var1609, $r3=var2809, $r5=var1682, $r8=var3939, $r6=var3838, $r7=var55, $r9=var2487, $r12=var3516, $r11=var2016, 1=var686, $r14=var2591, $r16=var906, $r36=var2956, java.util.List=var2928, $r37=var3901, $r38=var1883, $r39=var2837, $r40=var2188, $r41=var2777, $r42=var3805}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	r15 := @parameter1: java.lang.String;	r13 := @parameter2: java.lang.String;	r10 := @parameter3: java.lang.String;	r17 := @parameter4: java.lang.Object;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$i1 = i0 & 131072;	if $i1 == 0 goto $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// access flags 0x");	$r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String toUpperCase()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	if r10 == null goto $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>(i0);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r13);	$r14 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r16 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r15);	if r17 == null goto $r36 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r36 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r37 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r38 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r37.<java.util.List: boolean add(java.lang.Object)>($r39);	$r40 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r41 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r42 = virtualinvoke $r40.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r41.<java.util.List: boolean add(java.lang.Object)>($r42);	return $r40
;block_num 4