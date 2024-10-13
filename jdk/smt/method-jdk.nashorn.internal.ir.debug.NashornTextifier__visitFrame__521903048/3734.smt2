(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1856 0)
(declare-sort var2602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendFrameTypes/1013883509 (var1856 String Int (Array Int var2602)) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var1856 var2602) void)
(declare-fun cast-from-String-to-var2602 (String) var2602)
(declare-const null-var1856 var1856)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2602__ (Array Int var2602))
(declare-const var3446 var1856) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3446 null-var1856)))
(declare-const var714 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var714 null-Int)))
(declare-const var3550 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3550 null-Int)))
(declare-const var2406 (Array Int var2602)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var2406 null-__Array__Int__var2602__)))
(declare-const var910 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var910 null-Int)))
(declare-const var3737 (Array Int var2602)) ; Statement: r2 := @parameter4: java.lang.Object[] 
(assert (not (= var3737 null-__Array__Int__var2602__)))
(define-const var632 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var632)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var632!1 String)
(assert (= var632!1 ""))
(assert true)
;(assert (append/672562846 var632!1 "frame ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ") 
(declare-const var632!2 String)
(assert (= var632!2 (str.++ var632!1 "frame ")))
 ; Statement: tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (= var714 1) (and (not (= var714 0)) (and (not (= var714 (- 1))) true)))) ; Intersect: Cond: i0 == 1  and Intersect: Negate: Cond: i0 == 0   and Intersect: Negate: Cond: i0 == -1   and Non Conditional   
(assert true)
;(assert (append/672562846 var632!2 "append [")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [") 
(declare-const var632!3 String)
(assert (= var632!3 (str.++ var632!2 "append [")))
(assert true)
;(assert (appendFrameTypes/1013883509 var3446 var632!3 var3550 var2406)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void appendFrameTypes(java.lang.StringBuilder,int,java.lang.Object[])>($r0, i1, r4) 

(declare-const var3446!1 var1856)
(declare-const var632!4 String)
(declare-const var3550!1 Int)
(declare-const var2406!1 (Array Int var2602))
(assert true)
;(assert (append/-1166366385 var632!4 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var632!5 String)
(assert (str.prefixof var632!4 var632!5))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var632!5 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var632!6 String)
(assert (str.prefixof var632!5 var632!6))
(assert true)
;(assert (append/-1166366385 var632!6 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var632!7 String)
(assert (str.prefixof var632!6 var632!7))
(assert true)
;(assert (addText/1451988652 var3446!1 (cast-from-String-to-var2602 var632!7))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var3446!2 var1856)
(declare-const var632!8 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendFrameTypes/1013883509=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int, java.lang.Object[]], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2602=([java.lang.StringBuilder], java.lang.Object)}
; {var1856=jdk.nashorn.internal.ir.debug.NashornTextifier, var3446=r1, var714=i0, var3550=i1, var2602=java.lang.Object, var2406=r4, var910=i2, var3737=r2, var632=$r0}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1856, r1=var3446, i0=var714, i1=var3550, java.lang.Object=var2602, r4=var2406, i2=var910, r2=var3737, $r0=var632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	r4 := @parameter2: java.lang.Object[];	i2 := @parameter3: int;	r2 := @parameter4: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ");	tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void appendFrameTypes(java.lang.StringBuilder,int,java.lang.Object[])>($r0, i1, r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3