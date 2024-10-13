(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3662 0)
(declare-sort var1967 0)
(declare-sort var3789 0)
(declare-sort var235 0)
(declare-sort var3143 0)
(declare-sort var2889 0)
(declare-sort var2437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3789) String)
(declare-fun cast-from-var3662-to-var3789 (var3662) var3789)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var3662) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1353022222 (var1967) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun appendDescriptor/199836990 (var3662 Int String) void)
(declare-fun cast-from-var1967-to-var235 (var1967) var235)
(declare-fun labelNames/-788090934 (var3662) var3143)
(declare-fun var235_textify/-150350258 (var235 String var3143) void)
(declare-fun text/-10557480 (var3789) var2889)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2889_add/328494887 (var2889 var2437) Bool)
(declare-fun cast-from-String-to-var2437 (String) var2437)
(declare-const null-var3662 var3662)
(declare-const null-var1967 var1967)
(declare-const var3171 var3662) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3171 null-var3662)))
(declare-const var594 var1967) ; Statement: r5 := @parameter0: jdk.internal.org.objectweb.asm.Attribute 
(assert (not (= var594 null-var1967)))
(define-const var2008 String (buf/-10557480 (cast-from-var3662-to-var3789 var3171))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2008 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2008!1 String)
(declare-const var3835 Int)
(define-const var2451 String (buf/-10557480 (cast-from-var3662-to-var3789 var3171))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1041 String (tab/-788090934 var3171)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var1844 String (append/1560614132 var2451 var1041)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2451!1 String)
(assert (str.prefixof var2451 var2451!1))
(assert true)
;(assert (append/1560614132 var1844 "ATTRIBUTE ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("ATTRIBUTE ") 
(declare-const var1844!1 String)
(assert (str.prefixof var1844 var1844!1))
(define-const var2179 String (type/-1353022222 var594)) ; Statement: $r6 = r5.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type> 
(define-const var1304 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(assert true)
;(assert (appendDescriptor/199836990 var3171 var1304 var2179)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>($i1, $r6) 

(declare-const var3171!1 var3662)
(declare-const var1304!1 Int)
(declare-const var2179!1 String)
(define-const var2056 Bool true) ; Statement: $z0 = r5 instanceof jdk.internal.org.objectweb.asm.util.Textifiable 
 ; Statement: if $z0 == 0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (not (= (ite var2056 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1059 var235 (cast-from-var1967-to-var235 var594)) ; Statement: $r13 = (jdk.internal.org.objectweb.asm.util.Textifiable) r5 
(define-const var1699 String (buf/-10557480 (cast-from-var3662-to-var3789 var3171!1))) ; Statement: $r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var177 var3143 (labelNames/-788090934 var3171!1)) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.Map labelNames> 
;(assert (var235_textify/-150350258 var1059 var1699 var177)) ; Statement: interfaceinvoke $r13.<jdk.internal.org.objectweb.asm.util.Textifiable: void textify(java.lang.StringBuffer,java.util.Map)>($r12, $r11) 

(declare-const var1059!1 var235)
(declare-const var1699!1 String)
(declare-const var177!1 var3143)
 ; Statement: goto [?= $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>] 
(assert true) ; Non Conditional
(define-const var1504 var2889 (text/-10557480 (cast-from-var3662-to-var3789 var3171!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3092 String (buf/-10557480 (cast-from-var3662-to-var3789 var3171!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2875 String (toString/-222306083 var3092)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2889_add/328494887 var1504 (cast-from-String-to-var2437 var2875))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10) 

(declare-const var1504!1 var2889)
(declare-const var2875!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3662-to-var3789=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), type/-1353022222=([jdk.internal.org.objectweb.asm.Attribute], java.lang.String), cast-from-Int-to-Int=([int], int), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), cast-from-var1967-to-var235=([jdk.internal.org.objectweb.asm.Attribute], jdk.internal.org.objectweb.asm.util.Textifiable), labelNames/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.util.Map), var235_textify/-150350258=([jdk.internal.org.objectweb.asm.util.Textifiable, java.lang.StringBuffer, java.util.Map], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2889_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2437=([java.lang.String], java.lang.Object)}
; {var3662=jdk.internal.org.objectweb.asm.util.Textifier, var3171=r0, var1967=jdk.internal.org.objectweb.asm.Attribute, var594=r5, var3789=jdk.internal.org.objectweb.asm.util.Printer, var2008=$r1, var3835=0, var2451=$r3, var1041=$r2, var1844=$r4, var2179=$r6, var1304=$i1, var2056=$z0, var235=jdk.internal.org.objectweb.asm.util.Textifiable, var1059=$r13, var1699=$r12, var3143=java.util.Map, var177=$r11, var2889=java.util.List, var1504=$r9, var3092=$r8, var2875=$r10, var2437=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3662, r0=var3171, jdk.internal.org.objectweb.asm.Attribute=var1967, r5=var594, jdk.internal.org.objectweb.asm.util.Printer=var3789, $r1=var2008, 0=var3835, $r3=var2451, $r2=var1041, $r4=var1844, $r6=var2179, $i1=var1304, $z0=var2056, jdk.internal.org.objectweb.asm.util.Textifiable=var235, $r13=var1059, $r12=var1699, java.util.Map=var3143, $r11=var177, java.util.List=var2889, $r9=var1504, $r8=var3092, $r10=var2875, java.lang.Object=var2437}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: jdk.internal.org.objectweb.asm.Attribute;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("ATTRIBUTE ");	$r6 = r5.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type>;	$i1 = (int) -1;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>($i1, $r6);	$z0 = r5 instanceof jdk.internal.org.objectweb.asm.util.Textifiable;	if $z0 == 0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r13 = (jdk.internal.org.objectweb.asm.util.Textifiable) r5;	$r12 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.Map labelNames>;	interfaceinvoke $r13.<jdk.internal.org.objectweb.asm.util.Textifiable: void textify(java.lang.StringBuffer,java.util.Map)>($r12, $r11);	goto [?= $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>];	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10);	return
;block_num 3