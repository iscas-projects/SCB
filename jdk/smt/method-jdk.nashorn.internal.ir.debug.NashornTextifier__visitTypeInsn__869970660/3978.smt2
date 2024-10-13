(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2600 0)
(declare-sort var829 0)
(declare-sort var2344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var2600 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2600_appendDescriptor/-359262046 (String Int String) void)
(declare-fun addText/1451988652 (var2600 var2344) void)
(declare-fun cast-from-String-to-var2344 (String) var2344)
(declare-const null-var2600 var2600)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1739 var2600) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var1739 null-var2600)))
(declare-const var1089 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1089 null-Int)))
(declare-const var3873 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3873 null-String)))
(define-const var1445 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1445)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1445!1 String)
(assert (= var1445!1 ""))
(assert true)
(define-const var1851 String (appendOpcode/-2040334566 var1739 var1445!1 var1089)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0) 
(assert true)
;(assert (append/-1166366385 var1851 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1851!1 String)
(assert (str.prefixof var1851 var1851!1))
;(assert (var2600_appendDescriptor/-359262046 var1445!1 0 var3873)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r3) 

(declare-const var1445!2 String)
(declare-const var1821 Int)
(declare-const var3873!1 String)
(assert true)
;(assert (append/-1166366385 var1445!2 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1445!3 String)
(assert (str.prefixof var1445!2 var1445!3))
(assert true)
;(assert (addText/1451988652 var1739 (cast-from-String-to-var2344 var1445!3))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var1739!1 var2600)
(declare-const var1445!4 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2600_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2344=([java.lang.StringBuilder], java.lang.Object)}
; {var2600=jdk.nashorn.internal.ir.debug.NashornTextifier, var1739=r1, var1089=i0, var3873=r3, var829=null_type, var1445=$r0, var1851=$r2, var1821=0, var2344=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2600, r1=var1739, i0=var1089, r3=var3873, null_type=var829, $r0=var1445, $r2=var1851, 0=var1821, java.lang.Object=var2344}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 1