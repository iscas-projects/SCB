(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var526 0)
(declare-sort var373 0)
(declare-sort var3300 0)
(declare-sort var3611 0)
(declare-sort var624 0)
(declare-sort var1316 0)
(declare-sort var990 0)
(declare-sort var669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun st/-361780184 (var373) var3300)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3611-init () var3611)
(declare-fun impl/55375992 (var3300) var624)
(declare-fun <init>/-169064116 (var3611 var624) void)
(declare-fun disassembleInstruction/594120846 (var3611 String Int) Int)
(declare-fun name/1377009226 (var624) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1316_referenceEquals/-240006294 (var990 var990) Bool)
(declare-fun cast-from-String-to-var990 (String) var990)
(declare-fun arr-var990-init () (Array Int var990))
(declare-fun append/-1031950772 (String var990) String)
(declare-fun String_format/1339386452 (String (Array Int var990)) String)
(declare-fun sp/397531683 (var526) Int)
(declare-fun var526_getEnclosingInstanceStackString/855228181 (var373) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun nwline/397531683 (var526) Int)
(declare-fun debug/397531683 (var526) Bool)
(declare-fun executeTrace/397531683 (var526) var669)
(declare-fun var669_add/328494887 (var669 var990) Bool)
(declare-const null-var526 var526)
(declare-const null-var373 var373)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var990__ (Array Int var990))
(declare-const var526-trace Bool)
(declare-const var2966 var526) ; Statement: r19 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var2966 null-var526)))
(declare-const var1730 var373) ; Statement: r0 := @parameter0: org.stringtemplate.v4.InstanceScope 
(assert (not (= var1730 null-var373)))
(declare-const var396 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var396 null-Int)))
(define-const var670 var3300 (st/-361780184 var1730)) ; Statement: r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(define-const var95 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var95)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var95!1 String)
(assert (= var95!1 ""))
(define-const var2842 var3611 var3611-init) ; Statement: $r3 = new org.stringtemplate.v4.compiler.BytecodeDisassembler 
(define-const var1159 var624 (impl/55375992 var670)) ; Statement: $r4 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert true)
;(assert (<init>/-169064116 var2842 var1159)) ; Statement: specialinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>($r4) 

(declare-const var2842!1 var3611)
(declare-const var1159!1 var624)
(define-const var1776 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1776)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1776!1 String)
(assert (= var1776!1 ""))
(assert true)
;(assert (disassembleInstruction/594120846 var2842!1 var1776!1 var396)) ; Statement: virtualinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: int disassembleInstruction(java.lang.StringBuilder,int)>($r5, i0) 

(declare-const var2842!2 var3611)
(declare-const var1776!2 String)
(declare-const var396!1 Int)
(define-const var3303 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3303)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3303!1 String)
(assert (= var3303!1 ""))
(define-const var2263 var624 (impl/55375992 var670)) ; Statement: $r7 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var290 String (name/1377009226 var2263)) ; Statement: $r8 = $r7.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(assert true)
(define-const var2539 String (append/672562846 var3303!1 var290)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3303!2 String)
(assert (= var3303!2 (str.++ var3303!1 var290)))
(assert true)
(define-const var884 String (append/672562846 var2539 ":")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2539!1 String)
(assert (= var2539!1 (str.++ var2539 ":")))
(assert true)
(define-const var3251 String (toString/-2075883882 var884)) ; Statement: r31 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2236 var624 (impl/55375992 var670)) ; Statement: $r11 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1152 String (name/1377009226 var2236)) ; Statement: $r12 = $r11.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(define-const var2133 Bool (var1316_referenceEquals/-240006294 (cast-from-String-to-var990 var1152) (cast-from-String-to-var990 "anonymous"))) ; Statement: $z0 = staticinvoke <org.stringtemplate.v4.misc.Misc: boolean referenceEquals(java.lang.Object,java.lang.Object)>($r12, "anonymous") 
 ; Statement: if $z0 == 0 goto $r13 = newarray (java.lang.Object)[1] 
(assert (= (ite var2133 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2704 (Array Int var990) arr-var990-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var3215 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3215)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3215!1 String)
(assert (= var3215!1 ""))
(assert true)
(define-const var311 String (append/672562846 var3215!1 var3251)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var3215!2 String)
(assert (= var3215!2 (str.++ var3215!1 var3251)))
(assert true)
(define-const var1462 String (append/-1031950772 var311 (cast-from-String-to-var990 var1776!2))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var311!1 String)
(assert (str.prefixof var311 var311!1))
(assert true)
(define-const var2367 String (toString/-2075883882 var1462)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2704!1 (Array Int var990))
(assert (not (= var2704!1 null-__Array__Int__var990__)))
(assert (= (select var2704!1 0) (cast-from-String-to-var990 var2367))) ; Statement: $r13[0] = $r17 
(define-const var1602 String (String_format/1339386452 "%-40s" var2704!1)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-40s", $r13) 
(assert true)
;(assert (append/672562846 var95!1 var1602)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var95!2 String)
(assert (= var95!2 (str.++ var95!1 var1602)))
(assert true)
;(assert (append/672562846 var95!2 "\tstack=[")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tstack=[") 
(declare-const var95!3 String)
(assert (= var95!3 (str.++ var95!2 "\tstack=[")))
(define-const var1292 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var708 Int (sp/397531683 var2966)) ; Statement: $i4 = r19.<org.stringtemplate.v4.Interpreter: int sp> 
 ; Statement: if i3 > $i4 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=") 
(assert (> var1292 var708)) ; Cond: i3 > $i4 
(assert true)
;(assert (append/672562846 var95!3 " ], calls=")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=") 
(declare-const var95!4 String)
(assert (= var95!4 (str.++ var95!3 " ], calls=")))
(define-const var3946 String (var526_getEnclosingInstanceStackString/855228181 var1730)) ; Statement: $r20 = staticinvoke <org.stringtemplate.v4.Interpreter: java.lang.String getEnclosingInstanceStackString(org.stringtemplate.v4.InstanceScope)>(r0) 
(assert true)
;(assert (append/672562846 var95!4 var3946)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var95!5 String)
(assert (= var95!5 (str.++ var95!4 var3946)))
(define-const var988 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var988)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var988!1 String)
(assert (= var988!1 ""))
(assert true)
(define-const var2223 String (append/672562846 var988!1 ", sp=")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sp=") 
(declare-const var988!2 String)
(assert (= var988!2 (str.++ var988!1 ", sp=")))
(define-const var93 Int (sp/397531683 var2966)) ; Statement: $i1 = r19.<org.stringtemplate.v4.Interpreter: int sp> 
(assert true)
(define-const var2005 String (append/-1001720160 var2223 var93)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2223!1 String)
(assert (str.prefixof var2223 var2223!1))
(assert true)
(define-const var2174 String (append/672562846 var2005 ", nw=")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", nw=") 
(declare-const var2005!1 String)
(assert (= var2005!1 (str.++ var2005 ", nw=")))
(define-const var1330 Int (nwline/397531683 var2966)) ; Statement: $i2 = r19.<org.stringtemplate.v4.Interpreter: int nwline> 
(assert true)
(define-const var508 String (append/-1001720160 var2174 var1330)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2174!1 String)
(assert (str.prefixof var2174 var2174!1))
(assert true)
(define-const var2059 String (toString/-2075883882 var508)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var95!5 var2059)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var95!6 String)
(assert (= var95!6 (str.++ var95!5 var2059)))
(assert true)
(define-const var2659 String (toString/-2075883882 var95!6)) ; Statement: r32 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3615 Bool (debug/397531683 var2966)) ; Statement: $z1 = r19.<org.stringtemplate.v4.Interpreter: boolean debug> 
 ; Statement: if $z1 == 0 goto $z2 = <org.stringtemplate.v4.Interpreter: boolean trace> 
(assert (not (= (ite var3615 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2566 var669 (executeTrace/397531683 var2966)) ; Statement: $r28 = r19.<org.stringtemplate.v4.Interpreter: java.util.List executeTrace> 
;(assert (var669_add/328494887 var2566 (cast-from-String-to-var990 var2659))) ; Statement: interfaceinvoke $r28.<java.util.List: boolean add(java.lang.Object)>(r32) 

(declare-const var2566!1 var669)
(declare-const var2659!1 String)
(assert true) ; Non Conditional
(define-const var3545 Bool var526-trace) ; Statement: $z2 = <org.stringtemplate.v4.Interpreter: boolean trace> 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var3545 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3611-init=([], org.stringtemplate.v4.compiler.BytecodeDisassembler), impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), <init>/-169064116=([org.stringtemplate.v4.compiler.BytecodeDisassembler, org.stringtemplate.v4.compiler.CompiledST], void), disassembleInstruction/594120846=([org.stringtemplate.v4.compiler.BytecodeDisassembler, java.lang.StringBuilder, int], int), name/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1316_referenceEquals/-240006294=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var990=([java.lang.String], java.lang.Object), arr-var990-init=([], java.lang.Object[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), sp/397531683=([org.stringtemplate.v4.Interpreter], int), var526_getEnclosingInstanceStackString/855228181=([org.stringtemplate.v4.InstanceScope], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), nwline/397531683=([org.stringtemplate.v4.Interpreter], int), debug/397531683=([org.stringtemplate.v4.Interpreter], boolean), executeTrace/397531683=([org.stringtemplate.v4.Interpreter], java.util.List), var669_add/328494887=([java.util.List, java.lang.Object], boolean)}
; {var526=org.stringtemplate.v4.Interpreter, var2966=r19, var373=org.stringtemplate.v4.InstanceScope, var1730=r0, var396=i0, var3300=org.stringtemplate.v4.ST, var670=r1, var95=$r2, var3611=org.stringtemplate.v4.compiler.BytecodeDisassembler, var2842=$r3, var624=org.stringtemplate.v4.compiler.CompiledST, var1159=$r4, var1776=$r5, var3303=$r6, var2263=$r7, var290=$r8, var2539=$r9, var884=$r10, var3251=r31, var2236=$r11, var1152=$r12, var1316=org.stringtemplate.v4.misc.Misc, var990=java.lang.Object, var2133=$z0, var2704=$r13, var3215=$r14, var311=$r15, var1462=$r16, var2367=$r17, var1602=$r18, var1292=i3, var708=$i4, var3946=$r20, var988=$r21, var2223=$r22, var93=$i1, var2005=$r23, var2174=$r24, var1330=$i2, var508=$r25, var2059=$r26, var2659=r32, var3615=$z1, var669=java.util.List, var2566=$r28, var3545=$z2}
; {org.stringtemplate.v4.Interpreter=var526, r19=var2966, org.stringtemplate.v4.InstanceScope=var373, r0=var1730, i0=var396, org.stringtemplate.v4.ST=var3300, r1=var670, $r2=var95, org.stringtemplate.v4.compiler.BytecodeDisassembler=var3611, $r3=var2842, org.stringtemplate.v4.compiler.CompiledST=var624, $r4=var1159, $r5=var1776, $r6=var3303, $r7=var2263, $r8=var290, $r9=var2539, $r10=var884, r31=var3251, $r11=var2236, $r12=var1152, org.stringtemplate.v4.misc.Misc=var1316, java.lang.Object=var990, $z0=var2133, $r13=var2704, $r14=var3215, $r15=var311, $r16=var1462, $r17=var2367, $r18=var1602, i3=var1292, $i4=var708, $r20=var3946, $r21=var988, $r22=var2223, $i1=var93, $r23=var2005, $r24=var2174, $i2=var1330, $r25=var508, $r26=var2059, r32=var2659, $z1=var3615, java.util.List=var669, $r28=var2566, $z2=var3545}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2}
;stmts r19 := @this: org.stringtemplate.v4.Interpreter;	r0 := @parameter0: org.stringtemplate.v4.InstanceScope;	i0 := @parameter1: int;	r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = new org.stringtemplate.v4.compiler.BytecodeDisassembler;	$r4 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	specialinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>($r4);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: int disassembleInstruction(java.lang.StringBuilder,int)>($r5, i0);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r8 = $r7.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	r31 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r12 = $r11.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$z0 = staticinvoke <org.stringtemplate.v4.misc.Misc: boolean referenceEquals(java.lang.Object,java.lang.Object)>($r12, "anonymous");	if $z0 == 0 goto $r13 = newarray (java.lang.Object)[1];	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-40s", $r13);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tstack=[");	i3 = 0;	$i4 = r19.<org.stringtemplate.v4.Interpreter: int sp>;	if i3 > $i4 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=");	$r20 = staticinvoke <org.stringtemplate.v4.Interpreter: java.lang.String getEnclosingInstanceStackString(org.stringtemplate.v4.InstanceScope)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sp=");	$i1 = r19.<org.stringtemplate.v4.Interpreter: int sp>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", nw=");	$i2 = r19.<org.stringtemplate.v4.Interpreter: int nwline>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	r32 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r19.<org.stringtemplate.v4.Interpreter: boolean debug>;	if $z1 == 0 goto $z2 = <org.stringtemplate.v4.Interpreter: boolean trace>;	$r28 = r19.<org.stringtemplate.v4.Interpreter: java.util.List executeTrace>;	interfaceinvoke $r28.<java.util.List: boolean add(java.lang.Object)>(r32);	$z2 = <org.stringtemplate.v4.Interpreter: boolean trace>;	if $z2 == 0 goto return;	return
;block_num 7