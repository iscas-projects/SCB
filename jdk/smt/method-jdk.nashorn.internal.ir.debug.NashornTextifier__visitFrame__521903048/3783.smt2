(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1015 0)
(declare-sort var3736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var1015 var3736) void)
(declare-fun cast-from-String-to-var3736 (String) var3736)
(declare-const null-var1015 var1015)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3736__ (Array Int var3736))
(declare-const var1015-$assertionsDisabled Bool)
(declare-const var2819 var1015) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var2819 null-var1015)))
(declare-const var3702 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3702 null-Int)))
(declare-const var16 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var16 null-Int)))
(declare-const var1643 (Array Int var3736)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var1643 null-__Array__Int__var3736__)))
(declare-const var3590 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var3590 null-Int)))
(declare-const var2286 (Array Int var3736)) ; Statement: r2 := @parameter4: java.lang.Object[] 
(assert (not (= var2286 null-__Array__Int__var3736__)))
(define-const var1929 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1929)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1929!1 String)
(assert (= var1929!1 ""))
(assert true)
;(assert (append/672562846 var1929!1 "frame ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ") 
(declare-const var1929!2 String)
(assert (= var1929!2 (str.++ var1929!1 "frame ")))
 ; Statement: tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (not (= var3702 4)) (and (not (= var3702 3)) (and (not (= var3702 2)) (and (not (= var3702 1)) (and (not (= var3702 0)) (and (not (= var3702 (- 1))) true))))))) ; Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Intersect: Negate: Cond: i0 == -1   and Non Conditional      
(define-const var225 Bool var1015-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(assert (not (= (ite var225 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/-1166366385 var1929!2 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1929!3 String)
(assert (str.prefixof var1929!2 var1929!3))
(assert true)
;(assert (append/-1166366385 var1929!3 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1929!4 String)
(assert (str.prefixof var1929!3 var1929!4))
(assert true)
;(assert (addText/1451988652 var2819 (cast-from-String-to-var3736 var1929!4))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var2819!1 var1015)
(declare-const var1929!5 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var3736=([java.lang.StringBuilder], java.lang.Object)}
; {var1015=jdk.nashorn.internal.ir.debug.NashornTextifier, var2819=r1, var3702=i0, var16=i1, var3736=java.lang.Object, var1643=r4, var3590=i2, var2286=r2, var1929=$r0, var225=$z0}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1015, r1=var2819, i0=var3702, i1=var16, java.lang.Object=var3736, r4=var1643, i2=var3590, r2=var2286, $r0=var1929, $z0=var225}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	r4 := @parameter2: java.lang.Object[];	i2 := @parameter3: int;	r2 := @parameter4: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ");	tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	$z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>;	if $z0 != 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3