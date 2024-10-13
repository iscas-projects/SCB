(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3103 0)
(declare-sort var454 0)
(declare-sort var2356 0)
(declare-sort var2221 0)
(declare-sort var2995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3103_appendAccess/-2076115506 (String Int) void)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3103_appendDescriptor/-359262046 (String Int String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var3103 var2356) void)
(declare-fun cast-from-String-to-var2356 (String) var2356)
(declare-fun createNashornTextifier/-1153041222 (var3103) var3103)
(declare-fun getText/-142638630 (var2995) var2221)
(declare-fun cast-from-var3103-to-var2995 (var3103) var2995)
(declare-fun cast-from-var2221-to-var2356 (var2221) var2356)
(declare-const null-var3103 var3103)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2356 var2356)
(declare-const var1861 var3103) ; Statement: r6 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var1861 null-var3103)))
(declare-const var754 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var754 null-Int)))
(declare-const var1515 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1515 null-String)))
(declare-const var1341 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1341 null-String)))
(declare-const var1391 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var1391 null-String)))
(declare-const var2392 var2356) ; Statement: r5 := @parameter4: java.lang.Object 
(assert (not (= var2392 null-var2356)))
(define-const var968 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var968)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var968!1 String)
(assert (= var968!1 ""))
(define-const var2241 Int (bv2nat (bvand ((_ int2bv 64) var754) ((_ int2bv 64) 131072)))) ; Statement: $i1 = i0 & 131072 
 ; Statement: if $i1 == 0 goto (branch) 
(assert (= var2241 0)) ; Cond: $i1 == 0 
 ; Statement: if r1 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(assert (= var1391 null-String)) ; Cond: r1 == null 
(assert true)
;(assert (append/672562846 var968!1 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var968!2 String)
(assert (= var968!2 (str.++ var968!1 "  ")))
;(assert (var3103_appendAccess/-2076115506 var968!2 var754)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r0, i0) 

(declare-const var968!3 String)
(declare-const var754!1 Int)
(assert true)
(define-const var2480 Bool (endsWith/985337093 var1341 ";")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(";") 
 ; Statement: if $z0 == 0 goto $r16 = r2 
(assert (not (= (ite var2480 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1670 Int (length/-134980193 var1341)) ; Statement: $i2 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var740 Int (- var1670 1)) ; Statement: $i3 = $i2 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var1341) var740) (>= var740 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3103_appendAccess/-2076115506=([java.lang.StringBuilder, int], void), endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3103_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2356=([java.lang.StringBuilder], java.lang.Object), createNashornTextifier/-1153041222=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3103-to-var2995=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.internal.org.objectweb.asm.util.Printer), cast-from-var2221-to-var2356=([java.util.List], java.lang.Object)}
; {var3103=jdk.nashorn.internal.ir.debug.NashornTextifier, var1861=r6, var754=i0, var1515=r3, var454=null_type, var1341=r2, var1391=r1, var2356=java.lang.Object, var2392=r5, var968=$r0, var2241=$i1, var2480=$z0, var1670=$i2, var740=$i3, var1091=$r16, var158=1, var1571=$r4, var824=$r17, var2221=java.util.List, var2995=jdk.internal.org.objectweb.asm.util.Printer, var3682=$r18}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3103, r6=var1861, i0=var754, r3=var1515, null_type=var454, r2=var1341, r1=var1391, java.lang.Object=var2356, r5=var2392, $r0=var968, $i1=var2241, $z0=var2480, $i2=var1670, $i3=var740, $r16=var1091, 1=var158, $r4=var1571, $r17=var824, java.util.List=var2221, jdk.internal.org.objectweb.asm.util.Printer=var2995, $r18=var3682}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r6 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i1 = i0 & 131072;	if $i1 == 0 goto (branch);	if r1 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r0, i0);	$z0 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(";");	if $z0 == 0 goto $r16 = r2;	$i2 = virtualinvoke r2.<java.lang.String: int length()>();	$i3 = $i2 - 1;	$r16 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i3);	goto [?= staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, $r16)];	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, $r16);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	if r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	specialinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	$r17 = virtualinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier createNashornTextifier()>();	$r18 = virtualinvoke $r17.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.List getText()>();	specialinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r18);	return $r17
;block_num 6