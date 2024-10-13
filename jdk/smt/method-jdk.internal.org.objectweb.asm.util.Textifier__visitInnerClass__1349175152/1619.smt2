(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2298 0)
(declare-sort var2021 0)
(declare-sort var1949 0)
(declare-sort var1837 0)
(declare-sort var1227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1949) String)
(declare-fun cast-from-var2298-to-var1949 (var2298) var1949)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var2298) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendAccess/867888050 (var2298 Int) void)
(declare-fun appendDescriptor/199836990 (var2298 Int String) void)
(declare-fun text/-10557480 (var1949) var1837)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1837_add/328494887 (var1837 var1227) Bool)
(declare-fun cast-from-String-to-var1227 (String) var1227)
(declare-const null-var2298 var2298)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1642 var2298) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1642 null-var2298)))
(declare-const var2013 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var2013 null-String)))
(declare-const var954 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var954 null-String)))
(declare-const var3617 String) ; Statement: r16 := @parameter2: java.lang.String 
(assert (not (= var3617 null-String)))
(declare-const var2634 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2634 null-Int)))
(define-const var151 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var151 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var151!1 String)
(declare-const var3329 Int)
(define-const var2914 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1801 String (tab/-788090934 var1642)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var1860 String (append/1560614132 var2914 var1801)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2914!1 String)
(assert (str.prefixof var2914 var2914!1))
(assert true)
;(assert (append/1560614132 var1860 "// access flags 0x")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// access flags 0x") 
(declare-const var1860!1 String)
(assert (str.prefixof var1860 var1860!1))
(define-const var558 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var554 Int (cast-from-Int-to-Int (- 33))) ; Statement: $i3 = (int) -33 
(define-const var1964 Int (bv2nat (bvand ((_ int2bv 64) var2634) ((_ int2bv 64) var554)))) ; Statement: $i1 = i0 & $i3 
(define-const var820 String (Int_toHexString/1865784998 var1964)) ; Statement: $r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i1) 
(assert true)
(define-const var2233 String (toUpperCase/1156088314 var820)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var757 String (append/1560614132 var558 var2233)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var558!1 String)
(assert (str.prefixof var558 var558!1))
(assert true)
;(assert (append/1183289509 var757 10)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var757!1 String)
(declare-const var3535 Int)
(define-const var895 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3166 String (tab/-788090934 var1642)) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
;(assert (append/1560614132 var895 var3166)) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var895!1 String)
(assert (str.prefixof var895 var895!1))
(assert true)
;(assert (appendAccess/867888050 var1642 var2634)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>(i0) 

(declare-const var1642!1 var2298)
(declare-const var2634!1 Int)
(define-const var1288 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1288 "INNERCLASS ")) ; Statement: virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("INNERCLASS ") 
(declare-const var1288!1 String)
(assert (str.prefixof var1288 var1288!1))
(assert true)
;(assert (appendDescriptor/199836990 var1642!1 0 var2013)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r12) 

(declare-const var1642!2 var2298)
(declare-const var3329!1 Int)
(declare-const var2013!1 String)
(define-const var623 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642!2))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var623 32)) ; Statement: virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var623!1 String)
(declare-const var2393 Int)
(assert true)
;(assert (appendDescriptor/199836990 var1642!2 0 var954)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r14) 

(declare-const var1642!3 var2298)
(declare-const var3329!2 Int)
(declare-const var954!1 String)
(define-const var2463 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642!3))) ; Statement: $r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2463 32)) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var2463!1 String)
(declare-const var2393!1 Int)
(assert true)
;(assert (appendDescriptor/199836990 var1642!3 0 var3617)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r16) 

(declare-const var1642!4 var2298)
(declare-const var3329!3 Int)
(declare-const var3617!1 String)
(define-const var3264 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642!4))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3264 10)) ; Statement: virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3264!1 String)
(declare-const var3535!1 Int)
(define-const var774 var1837 (text/-10557480 (cast-from-var2298-to-var1949 var1642!4))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2416 String (buf/-10557480 (cast-from-var2298-to-var1949 var1642!4))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var167 String (toString/-222306083 var2416)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1837_add/328494887 var774 (cast-from-String-to-var1227 var167))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>($r20) 

(declare-const var774!1 var1837)
(declare-const var167!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2298-to-var1949=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), cast-from-Int-to-Int=([int], int), Int_toHexString/1865784998=([int], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendAccess/867888050=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1837_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1227=([java.lang.String], java.lang.Object)}
; {var2298=jdk.internal.org.objectweb.asm.util.Textifier, var1642=r0, var2013=r12, var2021=null_type, var954=r14, var3617=r16, var2634=i0, var1949=jdk.internal.org.objectweb.asm.util.Printer, var151=$r1, var3329=0, var2914=$r3, var1801=$r2, var1860=$r4, var558=$r5, var554=$i3, var1964=$i1, var820=$r6, var2233=$r7, var757=$r8, var3535=10, var895=$r10, var3166=$r9, var1288=$r11, var623=$r13, var2393=32, var2463=$r15, var3264=$r17, var1837=java.util.List, var774=$r19, var2416=$r18, var167=$r20, var1227=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2298, r0=var1642, r12=var2013, null_type=var2021, r14=var954, r16=var3617, i0=var2634, jdk.internal.org.objectweb.asm.util.Printer=var1949, $r1=var151, 0=var3329, $r3=var2914, $r2=var1801, $r4=var1860, $r5=var558, $i3=var554, $i1=var1964, $r6=var820, $r7=var2233, $r8=var757, 10=var3535, $r10=var895, $r9=var3166, $r11=var1288, $r13=var623, 32=var2393, $r15=var2463, $r17=var3264, java.util.List=var1837, $r19=var774, $r18=var2416, $r20=var167, java.lang.Object=var1227}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r12 := @parameter0: java.lang.String;	r14 := @parameter1: java.lang.String;	r16 := @parameter2: java.lang.String;	i0 := @parameter3: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// access flags 0x");	$r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$i3 = (int) -33;	$i1 = i0 & $i3;	$r6 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String toUpperCase()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>(i0);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("INNERCLASS ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r14);	$r15 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(0, r16);	$r17 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r19 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r20 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>($r20);	return
;block_num 1