(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var89 0)
(declare-sort var1297 0)
(declare-sort var2627 0)
(declare-sort var232 0)
(declare-sort var3479 0)
(declare-sort var3773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var232) String)
(declare-fun cast-from-var89-to-var232 (var89) var232)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1045876480 (var89) String)
(declare-fun append/1845021834 (String Int) String)
(declare-fun append/-143899486 (String var3479) String)
(declare-fun cast-from-var2627-to-var3479 (var2627) var3479)
(declare-fun appendConstant/2119113448 (var89 var3479) void)
(declare-fun cast-from-String-to-var3479 (String) var3479)
(declare-fun append/-1166642301 (String Bool) String)
(declare-fun text/-10557480 (var232) var3773)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3773_add/328494887 (var3773 var3479) Bool)
(declare-fun createASMifier/-631099411 (var89 String Int) var89)
(declare-fun getText/-142638630 (var232) var3773)
(declare-fun cast-from-var3773-to-var3479 (var3773) var3479)
(declare-const null-var89 var89)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2627 var2627)
(declare-const null-Bool Bool)
(declare-const var2897 var89) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2897 null-var89)))
(declare-const var3851 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var3851 null-String)))
(declare-const var796 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var796 null-Int)))
(declare-const var2001 var2627) ; Statement: r12 := @parameter2: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var2001 null-var2627)))
(declare-const var999 String) ; Statement: r15 := @parameter3: java.lang.String 
(assert (not (= var999 null-String)))
(declare-const var2863 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var2863 null-Bool)))
(define-const var1602 String (buf/-10557480 (cast-from-var89-to-var232 var2897))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1602 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1602!1 String)
(declare-const var1335 Int)
(define-const var1291 String (buf/-10557480 (cast-from-var89-to-var232 var2897))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2307 String (append/1560614132 var1291 "{\n")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n") 
(declare-const var1291!1 String)
(assert (str.prefixof var1291 var1291!1))
(assert true)
(define-const var3518 String (append/1560614132 var2307 "av0 = ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av0 = ") 
(declare-const var2307!1 String)
(assert (str.prefixof var2307 var2307!1))
(define-const var3680 String (name/1045876480 var2897)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1720 String (append/1560614132 var3518 var3680)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3518!1 String)
(assert (str.prefixof var3518 var3518!1))
(assert true)
(define-const var1377 String (append/1560614132 var1720 ".")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".") 
(declare-const var1720!1 String)
(assert (str.prefixof var1720 var1720!1))
(assert true)
(define-const var2344 String (append/1560614132 var1377 var3851)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r7) 
(declare-const var1377!1 String)
(assert (str.prefixof var1377 var1377!1))
(assert true)
;(assert (append/1560614132 var2344 "(")) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(") 
(declare-const var2344!1 String)
(assert (str.prefixof var2344 var2344!1))
(define-const var2733 String (buf/-10557480 (cast-from-var89-to-var232 var2897))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1845021834 var2733 var796)) ; Statement: virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 

(declare-const var2733!1 String)
(declare-const var796!1 Int)
(define-const var1444 String (buf/-10557480 (cast-from-var89-to-var232 var2897))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2584 String (append/1560614132 var1444 ", TypePath.fromString(\u0022")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", TypePath.fromString(\"") 
(declare-const var1444!1 String)
(assert (str.prefixof var1444 var1444!1))
(assert true)
(define-const var3163 String (append/-143899486 var2584 (cast-from-var2627-to-var3479 var2001))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r12) 
(assert true)
;(assert (append/1560614132 var3163 "\u0022), ")) ; Statement: virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"), ") 
(declare-const var3163!1 String)
(assert (str.prefixof var3163 var3163!1))
(assert true)
;(assert (appendConstant/2119113448 var2897 (cast-from-String-to-var3479 var999))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r15) 

(declare-const var2897!1 var89)
(declare-const var999!1 String)
(define-const var74 String (buf/-10557480 (cast-from-var89-to-var232 var2897!1))) ; Statement: $r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2004 String (append/1560614132 var74 ", ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var74!1 String)
(assert (str.prefixof var74 var74!1))
(assert true)
(define-const var3048 String (append/-1166642301 var2004 var2863)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0) 
(assert true)
;(assert (append/1560614132 var3048 ");\n")) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var3048!1 String)
(assert (str.prefixof var3048 var3048!1))
(define-const var2124 var3773 (text/-10557480 (cast-from-var89-to-var232 var2897!1))) ; Statement: $r20 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3806 String (buf/-10557480 (cast-from-var89-to-var232 var2897!1))) ; Statement: $r19 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1290 String (toString/-222306083 var3806)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3773_add/328494887 var2124 (cast-from-String-to-var3479 var1290))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21) 

(declare-const var2124!1 var3773)
(declare-const var1290!1 String)
(assert true)
(define-const var3994 var89 (createASMifier/-631099411 var2897!1 "av" 0)) ; Statement: r22 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", 0) 
(define-const var911 var3773 (text/-10557480 (cast-from-var89-to-var232 var2897!1))) ; Statement: $r23 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert true)
(define-const var1434 var3773 (getText/-142638630 (cast-from-var89-to-var232 var3994))) ; Statement: $r24 = virtualinvoke r22.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>() 
;(assert (var3773_add/328494887 var911 (cast-from-var3773-to-var3479 var1434))) ; Statement: interfaceinvoke $r23.<java.util.List: boolean add(java.lang.Object)>($r24) 

(declare-const var911!1 var3773)
(declare-const var1434!1 var3773)
(define-const var1395 var3773 (text/-10557480 (cast-from-var89-to-var232 var2897!1))) ; Statement: $r25 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3773_add/328494887 var1395 (cast-from-String-to-var3479 "}\n"))) ; Statement: interfaceinvoke $r25.<java.util.List: boolean add(java.lang.Object)>("}\n") 

(declare-const var1395!1 var3773)
(declare-const var1042 String)
 ; Statement: return r22 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var89-to-var232=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var2627-to-var3479=([jdk.internal.org.objectweb.asm.TypePath], java.lang.Object), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), cast-from-String-to-var3479=([java.lang.String], java.lang.Object), append/-1166642301=([java.lang.StringBuffer, boolean], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3773_add/328494887=([java.util.List, java.lang.Object], boolean), createASMifier/-631099411=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.String, int], jdk.internal.org.objectweb.asm.util.ASMifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var3773-to-var3479=([java.util.List], java.lang.Object)}
; {var89=jdk.internal.org.objectweb.asm.util.ASMifier, var2897=r0, var3851=r7, var1297=null_type, var796=i0, var2627=jdk.internal.org.objectweb.asm.TypePath, var2001=r12, var999=r15, var2863=z0, var232=jdk.internal.org.objectweb.asm.util.Printer, var1602=$r1, var1335=0, var1291=$r2, var2307=$r3, var3518=$r5, var3680=$r4, var1720=$r6, var1377=$r8, var2344=$r9, var2733=$r10, var1444=$r11, var2584=$r13, var3479=java.lang.Object, var3163=$r14, var74=$r16, var2004=$r17, var3048=$r18, var3773=java.util.List, var2124=$r20, var3806=$r19, var1290=$r21, var3994=r22, var911=$r23, var1434=$r24, var1395=$r25, var1042="}\n"}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var89, r0=var2897, r7=var3851, null_type=var1297, i0=var796, jdk.internal.org.objectweb.asm.TypePath=var2627, r12=var2001, r15=var999, z0=var2863, jdk.internal.org.objectweb.asm.util.Printer=var232, $r1=var1602, 0=var1335, $r2=var1291, $r3=var2307, $r5=var3518, $r4=var3680, $r6=var1720, $r8=var1377, $r9=var2344, $r10=var2733, $r11=var1444, $r13=var2584, java.lang.Object=var3479, $r14=var3163, $r16=var74, $r17=var2004, $r18=var3048, java.util.List=var3773, $r20=var2124, $r19=var3806, $r21=var1290, r22=var3994, $r23=var911, $r24=var1434, $r25=var1395, "}\n"=var1042}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 10,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r7 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r12 := @parameter2: jdk.internal.org.objectweb.asm.TypePath;	r15 := @parameter3: java.lang.String;	z0 := @parameter4: boolean;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("{\n");	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("av0 = ");	$r4 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r7);	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("(");	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", TypePath.fromString(\"");	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r12);	virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"), ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r15);	$r16 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r18 = virtualinvoke $r17.<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>(z0);	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r20 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r19 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r21 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>($r21);	r22 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: jdk.internal.org.objectweb.asm.util.ASMifier createASMifier(java.lang.String,int)>("av", 0);	$r23 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r24 = virtualinvoke r22.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List getText()>();	interfaceinvoke $r23.<java.util.List: boolean add(java.lang.Object)>($r24);	$r25 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r25.<java.util.List: boolean add(java.lang.Object)>("}\n");	return r22
;block_num 1