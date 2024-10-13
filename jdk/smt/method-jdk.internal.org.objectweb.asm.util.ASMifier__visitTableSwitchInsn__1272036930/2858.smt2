(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var343 0)
(declare-sort var5 0)
(declare-sort var1313 0)
(declare-sort var2681 0)
(declare-sort var66 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1313) String)
(declare-fun cast-from-var343-to-var1313 (var343) var1313)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun getLength-Arr-var5-1 ((Array Int var5)) Int)
(declare-fun declareLabel/-244488941 (var343 var5) void)
(declare-fun name/1045876480 (var343) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun appendLabel/937164375 (var343 var5) void)
(declare-fun text/-10557480 (var1313) var2681)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2681_add/328494887 (var2681 var66) Bool)
(declare-fun cast-from-String-to-var66 (String) var66)
(declare-const null-var343 var343)
(declare-const null-Int Int)
(declare-const null-var5 var5)
(declare-const null-__Array__Int__var5__ (Array Int var5))
(declare-const var1913 var343) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1913 null-var343)))
(declare-const var2660 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2660 null-Int)))
(declare-const var3156 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3156 null-Int)))
(declare-const var2708 var5) ; Statement: r3 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var2708 null-var5)))
(declare-const var3884 (Array Int var5)) ; Statement: r2 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var3884 null-__Array__Int__var5__)))
(define-const var2050 String (buf/-10557480 (cast-from-var343-to-var1313 var1913))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2050 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2050!1 String)
(declare-const var1515 Int)
(define-const var170 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var1149 Int (getLength-Arr-var5-1 var3884)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i4 >= $i0 goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3) 
(assert (>= var170 var1149)) ; Cond: i4 >= $i0 
(assert true)
;(assert (declareLabel/-244488941 var1913 var2708)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3) 

(declare-const var1913!1 var343)
(declare-const var2708!1 var5)
(define-const var207 String (buf/-10557480 (cast-from-var343-to-var1313 var1913!1))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var1138 String (name/1045876480 var1913!1)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1113 String (append/1560614132 var207 var1138)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var207!1 String)
(assert (str.prefixof var207 var207!1))
(assert true)
(define-const var3180 String (append/1560614132 var1113 ".visitTableSwitchInsn(")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitTableSwitchInsn(") 
(declare-const var1113!1 String)
(assert (str.prefixof var1113 var1113!1))
(assert true)
(define-const var121 String (append/1845021834 var3180 var2660)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
(define-const var1861 String (append/1560614132 var121 ", ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var121!1 String)
(assert (str.prefixof var121 var121!1))
(assert true)
(define-const var2772 String (append/1845021834 var1861 var3156)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2) 
(assert true)
;(assert (append/1560614132 var2772 ", ")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2772!1 String)
(assert (str.prefixof var2772 var2772!1))
(assert true)
;(assert (appendLabel/937164375 var1913!1 var2708!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r3) 

(declare-const var1913!2 var343)
(declare-const var2708!2 var5)
(define-const var3514 String (buf/-10557480 (cast-from-var343-to-var1313 var1913!2))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3514 ", new Label[] {")) ; Statement: virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", new Label[] {") 
(declare-const var3514!1 String)
(assert (str.prefixof var3514 var3514!1))
(define-const var52 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var2385 Int (getLength-Arr-var5-1 var3884)) ; Statement: $i3 = lengthof r2 
 ; Statement: if i5 >= $i3 goto $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (>= var52 var2385)) ; Cond: i5 >= $i3 
(define-const var3959 String (buf/-10557480 (cast-from-var343-to-var1313 var1913!2))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3959 " });\n")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" });\n") 
(declare-const var3959!1 String)
(assert (str.prefixof var3959 var3959!1))
(define-const var2891 var2681 (text/-10557480 (cast-from-var343-to-var1313 var1913!2))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var515 String (buf/-10557480 (cast-from-var343-to-var1313 var1913!2))) ; Statement: $r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var801 String (toString/-222306083 var515)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2681_add/328494887 var2891 (cast-from-String-to-var66 var801))) ; Statement: interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15) 

(declare-const var2891!1 var2681)
(declare-const var801!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var343-to-var1313=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), getLength-Arr-var5-1=([jdk.internal.org.objectweb.asm.Label[]], int), declareLabel/-244488941=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), appendLabel/937164375=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2681_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var66=([java.lang.String], java.lang.Object)}
; {var343=jdk.internal.org.objectweb.asm.util.ASMifier, var1913=r0, var2660=i1, var3156=i2, var5=jdk.internal.org.objectweb.asm.Label, var2708=r3, var3884=r2, var1313=jdk.internal.org.objectweb.asm.util.Printer, var2050=$r1, var1515=0, var170=i4, var1149=$i0, var207=$r5, var1138=$r4, var1113=$r6, var3180=$r7, var121=$r8, var1861=$r9, var2772=$r10, var3514=$r11, var52=i5, var2385=$i3, var3959=$r12, var2681=java.util.List, var2891=$r14, var515=$r13, var801=$r15, var66=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var343, r0=var1913, i1=var2660, i2=var3156, jdk.internal.org.objectweb.asm.Label=var5, r3=var2708, r2=var3884, jdk.internal.org.objectweb.asm.util.Printer=var1313, $r1=var2050, 0=var1515, i4=var170, $i0=var1149, $r5=var207, $r4=var1138, $r6=var1113, $r7=var3180, $r8=var121, $r9=var1861, $r10=var2772, $r11=var3514, i5=var52, $i3=var2385, $r12=var3959, java.util.List=var2681, $r14=var2891, $r13=var515, $r15=var801, java.lang.Object=var66}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 6,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i1 := @parameter0: int;	i2 := @parameter1: int;	r3 := @parameter2: jdk.internal.org.objectweb.asm.Label;	r2 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	i4 = 0;	$i0 = lengthof r2;	if i4 >= $i0 goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3);	$r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitTableSwitchInsn(");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2);	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r3);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", new Label[] {");	i5 = 0;	$i3 = lengthof r2;	if i5 >= $i3 goto $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" });\n");	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r13 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r14.<java.util.List: boolean add(java.lang.Object)>($r15);	return
;block_num 5