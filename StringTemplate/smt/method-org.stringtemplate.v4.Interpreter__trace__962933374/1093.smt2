(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3294 0)
(declare-sort var927 0)
(declare-sort var3091 0)
(declare-sort var2789 0)
(declare-sort var3163 0)
(declare-sort var1776 0)
(declare-sort var1253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun st/-361780184 (var927) var3091)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2789-init () var2789)
(declare-fun impl/55375992 (var3091) var3163)
(declare-fun <init>/-169064116 (var2789 var3163) void)
(declare-fun disassembleInstruction/594120846 (var2789 String Int) Int)
(declare-fun name/1377009226 (var3163) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1776_referenceEquals/-240006294 (var1253 var1253) Bool)
(declare-fun cast-from-String-to-var1253 (String) var1253)
(declare-fun arr-var1253-init () (Array Int var1253))
(declare-fun append/-1031950772 (String var1253) String)
(declare-fun String_format/1339386452 (String (Array Int var1253)) String)
(declare-fun sp/397531683 (var3294) Int)
(declare-fun var3294_getEnclosingInstanceStackString/855228181 (var927) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun nwline/397531683 (var3294) Int)
(declare-fun debug/397531683 (var3294) Bool)
(declare-const null-var3294 var3294)
(declare-const null-var927 var927)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1253__ (Array Int var1253))
(declare-const var3294-trace Bool)
(declare-const var738 var3294) ; Statement: r19 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var738 null-var3294)))
(declare-const var1351 var927) ; Statement: r0 := @parameter0: org.stringtemplate.v4.InstanceScope 
(assert (not (= var1351 null-var927)))
(declare-const var2052 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2052 null-Int)))
(define-const var3776 var3091 (st/-361780184 var1351)) ; Statement: r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(define-const var1518 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1518)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1518!1 String)
(assert (= var1518!1 ""))
(define-const var1747 var2789 var2789-init) ; Statement: $r3 = new org.stringtemplate.v4.compiler.BytecodeDisassembler 
(define-const var3618 var3163 (impl/55375992 var3776)) ; Statement: $r4 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert true)
;(assert (<init>/-169064116 var1747 var3618)) ; Statement: specialinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>($r4) 

(declare-const var1747!1 var2789)
(declare-const var3618!1 var3163)
(define-const var1319 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1319)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1319!1 String)
(assert (= var1319!1 ""))
(assert true)
;(assert (disassembleInstruction/594120846 var1747!1 var1319!1 var2052)) ; Statement: virtualinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: int disassembleInstruction(java.lang.StringBuilder,int)>($r5, i0) 

(declare-const var1747!2 var2789)
(declare-const var1319!2 String)
(declare-const var2052!1 Int)
(define-const var1922 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1922)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1922!1 String)
(assert (= var1922!1 ""))
(define-const var2619 var3163 (impl/55375992 var3776)) ; Statement: $r7 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var3903 String (name/1377009226 var2619)) ; Statement: $r8 = $r7.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(assert true)
(define-const var2458 String (append/672562846 var1922!1 var3903)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1922!2 String)
(assert (= var1922!2 (str.++ var1922!1 var3903)))
(assert true)
(define-const var2014 String (append/672562846 var2458 ":")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2458!1 String)
(assert (= var2458!1 (str.++ var2458 ":")))
(assert true)
(define-const var2715 String (toString/-2075883882 var2014)) ; Statement: r31 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2598 var3163 (impl/55375992 var3776)) ; Statement: $r11 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var846 String (name/1377009226 var2598)) ; Statement: $r12 = $r11.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(define-const var3811 Bool (var1776_referenceEquals/-240006294 (cast-from-String-to-var1253 var846) (cast-from-String-to-var1253 "anonymous"))) ; Statement: $z0 = staticinvoke <org.stringtemplate.v4.misc.Misc: boolean referenceEquals(java.lang.Object,java.lang.Object)>($r12, "anonymous") 
 ; Statement: if $z0 == 0 goto $r13 = newarray (java.lang.Object)[1] 
(assert (not (= (ite var3811 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2715!1 String "") ; Statement: r31 = "" 
(assert true) ; Non Conditional
(define-const var3260 (Array Int var1253) arr-var1253-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var2649 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2649)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2649!1 String)
(assert (= var2649!1 ""))
(assert true)
(define-const var3349 String (append/672562846 var2649!1 var2715!1)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var2649!2 String)
(assert (= var2649!2 (str.++ var2649!1 var2715!1)))
(assert true)
(define-const var1461 String (append/-1031950772 var3349 (cast-from-String-to-var1253 var1319!2))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3349!1 String)
(assert (str.prefixof var3349 var3349!1))
(assert true)
(define-const var3627 String (toString/-2075883882 var1461)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3260!1 (Array Int var1253))
(assert (not (= var3260!1 null-__Array__Int__var1253__)))
(assert (= (select var3260!1 0) (cast-from-String-to-var1253 var3627))) ; Statement: $r13[0] = $r17 
(define-const var1859 String (String_format/1339386452 "%-40s" var3260!1)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-40s", $r13) 
(assert true)
;(assert (append/672562846 var1518!1 var1859)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1518!2 String)
(assert (= var1518!2 (str.++ var1518!1 var1859)))
(assert true)
;(assert (append/672562846 var1518!2 "\tstack=[")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tstack=[") 
(declare-const var1518!3 String)
(assert (= var1518!3 (str.++ var1518!2 "\tstack=[")))
(define-const var3847 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3366 Int (sp/397531683 var738)) ; Statement: $i4 = r19.<org.stringtemplate.v4.Interpreter: int sp> 
 ; Statement: if i3 > $i4 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=") 
(assert (> var3847 var3366)) ; Cond: i3 > $i4 
(assert true)
;(assert (append/672562846 var1518!3 " ], calls=")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=") 
(declare-const var1518!4 String)
(assert (= var1518!4 (str.++ var1518!3 " ], calls=")))
(define-const var2435 String (var3294_getEnclosingInstanceStackString/855228181 var1351)) ; Statement: $r20 = staticinvoke <org.stringtemplate.v4.Interpreter: java.lang.String getEnclosingInstanceStackString(org.stringtemplate.v4.InstanceScope)>(r0) 
(assert true)
;(assert (append/672562846 var1518!4 var2435)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1518!5 String)
(assert (= var1518!5 (str.++ var1518!4 var2435)))
(define-const var3764 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3764)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3764!1 String)
(assert (= var3764!1 ""))
(assert true)
(define-const var292 String (append/672562846 var3764!1 ", sp=")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sp=") 
(declare-const var3764!2 String)
(assert (= var3764!2 (str.++ var3764!1 ", sp=")))
(define-const var1880 Int (sp/397531683 var738)) ; Statement: $i1 = r19.<org.stringtemplate.v4.Interpreter: int sp> 
(assert true)
(define-const var1924 String (append/-1001720160 var292 var1880)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var292!1 String)
(assert (str.prefixof var292 var292!1))
(assert true)
(define-const var1356 String (append/672562846 var1924 ", nw=")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", nw=") 
(declare-const var1924!1 String)
(assert (= var1924!1 (str.++ var1924 ", nw=")))
(define-const var1831 Int (nwline/397531683 var738)) ; Statement: $i2 = r19.<org.stringtemplate.v4.Interpreter: int nwline> 
(assert true)
(define-const var2578 String (append/-1001720160 var1356 var1831)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1356!1 String)
(assert (str.prefixof var1356 var1356!1))
(assert true)
(define-const var958 String (toString/-2075883882 var2578)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1518!5 var958)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1518!6 String)
(assert (= var1518!6 (str.++ var1518!5 var958)))
(assert true)
(define-const var454 String (toString/-2075883882 var1518!6)) ; Statement: r32 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var607 Bool (debug/397531683 var738)) ; Statement: $z1 = r19.<org.stringtemplate.v4.Interpreter: boolean debug> 
 ; Statement: if $z1 == 0 goto $z2 = <org.stringtemplate.v4.Interpreter: boolean trace> 
(assert (= (ite var607 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2777 Bool var3294-trace) ; Statement: $z2 = <org.stringtemplate.v4.Interpreter: boolean trace> 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var2777 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2789-init=([], org.stringtemplate.v4.compiler.BytecodeDisassembler), impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), <init>/-169064116=([org.stringtemplate.v4.compiler.BytecodeDisassembler, org.stringtemplate.v4.compiler.CompiledST], void), disassembleInstruction/594120846=([org.stringtemplate.v4.compiler.BytecodeDisassembler, java.lang.StringBuilder, int], int), name/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1776_referenceEquals/-240006294=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var1253=([java.lang.String], java.lang.Object), arr-var1253-init=([], java.lang.Object[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), sp/397531683=([org.stringtemplate.v4.Interpreter], int), var3294_getEnclosingInstanceStackString/855228181=([org.stringtemplate.v4.InstanceScope], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), nwline/397531683=([org.stringtemplate.v4.Interpreter], int), debug/397531683=([org.stringtemplate.v4.Interpreter], boolean)}
; {var3294=org.stringtemplate.v4.Interpreter, var738=r19, var927=org.stringtemplate.v4.InstanceScope, var1351=r0, var2052=i0, var3091=org.stringtemplate.v4.ST, var3776=r1, var1518=$r2, var2789=org.stringtemplate.v4.compiler.BytecodeDisassembler, var1747=$r3, var3163=org.stringtemplate.v4.compiler.CompiledST, var3618=$r4, var1319=$r5, var1922=$r6, var2619=$r7, var3903=$r8, var2458=$r9, var2014=$r10, var2715=r31, var2598=$r11, var846=$r12, var1776=org.stringtemplate.v4.misc.Misc, var1253=java.lang.Object, var3811=$z0, var3260=$r13, var2649=$r14, var3349=$r15, var1461=$r16, var3627=$r17, var1859=$r18, var3847=i3, var3366=$i4, var2435=$r20, var3764=$r21, var292=$r22, var1880=$i1, var1924=$r23, var1356=$r24, var1831=$i2, var2578=$r25, var958=$r26, var454=r32, var607=$z1, var2777=$z2}
; {org.stringtemplate.v4.Interpreter=var3294, r19=var738, org.stringtemplate.v4.InstanceScope=var927, r0=var1351, i0=var2052, org.stringtemplate.v4.ST=var3091, r1=var3776, $r2=var1518, org.stringtemplate.v4.compiler.BytecodeDisassembler=var2789, $r3=var1747, org.stringtemplate.v4.compiler.CompiledST=var3163, $r4=var3618, $r5=var1319, $r6=var1922, $r7=var2619, $r8=var3903, $r9=var2458, $r10=var2014, r31=var2715, $r11=var2598, $r12=var846, org.stringtemplate.v4.misc.Misc=var1776, java.lang.Object=var1253, $z0=var3811, $r13=var3260, $r14=var2649, $r15=var3349, $r16=var1461, $r17=var3627, $r18=var1859, i3=var3847, $i4=var3366, $r20=var2435, $r21=var3764, $r22=var292, $i1=var1880, $r23=var1924, $r24=var1356, $i2=var1831, $r25=var2578, $r26=var958, r32=var454, $z1=var607, $z2=var2777}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2}
;stmts r19 := @this: org.stringtemplate.v4.Interpreter;	r0 := @parameter0: org.stringtemplate.v4.InstanceScope;	i0 := @parameter1: int;	r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = new org.stringtemplate.v4.compiler.BytecodeDisassembler;	$r4 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	specialinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>($r4);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: int disassembleInstruction(java.lang.StringBuilder,int)>($r5, i0);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r8 = $r7.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	r31 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r12 = $r11.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$z0 = staticinvoke <org.stringtemplate.v4.misc.Misc: boolean referenceEquals(java.lang.Object,java.lang.Object)>($r12, "anonymous");	if $z0 == 0 goto $r13 = newarray (java.lang.Object)[1];	r31 = "";	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-40s", $r13);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tstack=[");	i3 = 0;	$i4 = r19.<org.stringtemplate.v4.Interpreter: int sp>;	if i3 > $i4 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=");	$r20 = staticinvoke <org.stringtemplate.v4.Interpreter: java.lang.String getEnclosingInstanceStackString(org.stringtemplate.v4.InstanceScope)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sp=");	$i1 = r19.<org.stringtemplate.v4.Interpreter: int sp>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", nw=");	$i2 = r19.<org.stringtemplate.v4.Interpreter: int nwline>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	r32 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r19.<org.stringtemplate.v4.Interpreter: boolean debug>;	if $z1 == 0 goto $z2 = <org.stringtemplate.v4.Interpreter: boolean trace>;	$z2 = <org.stringtemplate.v4.Interpreter: boolean trace>;	if $z2 == 0 goto return;	return
;block_num 7