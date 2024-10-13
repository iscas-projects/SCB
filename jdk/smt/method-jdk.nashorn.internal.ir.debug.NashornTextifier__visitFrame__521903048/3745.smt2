(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1948 0)
(declare-sort var3014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var1948 var3014) void)
(declare-fun cast-from-String-to-var3014 (String) var3014)
(declare-const null-var1948 var1948)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var3014__ (Array Int var3014))
(declare-const var107 var1948) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var107 null-var1948)))
(declare-const var180 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var180 null-Int)))
(declare-const var3878 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3878 null-Int)))
(declare-const var3967 (Array Int var3014)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var3967 null-__Array__Int__var3014__)))
(declare-const var1999 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var1999 null-Int)))
(declare-const var1128 (Array Int var3014)) ; Statement: r2 := @parameter4: java.lang.Object[] 
(assert (not (= var1128 null-__Array__Int__var3014__)))
(define-const var2542 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2542)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2542!1 String)
(assert (= var2542!1 ""))
(assert true)
;(assert (append/672562846 var2542!1 "frame ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ") 
(declare-const var2542!2 String)
(assert (= var2542!2 (str.++ var2542!1 "frame ")))
 ; Statement: tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; } 
(assert (and (= var180 2) (and (not (= var180 1)) (and (not (= var180 0)) (and (not (= var180 (- 1))) true))))) ; Intersect: Cond: i0 == 2  and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Intersect: Negate: Cond: i0 == -1   and Non Conditional    
(assert true)
(define-const var1088 String (append/672562846 var2542!2 "chop ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ") 
(declare-const var2542!3 String)
(assert (= var2542!3 (str.++ var2542!2 "chop ")))
(assert true)
;(assert (append/-1001720160 var1088 var3878)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1088!1 String)
(assert (str.prefixof var1088 var1088!1))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var2542!3 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2542!4 String)
(assert (str.prefixof var2542!3 var2542!4))
(assert true)
;(assert (append/-1166366385 var2542!4 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2542!5 String)
(assert (str.prefixof var2542!4 var2542!5))
(assert true)
;(assert (addText/1451988652 var107 (cast-from-String-to-var3014 var2542!5))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var107!1 var1948)
(declare-const var2542!6 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var3014=([java.lang.StringBuilder], java.lang.Object)}
; {var1948=jdk.nashorn.internal.ir.debug.NashornTextifier, var107=r1, var180=i0, var3878=i1, var3014=java.lang.Object, var3967=r4, var1999=i2, var1128=r2, var2542=$r0, var1088=$r3}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1948, r1=var107, i0=var180, i1=var3878, java.lang.Object=var3014, r4=var3967, i2=var1999, r2=var1128, $r0=var2542, $r3=var1088}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	r4 := @parameter2: java.lang.Object[];	i2 := @parameter3: int;	r2 := @parameter4: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("frame ");	tableswitch(i0) {     case -1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 0: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("full [");     case 1: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("append [");     case 2: goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");     case 3: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same");     case 4: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("same1 ");     default: goto $z0 = <jdk.nashorn.internal.ir.debug.NashornTextifier: boolean $assertionsDisabled>; };	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("chop ");	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 3