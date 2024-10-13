(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var331 0)
(declare-sort var1914 0)
(declare-sort var1713 0)
(declare-sort var3454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1713) String)
(declare-fun cast-from-var331-to-var1713 (var331) var1713)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun ltab/-788090934 (var331) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var1713) var3454)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3454_add/328494887 (var3454 var1914) Bool)
(declare-fun cast-from-String-to-var1914 (String) var1914)
(declare-const null-var331 var331)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1914__ (Array Int var1914))
(declare-const var3059 var331) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3059 null-var331)))
(declare-const var776 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var776 null-Int)))
(declare-const var1490 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1490 null-Int)))
(declare-const var2644 (Array Int var1914)) ; Statement: r11 := @parameter2: java.lang.Object[] 
(assert (not (= var2644 null-__Array__Int__var1914__)))
(declare-const var2857 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2857 null-Int)))
(declare-const var1091 (Array Int var1914)) ; Statement: r6 := @parameter4: java.lang.Object[] 
(assert (not (= var1091 null-__Array__Int__var1914__)))
(define-const var1440 String (buf/-10557480 (cast-from-var331-to-var1713 var3059))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1440 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1440!1 String)
(declare-const var3858 Int)
(define-const var213 String (buf/-10557480 (cast-from-var331-to-var1713 var3059))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1380 String (ltab/-788090934 var3059)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String ltab> 
(assert true)
;(assert (append/1560614132 var213 var1380)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var213!1 String)
(assert (str.prefixof var213 var213!1))
(define-const var469 String (buf/-10557480 (cast-from-var331-to-var1713 var3059))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var469 "FRAME ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FRAME ") 
(declare-const var469!1 String)
(assert (str.prefixof var469 var469!1))
 ; Statement: tableswitch(i0) {     case -1: goto $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 0: goto $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 1: goto $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 2: goto $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 3: goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 4: goto $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     default: goto $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>; } 
(assert (and (not (= var776 4)) (and (not (= var776 3)) (and (not (= var776 2)) (and (not (= var776 1)) (and (not (= var776 0)) (and (not (= var776 (- 1))) true))))))) ; Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Intersect: Negate: Cond: i0 == -1   and Non Conditional      
(define-const var2662 String (buf/-10557480 (cast-from-var331-to-var1713 var3059))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var2662 10)) ; Statement: virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2662!1 String)
(declare-const var971 Int)
(define-const var1576 var3454 (text/-10557480 (cast-from-var331-to-var1713 var3059))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3948 String (buf/-10557480 (cast-from-var331-to-var1713 var3059))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3770 String (toString/-222306083 var3948)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3454_add/328494887 var1576 (cast-from-String-to-var1914 var3770))) ; Statement: interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r19) 

(declare-const var1576!1 var3454)
(declare-const var3770!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var331-to-var1713=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), ltab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3454_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1914=([java.lang.String], java.lang.Object)}
; {var331=jdk.internal.org.objectweb.asm.util.Textifier, var3059=r0, var776=i0, var1490=i1, var1914=java.lang.Object, var2644=r11, var2857=i2, var1091=r6, var1713=jdk.internal.org.objectweb.asm.util.Printer, var1440=$r1, var3858=0, var213=$r3, var1380=$r2, var469=$r4, var2662=$r16, var971=10, var3454=java.util.List, var1576=$r17, var3948=$r18, var3770=$r19}
; {jdk.internal.org.objectweb.asm.util.Textifier=var331, r0=var3059, i0=var776, i1=var1490, java.lang.Object=var1914, r11=var2644, i2=var2857, r6=var1091, jdk.internal.org.objectweb.asm.util.Printer=var1713, $r1=var1440, 0=var3858, $r3=var213, $r2=var1380, $r4=var469, $r16=var2662, 10=var971, java.util.List=var3454, $r17=var1576, $r18=var3948, $r19=var3770}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	r11 := @parameter2: java.lang.Object[];	i2 := @parameter3: int;	r6 := @parameter4: java.lang.Object[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String ltab>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FRAME ");	tableswitch(i0) {     case -1: goto $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 0: goto $r13 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 1: goto $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 2: goto $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 3: goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     case 4: goto $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;     default: goto $r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>; };	$r16 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r17 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r18 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r19);	return
;block_num 2