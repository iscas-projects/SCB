(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3297 0)
(declare-sort var64 0)
(declare-sort var346 0)
(declare-sort var3190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var3297 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-var64-1 ((Array Int var64)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/1394374428 (var3297 String var64) String)
(declare-fun graph/-340627520 (var3297) var346)
(declare-fun currentBlock/-340627520 (var3297) String)
(declare-fun addEdge/258019703 (var346 String String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addText/1451988652 (var3297 var3190) void)
(declare-fun cast-from-String-to-var3190 (String) var3190)
(declare-const null-var3297 var3297)
(declare-const null-var64 var64)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__var64__ (Array Int var64))
(declare-const var1506 var3297) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var1506 null-var3297)))
(declare-const var2777 var64) ; Statement: r5 := @parameter0: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var2777 null-var64)))
(declare-const var542 (Array Int Int)) ; Statement: r9 := @parameter1: int[] 
(assert (not (= var542 null-__Array__Int__Int__)))
(declare-const var2742 (Array Int var64)) ; Statement: r3 := @parameter2: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2742 null-__Array__Int__var64__)))
(define-const var1347 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1347)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1347!1 String)
(assert (= var1347!1 ""))
(assert true)
(define-const var1633 String (appendOpcode/-2040334566 var1506 var1347!1 171)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 171) 
(assert true)
;(assert (append/-1166366385 var1633 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1633!1 String)
(assert (str.prefixof var1633 var1633!1))
(define-const var3012 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3277 Int (getLength-Arr-var64-1 var2742)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i2 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("      ") 
(assert (>= var3012 var3277)) ; Cond: i2 >= $i0 
(assert true)
(define-const var1516 String (append/672562846 var1347!1 "      ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("      ") 
(declare-const var1347!2 String)
(assert (= var1347!2 (str.++ var1347!1 "      ")))
(assert true)
;(assert (append/672562846 var1516 "default: ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default: ") 
(declare-const var1516!1 String)
(assert (= var1516!1 (str.++ var1516 "default: ")))
(assert true)
(define-const var3036 String (appendLabel/1394374428 var1506 var1347!2 var2777)) ; Statement: r16 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r5) 
(define-const var44 var346 (graph/-340627520 var1506)) ; Statement: $r7 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph> 
(define-const var2132 String (currentBlock/-340627520 var1506)) ; Statement: $r6 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentBlock> 
(assert true)
;(assert (addEdge/258019703 var44 var2132 var3036)) ; Statement: virtualinvoke $r7.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void addEdge(java.lang.String,java.lang.String)>($r6, r16) 

(declare-const var44!1 var346)
(declare-const var2132!1 String)
(declare-const var3036!1 String)
(assert true)
;(assert (append/-1166366385 var1347!2 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1347!3 String)
(assert (str.prefixof var1347!2 var1347!3))
(assert true)
(define-const var1674 String (toString/-2075883882 var1347!3)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addText/1451988652 var1506 (cast-from-String-to-var3190 var1674))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r8) 

(declare-const var1506!1 var3297)
(declare-const var1674!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-var64-1=([jdk.internal.org.objectweb.asm.Label[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendLabel/1394374428=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, jdk.internal.org.objectweb.asm.Label], java.lang.String), graph/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier$Graph), currentBlock/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], java.lang.String), addEdge/258019703=([jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, java.lang.String, java.lang.String], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var3190=([java.lang.String], java.lang.Object)}
; {var3297=jdk.nashorn.internal.ir.debug.NashornTextifier, var1506=r1, var64=jdk.internal.org.objectweb.asm.Label, var2777=r5, var542=r9, var2742=r3, var1347=$r0, var1633=$r2, var3012=i2, var3277=$i0, var1516=$r4, var3036=r16, var346=jdk.nashorn.internal.ir.debug.NashornTextifier$Graph, var44=$r7, var2132=$r6, var1674=$r8, var3190=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3297, r1=var1506, jdk.internal.org.objectweb.asm.Label=var64, r5=var2777, r9=var542, r3=var2742, $r0=var1347, $r2=var1633, i2=var3012, $i0=var3277, $r4=var1516, r16=var3036, jdk.nashorn.internal.ir.debug.NashornTextifier$Graph=var346, $r7=var44, $r6=var2132, $r8=var1674, java.lang.Object=var3190}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r5 := @parameter0: jdk.internal.org.objectweb.asm.Label;	r9 := @parameter1: int[];	r3 := @parameter2: jdk.internal.org.objectweb.asm.Label[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 171);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	i2 = 0;	$i0 = lengthof r3;	if i2 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("      ");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("      ");	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default: ");	r16 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r5);	$r7 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier$Graph graph>;	$r6 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String currentBlock>;	virtualinvoke $r7.<jdk.nashorn.internal.ir.debug.NashornTextifier$Graph: void addEdge(java.lang.String,java.lang.String)>($r6, r16);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r8);	return
;block_num 3