(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2310 0)
(declare-sort var203 0)
(declare-sort var2768 0)
(declare-sort var1746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var203) String)
(declare-fun cast-from-var2310-to-var203 (var2310) var203)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var2310) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var203) var2768)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2768_add/328494887 (var2768 var1746) Bool)
(declare-fun cast-from-String-to-var1746 (String) var1746)
(declare-const null-var2310 var2310)
(declare-const null-Int Int)
(declare-const var674 var2310) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var674 null-var2310)))
(declare-const var1848 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1848 null-Int)))
(declare-const var699 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var699 null-Int)))
(define-const var2940 String (buf/-10557480 (cast-from-var2310-to-var203 var674))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2940 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2940!1 String)
(declare-const var2451 Int)
(define-const var1122 String (buf/-10557480 (cast-from-var2310-to-var203 var674))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3609 String (tab2/-788090934 var674)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var128 String (append/1560614132 var1122 var3609)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1122!1 String)
(assert (str.prefixof var1122 var1122!1))
(assert true)
(define-const var3105 String (append/1560614132 var128 "MAXSTACK = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("MAXSTACK = ") 
(declare-const var128!1 String)
(assert (str.prefixof var128 var128!1))
(assert true)
(define-const var3128 String (append/1845021834 var3105 var1848)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
;(assert (append/1183289509 var3128 10)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3128!1 String)
(declare-const var303 Int)
(define-const var113 var2768 (text/-10557480 (cast-from-var2310-to-var203 var674))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1795 String (buf/-10557480 (cast-from-var2310-to-var203 var674))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1482 String (toString/-222306083 var1795)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2768_add/328494887 var113 (cast-from-String-to-var1746 var1482))) ; Statement: interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var113!1 var2768)
(declare-const var1482!1 String)
(define-const var592 String (buf/-10557480 (cast-from-var2310-to-var203 var674))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var592 0)) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var592!1 String)
(declare-const var2451!1 Int)
(define-const var842 String (buf/-10557480 (cast-from-var2310-to-var203 var674))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var655 String (tab2/-788090934 var674)) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var86 String (append/1560614132 var842 var655)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var842!1 String)
(assert (str.prefixof var842 var842!1))
(assert true)
(define-const var2217 String (append/1560614132 var86 "MAXLOCALS = ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("MAXLOCALS = ") 
(declare-const var86!1 String)
(assert (str.prefixof var86 var86!1))
(assert true)
(define-const var1591 String (append/1845021834 var2217 var699)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
;(assert (append/1183289509 var1591 10)) ; Statement: virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var1591!1 String)
(declare-const var303!1 Int)
(define-const var536 var2768 (text/-10557480 (cast-from-var2310-to-var203 var674))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1538 String (buf/-10557480 (cast-from-var2310-to-var203 var674))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2062 String (toString/-222306083 var1538)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2768_add/328494887 var536 (cast-from-String-to-var1746 var2062))) ; Statement: interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r18) 

(declare-const var536!1 var2768)
(declare-const var2062!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2310-to-var203=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2768_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1746=([java.lang.String], java.lang.Object)}
; {var2310=jdk.internal.org.objectweb.asm.util.Textifier, var674=r0, var1848=i0, var699=i1, var203=jdk.internal.org.objectweb.asm.util.Printer, var2940=$r1, var2451=0, var1122=$r3, var3609=$r2, var128=$r4, var3105=$r5, var3128=$r6, var303=10, var2768=java.util.List, var113=$r8, var1795=$r7, var1482=$r9, var1746=java.lang.Object, var592=$r10, var842=$r12, var655=$r11, var86=$r13, var2217=$r14, var1591=$r15, var536=$r17, var1538=$r16, var2062=$r18}
; {jdk.internal.org.objectweb.asm.util.Textifier=var2310, r0=var674, i0=var1848, i1=var699, jdk.internal.org.objectweb.asm.util.Printer=var203, $r1=var2940, 0=var2451, $r3=var1122, $r2=var3609, $r4=var128, $r5=var3105, $r6=var3128, 10=var303, java.util.List=var2768, $r8=var113, $r7=var1795, $r9=var1482, java.lang.Object=var1746, $r10=var592, $r12=var842, $r11=var655, $r13=var86, $r14=var2217, $r15=var1591, $r17=var536, $r16=var1538, $r18=var2062}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("MAXSTACK = ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r8.<java.util.List: boolean add(java.lang.Object)>($r9);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: void setLength(int)>(0);	$r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("MAXLOCALS = ");	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r17 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r18 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r18);	return
;block_num 1