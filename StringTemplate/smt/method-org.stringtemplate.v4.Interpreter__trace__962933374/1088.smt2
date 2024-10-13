(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1179 0)
(declare-sort var909 0)
(declare-sort var1208 0)
(declare-sort var2161 0)
(declare-sort var657 0)
(declare-sort var1663 0)
(declare-sort var620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun st/-361780184 (var909) var1208)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2161-init () var2161)
(declare-fun impl/55375992 (var1208) var657)
(declare-fun <init>/-169064116 (var2161 var657) void)
(declare-fun disassembleInstruction/594120846 (var2161 String Int) Int)
(declare-fun name/1377009226 (var657) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1663_referenceEquals/-240006294 (var620 var620) Bool)
(declare-fun cast-from-String-to-var620 (String) var620)
(declare-fun arr-var620-init () (Array Int var620))
(declare-fun append/-1031950772 (String var620) String)
(declare-fun String_format/1339386452 (String (Array Int var620)) String)
(declare-fun sp/397531683 (var1179) Int)
(declare-fun var1179_getEnclosingInstanceStackString/855228181 (var909) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun nwline/397531683 (var1179) Int)
(declare-fun debug/397531683 (var1179) Bool)
(declare-const null-var1179 var1179)
(declare-const null-var909 var909)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var620__ (Array Int var620))
(declare-const var1179-trace Bool)
(declare-const var3116 var1179) ; Statement: r19 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var3116 null-var1179)))
(declare-const var1781 var909) ; Statement: r0 := @parameter0: org.stringtemplate.v4.InstanceScope 
(assert (not (= var1781 null-var909)))
(declare-const var2396 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2396 null-Int)))
(define-const var767 var1208 (st/-361780184 var1781)) ; Statement: r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(define-const var1014 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1014)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1014!1 String)
(assert (= var1014!1 ""))
(define-const var2848 var2161 var2161-init) ; Statement: $r3 = new org.stringtemplate.v4.compiler.BytecodeDisassembler 
(define-const var1435 var657 (impl/55375992 var767)) ; Statement: $r4 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert true)
;(assert (<init>/-169064116 var2848 var1435)) ; Statement: specialinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>($r4) 

(declare-const var2848!1 var2161)
(declare-const var1435!1 var657)
(define-const var744 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var744)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var744!1 String)
(assert (= var744!1 ""))
(assert true)
;(assert (disassembleInstruction/594120846 var2848!1 var744!1 var2396)) ; Statement: virtualinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: int disassembleInstruction(java.lang.StringBuilder,int)>($r5, i0) 

(declare-const var2848!2 var2161)
(declare-const var744!2 String)
(declare-const var2396!1 Int)
(define-const var463 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var463)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var463!1 String)
(assert (= var463!1 ""))
(define-const var1117 var657 (impl/55375992 var767)) ; Statement: $r7 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var2339 String (name/1377009226 var1117)) ; Statement: $r8 = $r7.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(assert true)
(define-const var3633 String (append/672562846 var463!1 var2339)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var463!2 String)
(assert (= var463!2 (str.++ var463!1 var2339)))
(assert true)
(define-const var1447 String (append/672562846 var3633 ":")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3633!1 String)
(assert (= var3633!1 (str.++ var3633 ":")))
(assert true)
(define-const var2355 String (toString/-2075883882 var1447)) ; Statement: r31 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3704 var657 (impl/55375992 var767)) ; Statement: $r11 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1149 String (name/1377009226 var3704)) ; Statement: $r12 = $r11.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name> 
(define-const var2511 Bool (var1663_referenceEquals/-240006294 (cast-from-String-to-var620 var1149) (cast-from-String-to-var620 "anonymous"))) ; Statement: $z0 = staticinvoke <org.stringtemplate.v4.misc.Misc: boolean referenceEquals(java.lang.Object,java.lang.Object)>($r12, "anonymous") 
 ; Statement: if $z0 == 0 goto $r13 = newarray (java.lang.Object)[1] 
(assert (= (ite var2511 1 0) 0)) ; Cond: $z0 == 0 
(define-const var895 (Array Int var620) arr-var620-init) ; Statement: $r13 = newarray (java.lang.Object)[1] 
(define-const var1019 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1019)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1019!1 String)
(assert (= var1019!1 ""))
(assert true)
(define-const var3389 String (append/672562846 var1019!1 var2355)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var1019!2 String)
(assert (= var1019!2 (str.++ var1019!1 var2355)))
(assert true)
(define-const var1180 String (append/-1031950772 var3389 (cast-from-String-to-var620 var744!2))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3389!1 String)
(assert (str.prefixof var3389 var3389!1))
(assert true)
(define-const var3844 String (toString/-2075883882 var1180)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var895!1 (Array Int var620))
(assert (not (= var895!1 null-__Array__Int__var620__)))
(assert (= (select var895!1 0) (cast-from-String-to-var620 var3844))) ; Statement: $r13[0] = $r17 
(define-const var65 String (String_format/1339386452 "%-40s" var895!1)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-40s", $r13) 
(assert true)
;(assert (append/672562846 var1014!1 var65)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1014!2 String)
(assert (= var1014!2 (str.++ var1014!1 var65)))
(assert true)
;(assert (append/672562846 var1014!2 "\tstack=[")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tstack=[") 
(declare-const var1014!3 String)
(assert (= var1014!3 (str.++ var1014!2 "\tstack=[")))
(define-const var1368 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3919 Int (sp/397531683 var3116)) ; Statement: $i4 = r19.<org.stringtemplate.v4.Interpreter: int sp> 
 ; Statement: if i3 > $i4 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=") 
(assert (> var1368 var3919)) ; Cond: i3 > $i4 
(assert true)
;(assert (append/672562846 var1014!3 " ], calls=")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=") 
(declare-const var1014!4 String)
(assert (= var1014!4 (str.++ var1014!3 " ], calls=")))
(define-const var577 String (var1179_getEnclosingInstanceStackString/855228181 var1781)) ; Statement: $r20 = staticinvoke <org.stringtemplate.v4.Interpreter: java.lang.String getEnclosingInstanceStackString(org.stringtemplate.v4.InstanceScope)>(r0) 
(assert true)
;(assert (append/672562846 var1014!4 var577)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1014!5 String)
(assert (= var1014!5 (str.++ var1014!4 var577)))
(define-const var2735 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2735)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2735!1 String)
(assert (= var2735!1 ""))
(assert true)
(define-const var160 String (append/672562846 var2735!1 ", sp=")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sp=") 
(declare-const var2735!2 String)
(assert (= var2735!2 (str.++ var2735!1 ", sp=")))
(define-const var467 Int (sp/397531683 var3116)) ; Statement: $i1 = r19.<org.stringtemplate.v4.Interpreter: int sp> 
(assert true)
(define-const var1112 String (append/-1001720160 var160 var467)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var160!1 String)
(assert (str.prefixof var160 var160!1))
(assert true)
(define-const var645 String (append/672562846 var1112 ", nw=")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", nw=") 
(declare-const var1112!1 String)
(assert (= var1112!1 (str.++ var1112 ", nw=")))
(define-const var361 Int (nwline/397531683 var3116)) ; Statement: $i2 = r19.<org.stringtemplate.v4.Interpreter: int nwline> 
(assert true)
(define-const var2579 String (append/-1001720160 var645 var361)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var645!1 String)
(assert (str.prefixof var645 var645!1))
(assert true)
(define-const var3721 String (toString/-2075883882 var2579)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1014!5 var3721)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1014!6 String)
(assert (= var1014!6 (str.++ var1014!5 var3721)))
(assert true)
(define-const var754 String (toString/-2075883882 var1014!6)) ; Statement: r32 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1939 Bool (debug/397531683 var3116)) ; Statement: $z1 = r19.<org.stringtemplate.v4.Interpreter: boolean debug> 
 ; Statement: if $z1 == 0 goto $z2 = <org.stringtemplate.v4.Interpreter: boolean trace> 
(assert (= (ite var1939 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2574 Bool var1179-trace) ; Statement: $z2 = <org.stringtemplate.v4.Interpreter: boolean trace> 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var2574 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2161-init=([], org.stringtemplate.v4.compiler.BytecodeDisassembler), impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), <init>/-169064116=([org.stringtemplate.v4.compiler.BytecodeDisassembler, org.stringtemplate.v4.compiler.CompiledST], void), disassembleInstruction/594120846=([org.stringtemplate.v4.compiler.BytecodeDisassembler, java.lang.StringBuilder, int], int), name/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1663_referenceEquals/-240006294=([java.lang.Object, java.lang.Object], boolean), cast-from-String-to-var620=([java.lang.String], java.lang.Object), arr-var620-init=([], java.lang.Object[]), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), sp/397531683=([org.stringtemplate.v4.Interpreter], int), var1179_getEnclosingInstanceStackString/855228181=([org.stringtemplate.v4.InstanceScope], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), nwline/397531683=([org.stringtemplate.v4.Interpreter], int), debug/397531683=([org.stringtemplate.v4.Interpreter], boolean)}
; {var1179=org.stringtemplate.v4.Interpreter, var3116=r19, var909=org.stringtemplate.v4.InstanceScope, var1781=r0, var2396=i0, var1208=org.stringtemplate.v4.ST, var767=r1, var1014=$r2, var2161=org.stringtemplate.v4.compiler.BytecodeDisassembler, var2848=$r3, var657=org.stringtemplate.v4.compiler.CompiledST, var1435=$r4, var744=$r5, var463=$r6, var1117=$r7, var2339=$r8, var3633=$r9, var1447=$r10, var2355=r31, var3704=$r11, var1149=$r12, var1663=org.stringtemplate.v4.misc.Misc, var620=java.lang.Object, var2511=$z0, var895=$r13, var1019=$r14, var3389=$r15, var1180=$r16, var3844=$r17, var65=$r18, var1368=i3, var3919=$i4, var577=$r20, var2735=$r21, var160=$r22, var467=$i1, var1112=$r23, var645=$r24, var361=$i2, var2579=$r25, var3721=$r26, var754=r32, var1939=$z1, var2574=$z2}
; {org.stringtemplate.v4.Interpreter=var1179, r19=var3116, org.stringtemplate.v4.InstanceScope=var909, r0=var1781, i0=var2396, org.stringtemplate.v4.ST=var1208, r1=var767, $r2=var1014, org.stringtemplate.v4.compiler.BytecodeDisassembler=var2161, $r3=var2848, org.stringtemplate.v4.compiler.CompiledST=var657, $r4=var1435, $r5=var744, $r6=var463, $r7=var1117, $r8=var2339, $r9=var3633, $r10=var1447, r31=var2355, $r11=var3704, $r12=var1149, org.stringtemplate.v4.misc.Misc=var1663, java.lang.Object=var620, $z0=var2511, $r13=var895, $r14=var1019, $r15=var3389, $r16=var1180, $r17=var3844, $r18=var65, i3=var1368, $i4=var3919, $r20=var577, $r21=var2735, $r22=var160, $i1=var467, $r23=var1112, $r24=var645, $i2=var361, $r25=var2579, $r26=var3721, r32=var754, $z1=var1939, $z2=var2574}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2}
;stmts r19 := @this: org.stringtemplate.v4.Interpreter;	r0 := @parameter0: org.stringtemplate.v4.InstanceScope;	i0 := @parameter1: int;	r1 = r0.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = new org.stringtemplate.v4.compiler.BytecodeDisassembler;	$r4 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	specialinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: void <init>(org.stringtemplate.v4.compiler.CompiledST)>($r4);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r3.<org.stringtemplate.v4.compiler.BytecodeDisassembler: int disassembleInstruction(java.lang.StringBuilder,int)>($r5, i0);	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r8 = $r7.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	r31 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = r1.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r12 = $r11.<org.stringtemplate.v4.compiler.CompiledST: java.lang.String name>;	$z0 = staticinvoke <org.stringtemplate.v4.misc.Misc: boolean referenceEquals(java.lang.Object,java.lang.Object)>($r12, "anonymous");	if $z0 == 0 goto $r13 = newarray (java.lang.Object)[1];	$r13 = newarray (java.lang.Object)[1];	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r13[0] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%-40s", $r13);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\tstack=[");	i3 = 0;	$i4 = r19.<org.stringtemplate.v4.Interpreter: int sp>;	if i3 > $i4 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ], calls=");	$r20 = staticinvoke <org.stringtemplate.v4.Interpreter: java.lang.String getEnclosingInstanceStackString(org.stringtemplate.v4.InstanceScope)>(r0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sp=");	$i1 = r19.<org.stringtemplate.v4.Interpreter: int sp>;	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", nw=");	$i2 = r19.<org.stringtemplate.v4.Interpreter: int nwline>;	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	r32 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r19.<org.stringtemplate.v4.Interpreter: boolean debug>;	if $z1 == 0 goto $z2 = <org.stringtemplate.v4.Interpreter: boolean trace>;	$z2 = <org.stringtemplate.v4.Interpreter: boolean trace>;	if $z2 == 0 goto return;	return
;block_num 6