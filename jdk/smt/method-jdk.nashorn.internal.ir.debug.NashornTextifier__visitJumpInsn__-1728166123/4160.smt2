(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3959 0)
(declare-sort var725 0)
(declare-sort var1801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var3959 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun appendLabel/1394374428 (var3959 String var725) String)
(declare-fun addText/1451988652 (var3959 var1801) void)
(declare-fun cast-from-String-to-var1801 (String) var1801)
(declare-fun checkNoFallThru/-7285554 (var3959 Int String) void)
(declare-const null-var3959 var3959)
(declare-const null-Int Int)
(declare-const null-var725 var725)
(declare-const var1373 var3959) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var1373 null-var3959)))
(declare-const var2777 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2777 null-Int)))
(declare-const var1430 var725) ; Statement: r3 := @parameter1: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var1430 null-var725)))
(define-const var817 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var817)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var817!1 String)
(assert (= var817!1 ""))
(assert true)
(define-const var1962 String (appendOpcode/-2040334566 var1373 var817!1 var2777)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0) 
(assert true)
;(assert (append/-1166366385 var1962 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1962!1 String)
(assert (str.prefixof var1962 var1962!1))
(assert true)
(define-const var258 String (appendLabel/1394374428 var1373 var817!1 var1430)) ; Statement: r4 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r3) 
(assert true)
;(assert (append/-1166366385 var817!1 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var817!2 String)
(assert (str.prefixof var817!1 var817!2))
(assert true)
;(assert (addText/1451988652 var1373 (cast-from-String-to-var1801 var817!2))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var1373!1 var3959)
(declare-const var817!3 String)
(assert true)
;(assert (checkNoFallThru/-7285554 var1373!1 var2777 var258)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void checkNoFallThru(int,java.lang.String)>(i0, r4) 

(declare-const var1373!2 var3959)
(declare-const var2777!1 Int)
(declare-const var258!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), appendLabel/1394374428=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, jdk.internal.org.objectweb.asm.Label], java.lang.String), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var1801=([java.lang.StringBuilder], java.lang.Object), checkNoFallThru/-7285554=([jdk.nashorn.internal.ir.debug.NashornTextifier, int, java.lang.String], void)}
; {var3959=jdk.nashorn.internal.ir.debug.NashornTextifier, var1373=r1, var2777=i0, var725=jdk.internal.org.objectweb.asm.Label, var1430=r3, var817=$r0, var1962=$r2, var258=r4, var1801=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3959, r1=var1373, i0=var2777, jdk.internal.org.objectweb.asm.Label=var725, r3=var1430, $r0=var817, $r2=var1962, r4=var258, java.lang.Object=var1801}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r3 := @parameter1: jdk.internal.org.objectweb.asm.Label;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	r4 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void checkNoFallThru(int,java.lang.String)>(i0, r4);	return
;block_num 1