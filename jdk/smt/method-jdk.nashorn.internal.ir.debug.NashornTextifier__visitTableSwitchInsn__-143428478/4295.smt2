(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2510 0)
(declare-sort var1373 0)
(declare-sort var1165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var2510 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getLength-Arr-var1373-1 ((Array Int var1373)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendLabel/1394374428 (var2510 String var1373) String)
(declare-fun addText/1451988652 (var2510 var1165) void)
(declare-fun cast-from-String-to-var1165 (String) var1165)
(declare-const null-var2510 var2510)
(declare-const null-Int Int)
(declare-const null-var1373 var1373)
(declare-const null-__Array__Int__var1373__ (Array Int var1373))
(declare-const var2822 var2510) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2822 null-var2510)))
(declare-const var3955 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3955 null-Int)))
(declare-const var1958 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1958 null-Int)))
(declare-const var3154 var1373) ; Statement: r5 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3154 null-var1373)))
(declare-const var2524 (Array Int var1373)) ; Statement: r3 := @parameter3: jdk.internal.org.objectweb.asm.Label[] 
(assert (not (= var2524 null-__Array__Int__var1373__)))
(define-const var3544 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3544)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3544!1 String)
(assert (= var3544!1 ""))
(assert true)
(define-const var1168 String (appendOpcode/-2040334566 var2822 var3544!1 170)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 170) 
(assert true)
;(assert (append/-1166366385 var1168 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1168!1 String)
(assert (str.prefixof var1168 var1168!1))
(define-const var2252 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3055 Int (getLength-Arr-var1373-1 var2524)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i4 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("      ") 
(assert (>= var2252 var3055)) ; Cond: i4 >= $i0 
(assert true)
(define-const var522 String (append/672562846 var3544!1 "      ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("      ") 
(declare-const var3544!2 String)
(assert (= var3544!2 (str.++ var3544!1 "      ")))
(assert true)
;(assert (append/672562846 var522 "default: ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default: ") 
(declare-const var522!1 String)
(assert (= var522!1 (str.++ var522 "default: ")))
(assert true)
;(assert (appendLabel/1394374428 var2822 var3544!2 var3154)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r5) 

(declare-const var2822!1 var2510)
(declare-const var3544!3 String)
(declare-const var3154!1 var1373)
(assert true)
;(assert (append/-1166366385 var3544!3 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3544!4 String)
(assert (str.prefixof var3544!3 var3544!4))
(assert true)
;(assert (addText/1451988652 var2822!1 (cast-from-String-to-var1165 var3544!4))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var2822!2 var2510)
(declare-const var3544!5 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getLength-Arr-var1373-1=([jdk.internal.org.objectweb.asm.Label[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendLabel/1394374428=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, jdk.internal.org.objectweb.asm.Label], java.lang.String), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var1165=([java.lang.StringBuilder], java.lang.Object)}
; {var2510=jdk.nashorn.internal.ir.debug.NashornTextifier, var2822=r1, var3955=i1, var1958=i3, var1373=jdk.internal.org.objectweb.asm.Label, var3154=r5, var2524=r3, var3544=$r0, var1168=$r2, var2252=i4, var3055=$i0, var522=$r4, var1165=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2510, r1=var2822, i1=var3955, i3=var1958, jdk.internal.org.objectweb.asm.Label=var1373, r5=var3154, r3=var2524, $r0=var3544, $r2=var1168, i4=var2252, $i0=var3055, $r4=var522, java.lang.Object=var1165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i1 := @parameter0: int;	i3 := @parameter1: int;	r5 := @parameter2: jdk.internal.org.objectweb.asm.Label;	r3 := @parameter3: jdk.internal.org.objectweb.asm.Label[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, 170);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	i4 = 0;	$i0 = lengthof r3;	if i4 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("      ");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("      ");	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default: ");	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3