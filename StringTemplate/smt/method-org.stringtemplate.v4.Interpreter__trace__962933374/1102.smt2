(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3980 0)
(declare-sort var3882 0)
(declare-sort var2851 0)
(declare-sort var3237 0)
(declare-sort var1526 0)
(declare-sort var2483 0)
(declare-sort var3826 0)
(declare-sort var2453 0)
(declare-sort var219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun st/-361780184 (var3882) var2851)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3237-init () var3237)
(declare-fun impl/55375992 (var2851) var1526)
(declare-fun <init>/-169064116 (var3237 var1526) void)
(declare-fun disassembleInstruction/594120846 (var3237 String Int) Int)
(declare-fun name/1377009226 (var1526) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2483_referenceEquals/-240006294 (var3826 var3826) Bool)
(declare-fun cast-from-String-to-var3826 (String) var3826)
(declare-fun arr-var3826-init () (Array Int var3826))
(declare-fun append/-1031950772 (String var3826) String)
(declare-fun String_format/1339386452 (String (Array Int var3826)) String)
(declare-fun sp/397531683 (var3980) Int)
(declare-fun var3980_getEnclosingInstanceStackString/855228181 (var3882) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun nwline/397531683 (var3980) Int)
(declare-fun debug/397531683 (var3980) Bool)
(declare-fun println/1773605060 (var2453 String) void)
(declare-const null-var3980 var3980)
(declare-const null-var3882 var3882)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3826__ (Array Int var3826))
(declare-const var3980-trace Bool)
(declare-const var219-out var2453)
(declare-const var1495 var3980) ; Statement: r19 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var1495 null-var3980)))
(declare-const var1876 var3882) ; Statement: r0 := @parameter0: org.stringtemplate.v4.InstanceScope 
(assert (not (= var1876 null-var3882)))
(declare-const var804 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var804 null-Int)))
(define-const var2872 var2851 (st/-361780184 var1876)) ; Statement: r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(define-const var2529 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2529)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2529!1 String)
(assert (= var2529!1 ""))
(define-const var3056 var3237 var3237-init) ; Statement: $r3 = new org.stringtemplate.v4.compiler.BytecodeDisassembler 
(define-const var111 var1526 (impl/55375992 var2872)) ; Statement: $r4 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert true)
;(assert (<init>/-169064116 var3056 var111)) ; Statement: specialinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>($r4) 

(declare-const var3056!1 var3237)
(declare-const var111!1 var1526)
(define-const var2676 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2676)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2676!1 String)
(assert (= var2676!1 ""))
(assert true)
;(assert (disassembleInstruction/594120846 var3056!1 var2676!1 var804)) ; Statement: virtualinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: int disassembleInstruction(java.lang.StringBuilder,int)>($r5, i0) 

(declare-const var3056!2 var3237)
(declare-const var2676!2 String)
(declare-const var804!1 Int)
(define-const var3938 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3938)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3938!1 String)
(assert (= var3938!1 ""))
(define-const var3726 var1526 (impl/55375992 var2872)) ; Statement: $r7 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var2745 String (name/1377009226 var3726)) ; Statement: $r8 = $r7.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(assert true)
(define-const var269 String (append/672562846 var3938!1 var2745)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3938!2 String)
(assert (= var3938!2 (str.++ var3938!1 var2745)))
(assert true)
(define-const var3695 String (append/672562846 var269 ":")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var269!1 String)
(assert (= var269!1 (str.++ var269 ":")))
(assert true)
(define-const var213 String (toString/-2075883882 var3695)) ; Statement: r31 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var189 var1526 (impl/55375992 var2872)) ; Statement: $r11 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1732 String (name/1377009226 var189)) ; Statement: $r12 = $r11.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(define-const var2452 Bool (var2483_referenceEquals/-240006294 (cast-from-String-to-var3826 var1732) (cast-from-String-to-var3826 "anonymous"))) ; Statement: $z0 = staticinvoke <org.stringtemplate.v4.misc.Misc: boolean referenceEquals(java.lang.Object,java.lang.Object)>($r12, "anonymous") 
 ; Statement: if $z0 == 0 goto $r13 = newarray (java.lang.Object)[1] 
(assert (= (ite var2452 1 0) 0)) ; Cond: $z0 == 0 
(define-const var393 (Array Int var3826) arr-var3826-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var3397 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3397)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3397!1 String)
(assert (= var3397!1 ""))
(assert true)
(define-const var3275 String (append/672562846 var3397!1 var213)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var3397!2 String)
(assert (= var3397!2 (str.++ var3397!1 var213)))
(assert true)
(define-const var3842 String (append/-1031950772 var3275 (cast-from-String-to-var3826 var2676!2))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3275!1 String)
(assert (str.prefixof var3275 var3275!1))
(assert true)
(define-const var1068 String (toString/-2075883882 var3842)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var393!1 (Array Int var3826))
(assert (not (= var393!1 null-__Array__Int__var3826__)))
(assert (= (select var393!1 0) (cast-from-String-to-var3826 var1068))) ; Statement: $r13[0] = $r17 
(define-const var365 String (String_format/1339386452 "%-40s" var393!1)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-40s", $r13) 
(assert true)
;(assert (append/672562846 var2529!1 var365)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2529!2 String)
(assert (= var2529!2 (str.++ var2529!1 var365)))
(assert true)
;(assert (append/672562846 var2529!2 "\tstack=[")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tstack=[") 
(declare-const var2529!3 String)
(assert (= var2529!3 (str.++ var2529!2 "\tstack=[")))
(define-const var1964 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1366 Int (sp/397531683 var1495)) ; Statement: $i4 = r19.<org.stringtemplate.v4.Interpreter: int sp> 
 ; Statement: if i3 > $i4 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=") 
(assert (> var1964 var1366)) ; Cond: i3 > $i4 
(assert true)
;(assert (append/672562846 var2529!3 " ], calls=")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=") 
(declare-const var2529!4 String)
(assert (= var2529!4 (str.++ var2529!3 " ], calls=")))
(define-const var3250 String (var3980_getEnclosingInstanceStackString/855228181 var1876)) ; Statement: $r20 = staticinvoke <org.stringtemplate.v4.Interpreter: java.lang.String getEnclosingInstanceStackString(org.stringtemplate.v4.InstanceScope)>(r0) 
(assert true)
;(assert (append/672562846 var2529!4 var3250)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2529!5 String)
(assert (= var2529!5 (str.++ var2529!4 var3250)))
(define-const var526 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var526)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var526!1 String)
(assert (= var526!1 ""))
(assert true)
(define-const var2810 String (append/672562846 var526!1 ", sp=")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sp=") 
(declare-const var526!2 String)
(assert (= var526!2 (str.++ var526!1 ", sp=")))
(define-const var3441 Int (sp/397531683 var1495)) ; Statement: $i1 = r19.<org.stringtemplate.v4.Interpreter: int sp> 
(assert true)
(define-const var2050 String (append/-1001720160 var2810 var3441)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2810!1 String)
(assert (str.prefixof var2810 var2810!1))
(assert true)
(define-const var3737 String (append/672562846 var2050 ", nw=")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", nw=") 
(declare-const var2050!1 String)
(assert (= var2050!1 (str.++ var2050 ", nw=")))
(define-const var2525 Int (nwline/397531683 var1495)) ; Statement: $i2 = r19.<org.stringtemplate.v4.Interpreter: int nwline> 
(assert true)
(define-const var1084 String (append/-1001720160 var3737 var2525)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3737!1 String)
(assert (str.prefixof var3737 var3737!1))
(assert true)
(define-const var3423 String (toString/-2075883882 var1084)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2529!5 var3423)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2529!6 String)
(assert (= var2529!6 (str.++ var2529!5 var3423)))
(assert true)
(define-const var160 String (toString/-2075883882 var2529!6)) ; Statement: r32 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1513 Bool (debug/397531683 var1495)) ; Statement: $z1 = r19.<org.stringtemplate.v4.Interpreter: boolean debug> 
 ; Statement: if $z1 == 0 goto $z2 = <org.stringtemplate.v4.Interpreter: boolean trace> 
(assert (= (ite var1513 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3039 Bool var3980-trace) ; Statement: $z2 = <org.stringtemplate.v4.Interpreter: boolean trace> 
 ; Statement: if $z2 == 0 goto return 
(assert (not (= (ite var3039 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2283 var2453 var219-out) ; Statement: $r27 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var2283 var160)) ; Statement: virtualinvoke $r27.<java.io.PrintStream: void println(java.lang.String)>(r32) 

(declare-const var2283!1 var2453)
(declare-const var160!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3237-init=([], org.stringtemplate.v4.compiler.BytecodeDisassembler), impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), <init>/-169064116=([org.stringtemplate.v4.compiler.BytecodeDisassembler, org.stringtemplate.v4.compiler.CompiledST], void), disassembleInstruction/594120846=([org.stringtemplate.v4.compiler.BytecodeDisassembler, java.lang.StringBuilder, int], int), name/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2483_referenceEquals/-240006294=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var3826=([java.lang.String], java.lang.Object), arr-var3826-init=([], java.lang.Object[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), sp/397531683=([org.stringtemplate.v4.Interpreter], int), var3980_getEnclosingInstanceStackString/855228181=([org.stringtemplate.v4.InstanceScope], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), nwline/397531683=([org.stringtemplate.v4.Interpreter], int), debug/397531683=([org.stringtemplate.v4.Interpreter], boolean), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3980=org.stringtemplate.v4.Interpreter, var1495=r19, var3882=org.stringtemplate.v4.InstanceScope, var1876=r0, var804=i0, var2851=org.stringtemplate.v4.ST, var2872=r1, var2529=$r2, var3237=org.stringtemplate.v4.compiler.BytecodeDisassembler, var3056=$r3, var1526=org.stringtemplate.v4.compiler.CompiledST, var111=$r4, var2676=$r5, var3938=$r6, var3726=$r7, var2745=$r8, var269=$r9, var3695=$r10, var213=r31, var189=$r11, var1732=$r12, var2483=org.stringtemplate.v4.misc.Misc, var3826=java.lang.Object, var2452=$z0, var393=$r13, var3397=$r14, var3275=$r15, var3842=$r16, var1068=$r17, var365=$r18, var1964=i3, var1366=$i4, var3250=$r20, var526=$r21, var2810=$r22, var3441=$i1, var2050=$r23, var3737=$r24, var2525=$i2, var1084=$r25, var3423=$r26, var160=r32, var1513=$z1, var3039=$z2, var2453=java.io.PrintStream, var219=java.lang.System, var2283=$r27}
; {org.stringtemplate.v4.Interpreter=var3980, r19=var1495, org.stringtemplate.v4.InstanceScope=var3882, r0=var1876, i0=var804, org.stringtemplate.v4.ST=var2851, r1=var2872, $r2=var2529, org.stringtemplate.v4.compiler.BytecodeDisassembler=var3237, $r3=var3056, org.stringtemplate.v4.compiler.CompiledST=var1526, $r4=var111, $r5=var2676, $r6=var3938, $r7=var3726, $r8=var2745, $r9=var269, $r10=var3695, r31=var213, $r11=var189, $r12=var1732, org.stringtemplate.v4.misc.Misc=var2483, java.lang.Object=var3826, $z0=var2452, $r13=var393, $r14=var3397, $r15=var3275, $r16=var3842, $r17=var1068, $r18=var365, i3=var1964, $i4=var1366, $r20=var3250, $r21=var526, $r22=var2810, $i1=var3441, $r23=var2050, $r24=var3737, $i2=var2525, $r25=var1084, $r26=var3423, r32=var160, $z1=var1513, $z2=var3039, java.io.PrintStream=var2453, java.lang.System=var219, $r27=var2283}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2}
;stmts r19 := @this: org.stringtemplate.v4.Interpreter;	r0 := @parameter0: org.stringtemplate.v4.InstanceScope;	i0 := @parameter1: int;	r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = new org.stringtemplate.v4.compiler.BytecodeDisassembler;	$r4 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	specialinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>($r4);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: int disassembleInstruction(java.lang.StringBuilder,int)>($r5, i0);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r8 = $r7.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	r31 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r12 = $r11.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$z0 = staticinvoke <org.stringtemplate.v4.misc.Misc: boolean referenceEquals(java.lang.Object,java.lang.Object)>($r12, "anonymous");	if $z0 == 0 goto $r13 = newarray (java.lang.Object)[1];	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-40s", $r13);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tstack=[");	i3 = 0;	$i4 = r19.<org.stringtemplate.v4.Interpreter: int sp>;	if i3 > $i4 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=");	$r20 = staticinvoke <org.stringtemplate.v4.Interpreter: java.lang.String getEnclosingInstanceStackString(org.stringtemplate.v4.InstanceScope)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sp=");	$i1 = r19.<org.stringtemplate.v4.Interpreter: int sp>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", nw=");	$i2 = r19.<org.stringtemplate.v4.Interpreter: int nwline>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	r32 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r19.<org.stringtemplate.v4.Interpreter: boolean debug>;	if $z1 == 0 goto $z2 = <org.stringtemplate.v4.Interpreter: boolean trace>;	$z2 = <org.stringtemplate.v4.Interpreter: boolean trace>;	if $z2 == 0 goto return;	$r27 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r27.<java.io.PrintStream: void println(java.lang.String)>(r32);	return
;block_num 7