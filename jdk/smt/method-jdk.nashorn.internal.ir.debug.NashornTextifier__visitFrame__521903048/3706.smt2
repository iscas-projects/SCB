(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var549 0)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendFrameTypes/1013883509 (var549 String Int (Array Int var2480)) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var549 var2480) void)
(declare-fun cast-from-String-to-var2480 (String) var2480)
(declare-const null-var549 var549)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2480__ (Array Int var2480))
(declare-const var2160 var549) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2160 null-var549)))
(declare-const var1252 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1252 null-Int)))
(declare-const var3859 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3859 null-Int)))
(declare-const var1310 (Array Int var2480)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var1310 null-__Array__Int__var2480__)))
(declare-const var1281 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1281 null-Int)))
(declare-const var3000 (Array Int var2480)) ; Statement: r2 := @parameter4: java.lang.Object[] 
(assert (not (= var3000 null-__Array__Int__var2480__)))
(define-const var2685 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2685)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2685!1 String)
(assert (= var2685!1 ""))
(assert true)
;(assert (append/672562846 var2685!1 "frame ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ") 
(declare-const var2685!2 String)
(assert (= var2685!2 (str.++ var2685!1 "frame ")))
 ; Statement: tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (= var1252 (- 1)) true)) ; Intersect: Cond: i0 == -1  and Non Conditional 
(assert true)
;(assert (append/672562846 var2685!2 "full [")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [") 
(declare-const var2685!3 String)
(assert (= var2685!3 (str.++ var2685!2 "full [")))
(assert true)
;(assert (appendFrameTypes/1013883509 var2160 var2685!3 var3859 var1310)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void appendFrameTypes(java.lang.StringBuilder,int,java.lang.Object[])>($r0, i1, r4) 

(declare-const var2160!1 var549)
(declare-const var2685!4 String)
(declare-const var3859!1 Int)
(declare-const var1310!1 (Array Int var2480))
(assert true)
;(assert (append/672562846 var2685!4 "] [")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] [") 
(declare-const var2685!5 String)
(assert (= var2685!5 (str.++ var2685!4 "] [")))
(assert true)
;(assert (appendFrameTypes/1013883509 var2160!1 var2685!5 var1281 var3000)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void appendFrameTypes(java.lang.StringBuilder,int,java.lang.Object[])>($r0, i2, r2) 

(declare-const var2160!2 var549)
(declare-const var2685!6 String)
(declare-const var1281!1 Int)
(declare-const var3000!1 (Array Int var2480))
(assert true)
;(assert (append/-1166366385 var2685!6 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var2685!7 String)
(assert (str.prefixof var2685!6 var2685!7))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2685!7 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2685!8 String)
(assert (str.prefixof var2685!7 var2685!8))
(assert true)
;(assert (append/-1166366385 var2685!8 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2685!9 String)
(assert (str.prefixof var2685!8 var2685!9))
(assert true)
;(assert (addText/1451988652 var2160!2 (cast-from-String-to-var2480 var2685!9))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var2160!3 var549)
(declare-const var2685!10 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendFrameTypes/1013883509=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int, java.lang.Object[]], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2480=([java.lang.StringBuilder], java.lang.Object)}
; {var549=jdk.nashorn.internal.ir.debug.NashornTextifier, var2160=r1, var1252=i0, var3859=i1, var2480=java.lang.Object, var1310=r4, var1281=i2, var3000=r2, var2685=$r0}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var549, r1=var2160, i0=var1252, i1=var3859, java.lang.Object=var2480, r4=var1310, i2=var1281, r2=var3000, $r0=var2685}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	r4 := @parameter2: java.lang.Object[];	i2 := @parameter3: int;	r2 := @parameter4: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ");	tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void appendFrameTypes(java.lang.StringBuilder,int,java.lang.Object[])>($r0, i1, r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] [");	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void appendFrameTypes(java.lang.StringBuilder,int,java.lang.Object[])>($r0, i2, r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3