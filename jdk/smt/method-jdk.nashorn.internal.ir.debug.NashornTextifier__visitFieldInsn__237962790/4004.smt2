(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3410 0)
(declare-sort var2059 0)
(declare-sort var1365 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendOpcode/-2040334566 (var3410 String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3410_appendDescriptor/-359262046 (String Int String) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun addText/1451988652 (var3410 var1365) void)
(declare-fun cast-from-String-to-var1365 (String) var1365)
(declare-const null-var3410 var3410)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var675 var3410) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var675 null-var3410)))
(declare-const var3441 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3441 null-Int)))
(declare-const var1940 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1940 null-String)))
(declare-const var2985 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var2985 null-String)))
(declare-const var2491 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var2491 null-String)))
(define-const var3087 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3087)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3087!1 String)
(assert (= var3087!1 ""))
(assert true)
(define-const var1279 String (appendOpcode/-2040334566 var675 var3087!1 var3441)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0) 
(assert true)
;(assert (append/-1166366385 var1279 32)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1279!1 String)
(assert (str.prefixof var1279 var1279!1))
;(assert (var3410_appendDescriptor/-359262046 var3087!1 0 var1940)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r3) 

(declare-const var3087!2 String)
(declare-const var1924 Int)
(declare-const var1940!1 String)
(assert true)
(define-const var438 String (append/-1166366385 var3087!2 46)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3087!3 String)
(assert (str.prefixof var3087!2 var3087!3))
(assert true)
(define-const var2096 String (append/672562846 var438 var2985)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var438!1 String)
(assert (= var438!1 (str.++ var438 var2985)))
(assert true)
;(assert (append/672562846 var2096 " : ")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ") 
(declare-const var2096!1 String)
(assert (= var2096!1 (str.++ var2096 " : ")))
;(assert (var3410_appendDescriptor/-359262046 var3087!3 1 var2491)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, r7) 

(declare-const var3087!4 String)
(declare-const var1543 Int)
(declare-const var2491!1 String)
(assert true)
;(assert (append/-1166366385 var3087!4 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3087!5 String)
(assert (str.prefixof var3087!4 var3087!5))
(assert true)
;(assert (addText/1451988652 var675 (cast-from-String-to-var1365 var3087!5))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var675!1 var3410)
(declare-const var3087!6 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendOpcode/-2040334566=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3410_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var1365=([java.lang.StringBuilder], java.lang.Object)}
; {var3410=jdk.nashorn.internal.ir.debug.NashornTextifier, var675=r1, var3441=i0, var1940=r3, var2059=null_type, var2985=r4, var2491=r7, var3087=$r0, var1279=$r2, var1924=0, var438=$r5, var2096=$r6, var1543=1, var1365=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var3410, r1=var675, i0=var3441, r3=var1940, null_type=var2059, r4=var2985, r7=var2491, $r0=var3087, $r2=var1279, 0=var1924, $r5=var438, $r6=var2096, 1=var1543, java.lang.Object=var1365}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	r7 := @parameter3: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.StringBuilder appendOpcode(java.lang.StringBuilder,int)>($r0, i0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 0, r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" : ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	return
;block_num 1