(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1294 0)
(declare-sort var361 0)
(declare-sort var809 0)
(declare-sort var380 0)
(declare-sort var1757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1294_appendAccess/-2076115506 (String Int) void)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var1294_appendDescriptor/-359262046 (String Int String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun addText/1451988652 (var1294 var809) void)
(declare-fun cast-from-String-to-var809 (String) var809)
(declare-fun createNashornTextifier/-1153041222 (var1294) var1294)
(declare-fun getText/-142638630 (var1757) var380)
(declare-fun cast-from-var1294-to-var1757 (var1294) var1757)
(declare-fun cast-from-var380-to-var809 (var380) var809)
(declare-const null-var1294 var1294)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var809 var809)
(declare-const var739 var1294) ; Statement: r6 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier 
(assert (not (= var739 null-var1294)))
(declare-const var3122 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3122 null-Int)))
(declare-const var173 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var173 null-String)))
(declare-const var63 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var63 null-String)))
(declare-const var3316 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var3316 null-String)))
(declare-const var2641 var809) ; Statement: r5 := @parameter4: java.lang.Object 
(assert (not (= var2641 null-var809)))
(define-const var1861 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1861)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1861!1 String)
(assert (= var1861!1 ""))
(define-const var3813 Int (bv2nat (bvand ((_ int2bv 64) var3122) ((_ int2bv 64) 131072)))) ; Statement: $i1 = i0 & 131072 
 ; Statement: if $i1 == 0 goto (branch) 
(assert (= var3813 0)) ; Cond: $i1 == 0 
 ; Statement: if r1 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(assert (= var3316 null-String)) ; Cond: r1 == null 
(assert true)
;(assert (append/672562846 var1861!1 "  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1861!2 String)
(assert (= var1861!2 (str.++ var1861!1 "  ")))
;(assert (var1294_appendAccess/-2076115506 var1861!2 var3122)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r0, i0) 

(declare-const var1861!3 String)
(declare-const var3122!1 Int)
(assert true)
(define-const var2591 Bool (endsWith/985337093 var63 ";")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(";") 
 ; Statement: if $z0 == 0 goto $r16 = r2 
(assert (= (ite var2591 1 0) 0)) ; Cond: $z0 == 0 
(define-const var502 String var63) ; Statement: $r16 = r2 
(assert true) ; Non Conditional
;(assert (var1294_appendDescriptor/-359262046 var1861!3 1 var502)) ; Statement: staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, $r16) 

(declare-const var1861!4 String)
(declare-const var1602 Int)
(declare-const var502!1 String)
(assert true)
(define-const var2659 String (append/-1166366385 var1861!4 32)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1861!5 String)
(assert (str.prefixof var1861!4 var1861!5))
(assert true)
;(assert (append/672562846 var2659 var173)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2659!1 String)
(assert (= var2659!1 (str.++ var2659 var173)))
 ; Statement: if r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n") 
(assert (= var2641 null-var809)) ; Cond: r5 == null 
(assert true)
;(assert (append/672562846 var1861!5 ";\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n") 
(declare-const var1861!6 String)
(assert (= var1861!6 (str.++ var1861!5 ";\n")))
(assert true)
;(assert (addText/1451988652 var739 (cast-from-String-to-var809 var1861!6))) ; Statement: specialinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0) 

(declare-const var739!1 var1294)
(declare-const var1861!7 String)
(assert true)
(define-const var632 var1294 (createNashornTextifier/-1153041222 var739!1)) ; Statement: $r17 = virtualinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier createNashornTextifier()>() 
(assert true)
(define-const var1884 var380 (getText/-142638630 (cast-from-var1294-to-var1757 var632))) ; Statement: $r18 = virtualinvoke $r17.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.List getText()>() 
(assert true)
;(assert (addText/1451988652 var739!1 (cast-from-var380-to-var809 var1884))) ; Statement: specialinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r18) 

(declare-const var739!2 var1294)
(declare-const var1884!1 var380)
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1294_appendAccess/-2076115506=([java.lang.StringBuilder, int], void), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var1294_appendDescriptor/-359262046=([java.lang.StringBuilder, int, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), addText/1451988652=([jdk.nashorn.internal.ir.debug.NashornTextifier, java.lang.Object], void), cast-from-String-to-var809=([java.lang.StringBuilder], java.lang.Object), createNashornTextifier/-1153041222=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.nashorn.internal.ir.debug.NashornTextifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1294-to-var1757=([jdk.nashorn.internal.ir.debug.NashornTextifier], jdk.internal.org.objectweb.asm.util.Printer), cast-from-var380-to-var809=([java.util.List], java.lang.Object)}
; {var1294=jdk.nashorn.internal.ir.debug.NashornTextifier, var739=r6, var3122=i0, var173=r3, var361=null_type, var63=r2, var3316=r1, var809=java.lang.Object, var2641=r5, var1861=$r0, var3813=$i1, var2591=$z0, var502=$r16, var1602=1, var2659=$r4, var632=$r17, var380=java.util.List, var1757=jdk.internal.org.objectweb.asm.util.Printer, var1884=$r18}
; {jdk.nashorn.internal.ir.debug.NashornTextifier=var1294, r6=var739, i0=var3122, r3=var173, null_type=var361, r2=var63, r1=var3316, java.lang.Object=var809, r5=var2641, $r0=var1861, $i1=var3813, $z0=var2591, $r16=var502, 1=var1602, $r4=var2659, $r17=var632, java.util.List=var380, jdk.internal.org.objectweb.asm.util.Printer=var1757, $r18=var1884}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r6 := @this: jdk.nashorn.internal.ir.debug.NashornTextifier;	i0 := @parameter0: int;	r3 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i1 = i0 & 131072;	if $i1 == 0 goto (branch);	if r1 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendAccess(java.lang.StringBuilder,int)>($r0, i0);	$z0 = virtualinvoke r2.<java.lang.String: boolean endsWith(java.lang.String)>(";");	if $z0 == 0 goto $r16 = r2;	$r16 = r2;	staticinvoke <jdk.nashorn.internal.ir.debug.NashornTextifier: void appendDescriptor(java.lang.StringBuilder,int,java.lang.String)>($r0, 1, $r16);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	if r5 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	specialinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r0);	$r17 = virtualinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: jdk.nashorn.internal.ir.debug.NashornTextifier createNashornTextifier()>();	$r18 = virtualinvoke $r17.<jdk.nashorn.internal.ir.debug.NashornTextifier: java.util.List getText()>();	specialinvoke r6.<jdk.nashorn.internal.ir.debug.NashornTextifier: void addText(java.lang.Object)>($r18);	return $r17
;block_num 6