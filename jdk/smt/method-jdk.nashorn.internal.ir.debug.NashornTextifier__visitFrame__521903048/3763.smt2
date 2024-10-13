(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var1484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendFrameTypes/1013883509 (var966 String Int (Array Int var1484)) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var966 var1484) void)
(declare-fun cast-from-String-to-var1484 (String) var1484)
(declare-const null-var966 var966)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1484__ (Array Int var1484))
(declare-const var3533 var966) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var3533 null-var966)))
(declare-const var2744 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2744 null-Int)))
(declare-const var3289 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3289 null-Int)))
(declare-const var131 (Array Int var1484)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var131 null-__Array__Int__var1484__)))
(declare-const var72 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var72 null-Int)))
(declare-const var227 (Array Int var1484)) ; Statement: r2 := @parameter4: java.lang.Object[] 
(assert (not (= var227 null-__Array__Int__var1484__)))
(define-const var2449 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2449)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2449!1 String)
(assert (= var2449!1 ""))
(assert true)
;(assert (append/672562846 var2449!1 "frame ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ") 
(declare-const var2449!2 String)
(assert (= var2449!2 (str.++ var2449!1 "frame ")))
 ; Statement: tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (= var2744 4) (and (not (= var2744 3)) (and (not (= var2744 2)) (and (not (= var2744 1)) (and (not (= var2744 0)) (and (not (= var2744 (- 1))) true))))))) ; Intersect: Cond: i0 == 4  and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Intersect: Negate: Cond: i0 == -1   and Non Conditional      
(assert true)
;(assert (append/672562846 var2449!2 "same1 ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ") 
(declare-const var2449!3 String)
(assert (= var2449!3 (str.++ var2449!2 "same1 ")))
(assert true)
;(assert (appendFrameTypes/1013883509 var3533 var2449!3 1 var227)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void appendFrameTypes(java.lang.StringBuilder,int,java.lang.Object[])>($r0, 1, r2) 

(declare-const var3533!1 var966)
(declare-const var2449!4 String)
(declare-const var2797 Int)
(declare-const var227!1 (Array Int var1484))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2449!4 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2449!5 String)
(assert (str.prefixof var2449!4 var2449!5))
(assert true)
;(assert (append/-1166366385 var2449!5 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2449!6 String)
(assert (str.prefixof var2449!5 var2449!6))
(assert true)
;(assert (addText/1451988652 var3533!1 (cast-from-String-to-var1484 var2449!6))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var3533!2 var966)
(declare-const var2449!7 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), appendFrameTypes/1013883509=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int, java.lang.Object[]], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var1484=([java.lang.StringBuilder], java.lang.Object)}
; {var966=jdk.nashorn.internal.ir.debug.NashornTextifier, var3533=r1, var2744=i0, var3289=i1, var1484=java.lang.Object, var131=r4, var72=i2, var227=r2, var2449=$r0, var2797=1}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var966, r1=var3533, i0=var2744, i1=var3289, java.lang.Object=var1484, r4=var131, i2=var72, r2=var227, $r0=var2449, 1=var2797}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	r4 := @parameter2: java.lang.Object[];	i2 := @parameter3: int;	r2 := @parameter4: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ");	tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void appendFrameTypes(java.lang.StringBuilder,int,java.lang.Object[])>($r0, 1, r2);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3