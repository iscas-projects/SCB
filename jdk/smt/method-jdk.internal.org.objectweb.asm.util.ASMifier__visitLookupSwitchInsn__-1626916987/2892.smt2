(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2600 0)
(declare-sort var228 0)
(declare-sort var1451 0)
(declare-sort var2849 0)
(declare-sort var1325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1451) String)
(declare-fun cast-from-var2600-to-var1451 (var2600) var1451)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun getLength-Arr-var228-1 ((Array Int var228)) Int)
(declare-fun declareLabel/-244488941 (var2600 var228) void)
(declare-fun name/1045876480 (var2600) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/937164375 (var2600 var228) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun text/-10557480 (var1451) var2849)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2849_add/328494887 (var2849 var1325) Bool)
(declare-fun cast-from-String-to-var1325 (String) var1325)
(declare-const null-var2600 var2600)
(declare-const null-var228 var228)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__var228__ (Array Int var228))
(declare-const var755 var2600) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var755 null-var2600)))
(declare-const var674 var228) ; Statement: r3 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var674 null-var228)))
(declare-const var1645 (Array Int Int)) ; Statement: r8 := @parameter1: int[] 
(assert (not (= var1645 null-__Array__Int__Int__)))
(declare-const var2703 (Array Int var228)) ; Statement: r2 := @parameter2: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2703 null-__Array__Int__var228__)))
(define-const var3189 String (buf/-10557480 (cast-from-var2600-to-var1451 var755))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3189 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3189!1 String)
(declare-const var1029 Int)
(define-const var3755 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3288 Int (getLength-Arr-var228-1 var2703)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i4 >= $i0 goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3) 
(assert (>= var3755 var3288)) ; Cond: i4 >= $i0 
(assert true)
;(assert (declareLabel/-244488941 var755 var674)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3) 

(declare-const var755!1 var2600)
(declare-const var674!1 var228)
(define-const var3234 String (buf/-10557480 (cast-from-var2600-to-var1451 var755!1))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var1789 String (name/1045876480 var755!1)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var767 String (append/1560614132 var3234 var1789)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3234!1 String)
(assert (str.prefixof var3234 var3234!1))
(assert true)
;(assert (append/1560614132 var767 ".visitLookupSwitchInsn(")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLookupSwitchInsn(") 
(declare-const var767!1 String)
(assert (str.prefixof var767 var767!1))
(assert true)
;(assert (appendLabel/937164375 var755!1 var674!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r3) 

(declare-const var755!2 var2600)
(declare-const var674!2 var228)
(define-const var1130 String (buf/-10557480 (cast-from-var2600-to-var1451 var755!2))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1130 ", new int[] {")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", new int[] {") 
(declare-const var1130!1 String)
(assert (str.prefixof var1130 var1130!1))
(define-const var1205 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var291 Int (getLength-Arr-Int-1 var1645)) ; Statement: $i1 = lengthof r8 
 ; Statement: if i5 >= $i1 goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (>= var1205 var291)) ; Cond: i5 >= $i1 
(define-const var1788 String (buf/-10557480 (cast-from-var2600-to-var1451 var755!2))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1788 " }, new Label[] {")) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" }, new Label[] {") 
(declare-const var1788!1 String)
(assert (str.prefixof var1788 var1788!1))
(define-const var480 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var2483 Int (getLength-Arr-var228-1 var2703)) ; Statement: $i2 = lengthof r2 
 ; Statement: if i6 >= $i2 goto $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (>= var480 var2483)) ; Cond: i6 >= $i2 
(define-const var3293 String (buf/-10557480 (cast-from-var2600-to-var1451 var755!2))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3293 " });\n")) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" });\n") 
(declare-const var3293!1 String)
(assert (str.prefixof var3293 var3293!1))
(define-const var1446 var2849 (text/-10557480 (cast-from-var2600-to-var1451 var755!2))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var422 String (buf/-10557480 (cast-from-var2600-to-var1451 var755!2))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2451 String (toString/-222306083 var422)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2849_add/328494887 var1446 (cast-from-String-to-var1325 var2451))) ; Statement: interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var1446!1 var2849)
(declare-const var2451!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2600-to-var1451=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), getLength-Arr-var228-1=([jdk.internal.org.objectweb.asm.Label[]], int), declareLabel/-244488941=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendLabel/937164375=([jdk.internal.org.objectweb.asm.util.ASMifier, jdk.internal.org.objectweb.asm.Label], void), getLength-Arr-Int-1=([int[]], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2849_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1325=([java.lang.String], java.lang.Object)}
; {var2600=jdk.internal.org.objectweb.asm.util.ASMifier, var755=r0, var228=jdk.internal.org.objectweb.asm.Label, var674=r3, var1645=r8, var2703=r2, var1451=jdk.internal.org.objectweb.asm.util.Printer, var3189=$r1, var1029=0, var3755=i4, var3288=$i0, var3234=$r5, var1789=$r4, var767=$r6, var1130=$r7, var1205=i5, var291=$i1, var1788=$r9, var480=i6, var2483=$i2, var3293=$r10, var2849=java.util.List, var1446=$r12, var422=$r11, var2451=$r13, var1325=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2600, r0=var755, jdk.internal.org.objectweb.asm.Label=var228, r3=var674, r8=var1645, r2=var2703, jdk.internal.org.objectweb.asm.util.Printer=var1451, $r1=var3189, 0=var1029, i4=var3755, $i0=var3288, $r5=var3234, $r4=var1789, $r6=var767, $r7=var1130, i5=var1205, $i1=var291, $r9=var1788, i6=var480, $i2=var2483, $r10=var3293, java.util.List=var2849, $r12=var1446, $r11=var422, $r13=var2451, java.lang.Object=var1325}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r3 := @parameter0: jdk.internal.org.objectweb.asm.Label;	r8 := @parameter1: int[];	r2 := @parameter2: jdk.internal.org.objectweb.asm.Label[];	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	i4 = 0;	$i0 = lengthof r2;	if i4 >= $i0 goto virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void declareLabel(jdk.internal.org.objectweb.asm.Label)>(r3);	$r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLookupSwitchInsn(");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendLabel(jdk.internal.org.objectweb.asm.Label)>(r3);	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", new int[] {");	i5 = 0;	$i1 = lengthof r8;	if i5 >= $i1 goto $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" }, new Label[] {");	i6 = 0;	$i2 = lengthof r2;	if i6 >= $i2 goto $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" });\n");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r12.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 7