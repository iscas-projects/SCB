(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var313 0)
(declare-sort var3082 0)
(declare-sort var2025 0)
(declare-sort var3232 0)
(declare-sort var1583 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2025) String)
(declare-fun cast-from-var313-to-var2025 (var313) var2025)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1353022222 (var3082) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var2025) var3232)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3232_add/328494887 (var3232 var1583) Bool)
(declare-fun cast-from-String-to-var1583 (String) var1583)
(declare-const null-var313 var313)
(declare-const null-var3082 var3082)
(declare-const var3677 var313) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3677 null-var313)))
(declare-const var65 var3082) ; Statement: r3 := @parameter0: jdk.internal.org.objectweb.asm.Attribute 
(assert (not (= var65 null-var3082)))
(define-const var1627 String (buf/-10557480 (cast-from-var313-to-var2025 var3677))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1627 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1627!1 String)
(declare-const var2625 Int)
(define-const var693 String (buf/-10557480 (cast-from-var313-to-var2025 var3677))) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1068 String (append/1560614132 var693 "// ATTRIBUTE ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// ATTRIBUTE ") 
(declare-const var693!1 String)
(assert (str.prefixof var693 var693!1))
(define-const var1616 String (type/-1353022222 var65)) ; Statement: $r4 = r3.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type> 
(assert true)
(define-const var3215 String (append/1560614132 var1068 var1616)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var1068!1 String)
(assert (str.prefixof var1068 var1068!1))
(assert true)
;(assert (append/1183289509 var3215 10)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3215!1 String)
(declare-const var2313 Int)
(define-const var3349 Bool true) ; Statement: $z0 = r3 instanceof jdk.internal.org.objectweb.asm.util.ASMifiable 
 ; Statement: if $z0 == 0 goto $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert (= (ite var3349 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3441 var3232 (text/-10557480 (cast-from-var313-to-var2025 var3677))) ; Statement: $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2505 String (buf/-10557480 (cast-from-var313-to-var2025 var3677))) ; Statement: $r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3154 String (toString/-222306083 var2505)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3232_add/328494887 var3441 (cast-from-String-to-var1583 var3154))) ; Statement: interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r19) 

(declare-const var3441!1 var3232)
(declare-const var3154!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var313-to-var2025=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), type/-1353022222=([jdk.internal.org.objectweb.asm.Attribute], java.lang.String), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3232_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1583=([java.lang.String], java.lang.Object)}
; {var313=jdk.internal.org.objectweb.asm.util.ASMifier, var3677=r0, var3082=jdk.internal.org.objectweb.asm.Attribute, var65=r3, var2025=jdk.internal.org.objectweb.asm.util.Printer, var1627=$r1, var2625=0, var693=$r2, var1068=$r5, var1616=$r4, var3215=$r6, var2313=10, var3349=$z0, var3232=java.util.List, var3441=$r17, var2505=$r18, var3154=$r19, var1583=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var313, r0=var3677, jdk.internal.org.objectweb.asm.Attribute=var3082, r3=var65, jdk.internal.org.objectweb.asm.util.Printer=var2025, $r1=var1627, 0=var2625, $r2=var693, $r5=var1068, $r4=var1616, $r6=var3215, 10=var2313, $z0=var3349, java.util.List=var3232, $r17=var3441, $r18=var2505, $r19=var3154, java.lang.Object=var1583}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r3 := @parameter0: jdk.internal.org.objectweb.asm.Attribute;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r5 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// ATTRIBUTE ");	$r4 = r3.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$z0 = r3 instanceof jdk.internal.org.objectweb.asm.util.ASMifiable;	if $z0 == 0 goto $r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r17 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r18 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r17.<java.util.List: boolean add(java.lang.Object)>($r19);	return
;block_num 2