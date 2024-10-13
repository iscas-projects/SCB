(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var522 0)
(declare-sort var1687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var522 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cast-from-var1687-to-String (var1687) String)
(declare-fun var522_appendStr/-929682037 (String String) void)
(declare-fun addText/1451988652 (var522 var1687) void)
(declare-fun cast-from-String-to-var1687 (String) var1687)
(declare-const null-var522 var522)
(declare-const null-var1687 var1687)
(declare-const var3815 var522) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3815 null-var522)))
(declare-const var1881 var1687) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var1881 null-var1687)))
(define-const var3712 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3712)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3712!1 String)
(assert (= var3712!1 ""))
(assert true)
(define-const var423 String (appendOpcode/-2040334566 var3815 var3712!1 18)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 18) 
(assert true)
;(assert (append/-1166366385 var423 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var423!1 String)
(assert (str.prefixof var423 var423!1))
(define-const var1554 Bool false) ; Statement: $z0 = r3 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r3 instanceof jdk.internal.org.objectweb.asm.Type 
(assert (not (= (ite var1554 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3979 String (cast-from-var1687-to-String var1881)) ; Statement: $r7 = (java.lang.String) r3 
;(assert (var522_appendStr/-929682037 var3712!1 var3979)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendStr(java.lang.StringBuilder,java.lang.String)>($r0, $r7) 

(declare-const var3712!2 String)
(declare-const var3979!1 String)
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3712!2 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3712!3 String)
(assert (str.prefixof var3712!2 var3712!3))
(assert true)
;(assert (addText/1451988652 var3815 (cast-from-String-to-var1687 var3712!3))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var3815!1 var522)
(declare-const var3712!4 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cast-from-var1687-to-String=([java.lang.Object], java.lang.String), var522_appendStr/-929682037=([java.lang.StringBuilder, java.lang.String], void), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var1687=([java.lang.StringBuilder], java.lang.Object)}
; {var522=jdk.nashorn.internal.ir.debug.NashornTextifier, var3815=r1, var1687=java.lang.Object, var1881=r3, var3712=$r0, var423=$r2, var1554=$z0, var3979=$r7}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var522, r1=var3815, java.lang.Object=var1687, r3=var1881, $r0=var3712, $r2=var423, $z0=var1554, $r7=var3979}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r3 := @parameter0: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 18);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$z0 = r3 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r3 instanceof jdk.internal.org.objectweb.asm.Type;	$r7 = (java.lang.String) r3;	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendStr(java.lang.StringBuilder,java.lang.String)>($r0, $r7);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3