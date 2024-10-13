(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2862 0)
(declare-sort var376 0)
(declare-sort var2164 0)
(declare-sort var2169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun localVarsStarted/-340627520 (var2862) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun appendLabel/1394374428 (var2862 String var2164) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun var2862_appendDescriptor/-359262046 (String Int String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addText/1451988652 (var2862 var2169) void)
(declare-fun cast-from-String-to-var2169 (String) var2169)
(declare-const null-var2862 var2862)
(declare-const null-String String)
(declare-const null-var2164 var2164)
(declare-const null-Int Int)
(declare-const var1144 var2862) ; Statement: r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var1144 null-var2862)))
(declare-const var1917 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1917 null-String)))
(declare-const var1844 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var1844 null-String)))
(declare-const var3295 String) ; Statement: r10 := @parameter2: java.lang.String 
(assert (not (= var3295 null-String)))
(declare-const var3387 var2164) ; Statement: r6 := @parameter3: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3387 null-var2164)))
(declare-const var973 var2164) ; Statement: r7 := @parameter4: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var973 null-var2164)))
(declare-const var1657 Int) ; Statement: i4 := @parameter5: int 
(assert (not (= var1657 null-Int)))
(define-const var2309 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2309)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2309!1 String)
(assert (= var2309!1 ""))
(define-const var3976 Bool (localVarsStarted/-340627520 var1144)) ; Statement: $z0 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: boolean localVarsStarted> 
 ; Statement: if $z0 != 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(assert (not (= (ite var3976 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1451 String (append/672562846 var2309!1 "    ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var2309!2 String)
(assert (= var2309!2 (str.++ var2309!1 "    ")))
(assert true)
(define-const var131 String (append/672562846 var1451 "local ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("local ") 
(declare-const var1451!1 String)
(assert (= var1451!1 (str.++ var1451 "local ")))
(assert true)
(define-const var2484 String (append/672562846 var131 var1917)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var131!1 String)
(assert (= var131!1 (str.++ var131 var1917)))
(assert true)
;(assert (append/-1166366385 var2484 32)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2484!1 String)
(assert (str.prefixof var2484 var2484!1))
(assert true)
(define-const var2772 Int (length/-171891354 var2309!2)) ; Statement: $i5 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
(define-const var2167 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var2103 Int (- 25 var2772)) ; Statement: $i7 = 25 - $i5 
 ; Statement: if i6 >= $i7 goto r20 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r6) 
(assert (>= var2167 var2103)) ; Cond: i6 >= $i7 
(assert true)
(define-const var174 String (appendLabel/1394374428 var1144 var2309!2 var3387)) ; Statement: r20 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r6) 
(define-const var3846 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var847 Int (length/-134980193 var174)) ; Statement: $i0 = virtualinvoke r20.<java.lang.String: int length()>() 
(define-const var379 Int (- 5 var847)) ; Statement: $i1 = 5 - $i0 
 ; Statement: if i8 >= $i1 goto r21 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r7) 
(assert (>= var3846 var379)) ; Cond: i8 >= $i1 
(assert true)
(define-const var45 String (appendLabel/1394374428 var1144 var2309!2 var973)) ; Statement: r21 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r7) 
(define-const var390 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3488 Int (length/-134980193 var45)) ; Statement: $i2 = virtualinvoke r21.<java.lang.String: int length()>() 
(define-const var473 Int (- 5 var3488)) ; Statement: $i3 = 5 - $i2 
 ; Statement: if i9 >= $i3 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(assert (>= var390 var473)) ; Cond: i9 >= $i3 
(assert true)
(define-const var2560 String (append/-1001720160 var2309!2 var1657)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var2309!3 String)
(assert (str.prefixof var2309!2 var2309!3))
(assert true)
;(assert (append/672562846 var2560 "    ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var2560!1 String)
(assert (= var2560!1 (str.++ var2560 "    ")))
;(assert (var2862_appendDescriptor/-359262046 var2309!3 1 var1844)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, r9) 

(declare-const var2309!4 String)
(declare-const var523 Int)
(declare-const var1844!1 String)
(assert true)
;(assert (append/-1166366385 var2309!4 10)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2309!5 String)
(assert (str.prefixof var2309!4 var2309!5))
 ; Statement: if r10 == null goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3295 null-String)) ; Cond: r10 == null 
(assert true)
(define-const var906 String (toString/-2075883882 var2309!5)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addText/1451988652 var1144 (cast-from-String-to-var2169 var906))) ; Statement: specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r11) 

(declare-const var1144!1 var2862)
(declare-const var906!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), localVarsStarted/-340627520=([jdk.nashorn.internal.ir.debug.NashornTextifier], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), appendLabel/1394374428=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.StringBuilder, jdk.internal.org.objectweb.asm.Label], java.lang.String), length/-134980193=([java.lang.String], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), var2862_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var2169=([java.lang.String], java.lang.Object)}
; {var2862=jdk.nashorn.internal.ir.debug.NashornTextifier, var1144=r1, var1917=r3, var376=null_type, var1844=r9, var3295=r10, var2164=jdk.internal.org.objectweb.asm.Label, var3387=r6, var973=r7, var1657=i4, var2309=$r0, var3976=$z0, var1451=$r2, var131=$r4, var2484=$r5, var2772=$i5, var2167=i6, var2103=$i7, var174=r20, var3846=i8, var847=$i0, var379=$i1, var45=r21, var390=i9, var3488=$i2, var473=$i3, var2560=$r8, var523=1, var906=$r11, var2169=java.lang.Object}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var2862, r1=var1144, r3=var1917, null_type=var376, r9=var1844, r10=var3295, jdk.internal.org.objectweb.asm.Label=var2164, r6=var3387, r7=var973, i4=var1657, $r0=var2309, $z0=var3976, $r2=var1451, $r4=var131, $r5=var2484, $i5=var2772, i6=var2167, $i7=var2103, r20=var174, i8=var3846, $i0=var847, $i1=var379, r21=var45, i9=var390, $i2=var3488, $i3=var473, $r8=var2560, 1=var523, $r11=var906, java.lang.Object=var2169}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	r3 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.String;	r10 := @parameter2: java.lang.String;	r6 := @parameter3: jdk.internal.org.objectweb.asm.Label;	r7 := @parameter4: jdk.internal.org.objectweb.asm.Label;	i4 := @parameter5: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z0 = r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: boolean localVarsStarted>;	if $z0 != 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("local ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$i5 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	i6 = 0;	$i7 = 25 - $i5;	if i6 >= $i7 goto r20 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r6);	r20 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r6);	i8 = 0;	$i0 = virtualinvoke r20.<java.lang.String: int length()>();	$i1 = 5 - $i0;	if i8 >= $i1 goto r21 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r7);	r21 = specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.lang.String appendLabel(java.lang.StringBuilder,jdk.internal.org.objectweb.asm.Label)>($r0, r7);	i9 = 0;	$i2 = virtualinvoke r21.<java.lang.String: int length()>();	$i3 = 5 - $i2;	if i9 >= $i3 goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, r9);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	if r10 == null goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r1.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r11);	return
;block_num 9