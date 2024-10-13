(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort var74 0)
(declare-sort var2930 0)
(declare-sort var2179 0)
(declare-sort var2217 0)
(declare-sort var1857 0)
(declare-sort var1828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2217) String)
(declare-fun cast-from-var3170-to-var2217 (var3170) var2217)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1045876480 (var3170) String)
(declare-fun append/1845021834 (String Int) String)
(declare-fun append/-143899486 (String var1857) String)
(declare-fun cast-from-var74-to-var1857 (var74) var1857)
(declare-fun getLength-Arr-var2930-1 ((Array Int var2930)) Int)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun appendConstant/2119113448 (var3170 var1857) void)
(declare-fun cast-from-String-to-var1857 (String) var1857)
(declare-fun append/-1166642301 (String Bool) String)
(declare-fun text/-10557480 (var2217) var1828)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1828_add/328494887 (var1828 var1857) Bool)
(declare-fun createASMifier/-631099411 (var3170 String Int) var3170)
(declare-fun getText/-142638630 (var2217) var1828)
(declare-fun cast-from-var1828-to-var1857 (var1828) var1857)
(declare-const null-var3170 var3170)
(declare-const null-Int Int)
(declare-const null-var74 var74)
(declare-const null-__Array__Int__var2930__ (Array Int var2930))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var739 var3170) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var739 null-var3170)))
(declare-const var1493 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1493 null-Int)))
(declare-const var462 var74) ; Statement: r9 := @parameter1: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var462 null-var74)))
(declare-const var2285 (Array Int var2930)) ; Statement: r13 := @parameter2: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2285 null-__Array__Int__var2930__)))
(declare-const var3424 (Array Int var2930)) ; Statement: r15 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var3424 null-__Array__Int__var2930__)))
(declare-const var3735 (Array Int Int)) ; Statement: r17 := @parameter4: int[] 
(assert (not (= var3735 null-__Array__Int__Int__)))
(declare-const var3287 String) ; Statement: r19 := @parameter5: java.lang.String 
(assert (not (= var3287 null-String)))
(declare-const var3572 Bool) ; Statement: z0 := @parameter6: boolean 
(assert (not (= var3572 null-Bool)))
(define-const var2678 String (buf/-10557480 (cast-from-var3170-to-var2217 var739))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2678 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2678!1 String)
(declare-const var138 Int)
(define-const var287 String (buf/-10557480 (cast-from-var3170-to-var2217 var739))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1699 String (append/1560614132 var287 "{\n")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n") 
(declare-const var287!1 String)
(assert (str.prefixof var287 var287!1))
(assert true)
(define-const var3655 String (append/1560614132 var1699 "av0 = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av0 = ") 
(declare-const var1699!1 String)
(assert (str.prefixof var1699 var1699!1))
(define-const var2056 String (name/1045876480 var739)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1131 String (append/1560614132 var3655 var2056)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3655!1 String)
(assert (str.prefixof var3655 var3655!1))
(assert true)
;(assert (append/1560614132 var1131 ".visitLocalVariableAnnotation(")) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLocalVariableAnnotation(") 
(declare-const var1131!1 String)
(assert (str.prefixof var1131 var1131!1))
(define-const var157 String (buf/-10557480 (cast-from-var3170-to-var2217 var739))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1845021834 var157 var1493)) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 

(declare-const var157!1 String)
(declare-const var1493!1 Int)
(define-const var1060 String (buf/-10557480 (cast-from-var3170-to-var2217 var739))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3723 String (append/1560614132 var1060 ", TypePath.fromString(\u0022")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", TypePath.fromString(\"") 
(declare-const var1060!1 String)
(assert (str.prefixof var1060 var1060!1))
(assert true)
(define-const var166 String (append/-143899486 var3723 (cast-from-var74-to-var1857 var462))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r9) 
(assert true)
;(assert (append/1560614132 var166 "\u0022), ")) ; Statement: virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"), ") 
(declare-const var166!1 String)
(assert (str.prefixof var166 var166!1))
(define-const var2330 String (buf/-10557480 (cast-from-var3170-to-var2217 var739))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2330 "new Label[] {")) ; Statement: virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("new Label[] {") 
(declare-const var2330!1 String)
(assert (str.prefixof var2330 var2330!1))
(define-const var579 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var1770 Int (getLength-Arr-var2930-1 var2285)) ; Statement: $i1 = lengthof r13 
 ; Statement: if i5 >= $i1 goto $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (>= var579 var1770)) ; Cond: i5 >= $i1 
(define-const var795 String (buf/-10557480 (cast-from-var3170-to-var2217 var739))) ; Statement: $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var795 " }, new Label[] {")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" }, new Label[] {") 
(declare-const var795!1 String)
(assert (str.prefixof var795 var795!1))
(define-const var3951 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var3153 Int (getLength-Arr-var2930-1 var3424)) ; Statement: $i2 = lengthof r15 
 ; Statement: if i6 >= $i2 goto $r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (>= var3951 var3153)) ; Cond: i6 >= $i2 
(define-const var1 String (buf/-10557480 (cast-from-var3170-to-var2217 var739))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1 " }, new int[] {")) ; Statement: virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" }, new int[] {") 
(declare-const var1!1 String)
(assert (str.prefixof var1 var1!1))
(define-const var3348 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var1182 Int (getLength-Arr-Int-1 var3735)) ; Statement: $i3 = lengthof r17 
 ; Statement: if i7 >= $i3 goto $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (>= var3348 var1182)) ; Cond: i7 >= $i3 
(define-const var691 String (buf/-10557480 (cast-from-var3170-to-var2217 var739))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var691 " }, ")) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" }, ") 
(declare-const var691!1 String)
(assert (str.prefixof var691 var691!1))
(assert true)
;(assert (appendConstant/2119113448 var739 (cast-from-String-to-var1857 var3287))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r19) 

(declare-const var739!1 var3170)
(declare-const var3287!1 String)
(define-const var3114 String (buf/-10557480 (cast-from-var3170-to-var2217 var739!1))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3638 String (append/1560614132 var3114 ", ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3114!1 String)
(assert (str.prefixof var3114 var3114!1))
(assert true)
(define-const var4 String (append/-1166642301 var3638 var3572)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0) 
(assert true)
;(assert (append/1560614132 var4 ");\n")) ; Statement: virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var4!1 String)
(assert (str.prefixof var4 var4!1))
(define-const var1358 var1828 (text/-10557480 (cast-from-var3170-to-var2217 var739!1))) ; Statement: $r24 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3577 String (buf/-10557480 (cast-from-var3170-to-var2217 var739!1))) ; Statement: $r23 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3684 String (toString/-222306083 var3577)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1828_add/328494887 var1358 (cast-from-String-to-var1857 var3684))) ; Statement: interfaceinvoke $r24.<java.util.List: boolean add(java.lang.Object)>($r25) 

(declare-const var1358!1 var1828)
(declare-const var3684!1 String)
(assert true)
(define-const var2241 var3170 (createASMifier/-631099411 var739!1 "av" 0)) ; Statement: r38 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", 0) 
(define-const var1285 var1828 (text/-10557480 (cast-from-var3170-to-var2217 var739!1))) ; Statement: $r26 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert true)
(define-const var2660 var1828 (getText/-142638630 (cast-from-var3170-to-var2217 var2241))) ; Statement: $r27 = virtualinvoke r38.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>() 
;(assert (var1828_add/328494887 var1285 (cast-from-var1828-to-var1857 var2660))) ; Statement: interfaceinvoke $r26.<java.util.List: boolean add(java.lang.Object)>($r27) 

(declare-const var1285!1 var1828)
(declare-const var2660!1 var1828)
(define-const var1767 var1828 (text/-10557480 (cast-from-var3170-to-var2217 var739!1))) ; Statement: $r28 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1828_add/328494887 var1767 (cast-from-String-to-var1857 "}\n"))) ; Statement: interfaceinvoke $r28.<java.util.List: boolean add(java.lang.Object)>("}\n") 

(declare-const var1767!1 var1828)
(declare-const var527 String)
 ; Statement: return r38 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3170-to-var2217=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var74-to-var1857=([jdk.internal.org.objectweb.asm.TypePath], java.lang.Object), getLength-Arr-var2930-1=([jdk.internal.org.objectweb.asm.Label[]], int), getLength-Arr-Int-1=([int[]], int), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var1857=([java.lang.String], java.lang.Object), append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1828_add/328494887=([java.util.List, java.lang.Object], boolean), createASMifier/-631099411=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.String, int], jdk.internal.org.objectweb.asm.util.ASMifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1828-to-var1857=([java.util.List], java.lang.Object)}
; {var3170=jdk.internal.org.objectweb.asm.util.ASMifier, var739=r0, var1493=i0, var74=jdk.internal.org.objectweb.asm.TypePath, var462=r9, var2930=jdk.internal.org.objectweb.asm.Label, var2285=r13, var3424=r15, var3735=r17, var3287=r19, var2179=null_type, var3572=z0, var2217=jdk.internal.org.objectweb.asm.util.Printer, var2678=$r1, var138=0, var287=$r2, var1699=$r3, var3655=$r5, var2056=$r4, var1131=$r6, var157=$r7, var1060=$r8, var3723=$r10, var1857=java.lang.Object, var166=$r11, var2330=$r12, var579=i5, var1770=$i1, var795=$r14, var3951=i6, var3153=$i2, var1=$r16, var3348=i7, var1182=$i3, var691=$r18, var3114=$r20, var3638=$r21, var4=$r22, var1828=java.util.List, var1358=$r24, var3577=$r23, var3684=$r25, var2241=r38, var1285=$r26, var2660=$r27, var1767=$r28, var527="}\n"}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var3170, r0=var739, i0=var1493, jdk.internal.org.objectweb.asm.TypePath=var74, r9=var462, jdk.internal.org.objectweb.asm.Label=var2930, r13=var2285, r15=var3424, r17=var3735, r19=var3287, null_type=var2179, z0=var3572, jdk.internal.org.objectweb.asm.util.Printer=var2217, $r1=var2678, 0=var138, $r2=var287, $r3=var1699, $r5=var3655, $r4=var2056, $r6=var1131, $r7=var157, $r8=var1060, $r10=var3723, java.lang.Object=var1857, $r11=var166, $r12=var2330, i5=var579, $i1=var1770, $r14=var795, i6=var3951, $i2=var3153, $r16=var1, i7=var3348, $i3=var1182, $r18=var691, $r20=var3114, $r21=var3638, $r22=var4, java.util.List=var1828, $r24=var1358, $r23=var3577, $r25=var3684, r38=var2241, $r26=var1285, $r27=var2660, $r28=var1767, "}\n"=var527}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 12,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	r9 := @parameter1: jdk.internal.org.objectweb.asm.TypePath;	r13 := @parameter2: jdk.internal.org.objectweb.asm.Label[];	r15 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	r17 := @parameter4: int[];	r19 := @parameter5: java.lang.String;	z0 := @parameter6: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n");	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av0 = ");	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitLocalVariableAnnotation(");	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", TypePath.fromString(\"");	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r9);	virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"), ");	$r12 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("new Label[] {");	i5 = 0;	$i1 = lengthof r13;	if i5 >= $i1 goto $r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r14 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" }, new Label[] {");	i6 = 0;	$i2 = lengthof r15;	if i6 >= $i2 goto $r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" }, new int[] {");	i7 = 0;	$i3 = lengthof r17;	if i7 >= $i3 goto $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" }, ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r19);	$r20 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0);	virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r24 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r23 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r25 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r24.<java.util.List: boolean add(java.lang.Object)>($r25);	r38 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", 0);	$r26 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r27 = virtualinvoke r38.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>();	interfaceinvoke $r26.<java.util.List: boolean add(java.lang.Object)>($r27);	$r28 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r28.<java.util.List: boolean add(java.lang.Object)>("}\n");	return r38
;block_num 7