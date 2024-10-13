(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3493 0)
(declare-sort var3974 0)
(declare-sort var51 0)
(declare-sort var423 0)
(declare-sort var1457 0)
(declare-sort var580 0)
(declare-sort var821 0)
(declare-sort var1667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var51) String)
(declare-fun cast-from-var3493-to-var51 (var3493) var51)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var3493) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1353022222 (var3974) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun appendDescriptor/199836990 (var3493 Int String) void)
(declare-fun cast-from-var3974-to-var423 (var3974) var423)
(declare-fun var423_textify/-150350258 (var423 String var1457) void)
(declare-fun text/-10557480 (var51) var821)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var821_add/328494887 (var821 var1667) Bool)
(declare-fun cast-from-String-to-var1667 (String) var1667)
(declare-const null-var3493 var3493)
(declare-const null-var3974 var3974)
(declare-const null-var1457 var1457)
(declare-const var2685 var3493) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2685 null-var3493)))
(declare-const var2645 var3974) ; Statement: r5 := @parameter0: jdk.internal.org.objectweb.asm.Attribute 
(assert (not (= var2645 null-var3974)))
(define-const var3457 String (buf/-10557480 (cast-from-var3493-to-var51 var2685))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3457 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3457!1 String)
(declare-const var2681 Int)
(define-const var3160 String (buf/-10557480 (cast-from-var3493-to-var51 var2685))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var157 String (tab/-788090934 var2685)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var710 String (append/1560614132 var3160 var157)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3160!1 String)
(assert (str.prefixof var3160 var3160!1))
(assert true)
;(assert (append/1560614132 var710 "ATTRIBUTE ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("ATTRIBUTE ") 
(declare-const var710!1 String)
(assert (str.prefixof var710 var710!1))
(define-const var1211 String (type/-1353022222 var2645)) ; Statement: $r6 = r5.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type> 
(define-const var3789 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(assert true)
;(assert (appendDescriptor/199836990 var2685 var3789 var1211)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>($i1, $r6) 

(declare-const var2685!1 var3493)
(declare-const var3789!1 Int)
(declare-const var1211!1 String)
(define-const var1646 Bool true) ; Statement: $z0 = r5 instanceof jdk.internal.org.objectweb.asm.util.Textifiable 
 ; Statement: if $z0 == 0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (not (= (ite var1646 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var394 var423 (cast-from-var3974-to-var423 var2645)) ; Statement: $r12 = (jdk.internal.org.objectweb.asm.util.Textifiable) r5 
(define-const var3980 String (buf/-10557480 (cast-from-var3493-to-var51 var2685!1))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
;(assert (var423_textify/-150350258 var394 var3980 null-var1457)) ; Statement: interfaceinvoke $r12.<jdk.internal.org.objectweb.asm.util.Textifiable: void textify(java.lang.StringBuffer,java.util.Map)>($r11, null) 

(declare-const var394!1 var423)
(declare-const var3980!1 String)
(declare-const var468 var580)
 ; Statement: goto [?= $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>] 
(assert true) ; Non Conditional
(define-const var1555 var821 (text/-10557480 (cast-from-var3493-to-var51 var2685!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1840 String (buf/-10557480 (cast-from-var3493-to-var51 var2685!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2967 String (toString/-222306083 var1840)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var821_add/328494887 var1555 (cast-from-String-to-var1667 var2967))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10) 

(declare-const var1555!1 var821)
(declare-const var2967!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3493-to-var51=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), type/-1353022222=([jdk.internal.org.objectweb.asm.Attribute], java.lang.String), cast-from-Int-to-Int=([int], int), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), cast-from-var3974-to-var423=([jdk.internal.org.objectweb.asm.Attribute], jdk.internal.org.objectweb.asm.util.Textifiable), var423_textify/-150350258=([jdk.internal.org.objectweb.asm.util.Textifiable, java.lang.StringBuffer, java.util.Map], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var821_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1667=([java.lang.String], java.lang.Object)}
; {var3493=jdk.internal.org.objectweb.asm.util.Textifier, var2685=r0, var3974=jdk.internal.org.objectweb.asm.Attribute, var2645=r5, var51=jdk.internal.org.objectweb.asm.util.Printer, var3457=$r1, var2681=0, var3160=$r3, var157=$r2, var710=$r4, var1211=$r6, var3789=$i1, var1646=$z0, var423=jdk.internal.org.objectweb.asm.util.Textifiable, var394=$r12, var3980=$r11, var1457=java.util.Map, var468=null, var580=null_type, var821=java.util.List, var1555=$r9, var1840=$r8, var2967=$r10, var1667=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3493, r0=var2685, jdk.internal.org.objectweb.asm.Attribute=var3974, r5=var2645, jdk.internal.org.objectweb.asm.util.Printer=var51, $r1=var3457, 0=var2681, $r3=var3160, $r2=var157, $r4=var710, $r6=var1211, $i1=var3789, $z0=var1646, jdk.internal.org.objectweb.asm.util.Textifiable=var423, $r12=var394, $r11=var3980, java.util.Map=var1457, null=var468, null_type=var580, java.util.List=var821, $r9=var1555, $r8=var1840, $r10=var2967, java.lang.Object=var1667}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: jdk.internal.org.objectweb.asm.Attribute;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("ATTRIBUTE ");	$r6 = r5.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type>;	$i1 = (int) -1;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>($i1, $r6);	$z0 = r5 instanceof jdk.internal.org.objectweb.asm.util.Textifiable;	if $z0 == 0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r12 = (jdk.internal.org.objectweb.asm.util.Textifiable) r5;	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	interfaceinvoke $r12.<jdk.internal.org.objectweb.asm.util.Textifiable: void textify(java.lang.StringBuffer,java.util.Map)>($r11, null);	goto [?= $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>];	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10);	return
;block_num 3