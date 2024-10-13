(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var927 0)
(declare-sort var18 0)
(declare-sort var2774 0)
(declare-sort var1826 0)
(declare-sort var137 0)
(declare-sort var2355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1826) String)
(declare-fun cast-from-var927-to-var1826 (var927) var1826)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var927) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var927 Int String) void)
(declare-fun appendLabel/827185861 (var927 var2774) void)
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var1826) var137)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var137_add/328494887 (var137 var2355) Bool)
(declare-fun cast-from-String-to-var2355 (String) var2355)
(declare-const null-var927 var927)
(declare-const null-String String)
(declare-const null-var2774 var2774)
(declare-const null-Int Int)
(declare-const var3288 var927) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3288 null-var927)))
(declare-const var3509 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3509 null-String)))
(declare-const var2533 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var2533 null-String)))
(declare-const var2265 String) ; Statement: r16 := @parameter2: java.lang.String 
(assert (not (= var2265 null-String)))
(declare-const var3453 var2774) ; Statement: r10 := @parameter3: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3453 null-var2774)))
(declare-const var1022 var2774) ; Statement: r12 := @parameter4: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1022 null-var2774)))
(declare-const var1228 Int) ; Statement: i0 := @parameter5: int 
(assert (not (= var1228 null-Int)))
(define-const var2874 String (buf/-10557480 (cast-from-var927-to-var1826 var3288))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2874 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2874!1 String)
(declare-const var2564 Int)
(define-const var1146 String (buf/-10557480 (cast-from-var927-to-var1826 var3288))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var310 String (tab2/-788090934 var3288)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2886 String (append/1560614132 var1146 var310)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1146!1 String)
(assert (str.prefixof var1146 var1146!1))
(assert true)
(define-const var2479 String (append/1560614132 var2886 "LOCALVARIABLE ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LOCALVARIABLE ") 
(declare-const var2886!1 String)
(assert (str.prefixof var2886 var2886!1))
(assert true)
(define-const var1498 String (append/1560614132 var2479 var3509)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var2479!1 String)
(assert (str.prefixof var2479 var2479!1))
(assert true)
;(assert (append/1183289509 var1498 32)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var1498!1 String)
(declare-const var2092 Int)
(assert true)
;(assert (appendDescriptor/199836990 var3288 1 var2533)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r8) 

(declare-const var3288!1 var927)
(declare-const var3198 Int)
(declare-const var2533!1 String)
(define-const var3805 String (buf/-10557480 (cast-from-var927-to-var1826 var3288!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3805 32)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var3805!1 String)
(declare-const var2092!1 Int)
(assert true)
;(assert (appendLabel/827185861 var3288!1 var3453)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r10) 

(declare-const var3288!2 var927)
(declare-const var3453!1 var2774)
(define-const var159 String (buf/-10557480 (cast-from-var927-to-var1826 var3288!2))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var159 32)) ; Statement: virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 

(declare-const var159!1 String)
(declare-const var2092!2 Int)
(assert true)
;(assert (appendLabel/827185861 var3288!2 var1022)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r12) 

(declare-const var3288!3 var927)
(declare-const var1022!1 var2774)
(define-const var3688 String (buf/-10557480 (cast-from-var927-to-var1826 var3288!3))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var459 String (append/1183289509 var3688 32)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(assert true)
(define-const var1094 String (append/1845021834 var459 var1228)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
;(assert (append/1183289509 var1094 10)) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var1094!1 String)
(declare-const var3867 Int)
 ; Statement: if r16 == null goto $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert (= var2265 null-String)) ; Cond: r16 == null 
(define-const var1099 var137 (text/-10557480 (cast-from-var927-to-var1826 var3288!3))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2083 String (buf/-10557480 (cast-from-var927-to-var1826 var3288!3))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var406 String (toString/-222306083 var2083)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var137_add/328494887 var1099 (cast-from-String-to-var2355 var406))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19) 

(declare-const var1099!1 var137)
(declare-const var406!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var927-to-var1826=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), appendLabel/827185861=([jdk.internal.org.objectweb.asm.util.Textifier, jdk.internal.org.objectweb.asm.Label], void), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var137_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2355=([java.lang.String], java.lang.Object)}
; {var927=jdk.internal.org.objectweb.asm.util.Textifier, var3288=r0, var3509=r5, var18=null_type, var2533=r8, var2265=r16, var2774=jdk.internal.org.objectweb.asm.Label, var3453=r10, var1022=r12, var1228=i0, var1826=jdk.internal.org.objectweb.asm.util.Printer, var2874=$r1, var2564=0, var1146=$r3, var310=$r2, var2886=$r4, var2479=$r6, var1498=$r7, var2092=32, var3198=1, var3805=$r9, var159=$r11, var3688=$r13, var459=$r14, var1094=$r15, var3867=10, var137=java.util.List, var1099=$r18, var2083=$r17, var406=$r19, var2355=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var927, r0=var3288, r5=var3509, null_type=var18, r8=var2533, r16=var2265, jdk.internal.org.objectweb.asm.Label=var2774, r10=var3453, r12=var1022, i0=var1228, jdk.internal.org.objectweb.asm.util.Printer=var1826, $r1=var2874, 0=var2564, $r3=var1146, $r2=var310, $r4=var2886, $r6=var2479, $r7=var1498, 32=var2092, 1=var3198, $r9=var3805, $r11=var159, $r13=var3688, $r14=var459, $r15=var1094, 10=var3867, java.util.List=var137, $r18=var1099, $r17=var2083, $r19=var406, java.lang.Object=var2355}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	r16 := @parameter2: java.lang.String;	r10 := @parameter3: jdk.internal.org.objectweb.asm.Label;	r12 := @parameter4: jdk.internal.org.objectweb.asm.Label;	i0 := @parameter5: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("LOCALVARIABLE ");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r8);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r10);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r12);	$r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	if r16 == null goto $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r17 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r19 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>($r19);	return
;block_num 2