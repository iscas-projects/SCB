(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var541 0)
(declare-sort var1758 0)
(declare-sort var526 0)
(declare-sort var3361 0)
(declare-sort var2052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var526) String)
(declare-fun cast-from-var541-to-var526 (var541) var526)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var541) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1353022222 (var1758) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun appendDescriptor/199836990 (var541 Int String) void)
(declare-fun text/-10557480 (var526) var3361)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3361_add/328494887 (var3361 var2052) Bool)
(declare-fun cast-from-String-to-var2052 (String) var2052)
(declare-const null-var541 var541)
(declare-const null-var1758 var1758)
(declare-const var997 var541) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var997 null-var541)))
(declare-const var2971 var1758) ; Statement: r5 := @parameter0: jdk.internal.org.objectweb.asm.Attribute 
(assert (not (= var2971 null-var1758)))
(define-const var3469 String (buf/-10557480 (cast-from-var541-to-var526 var997))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3469 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3469!1 String)
(declare-const var2507 Int)
(define-const var3439 String (buf/-10557480 (cast-from-var541-to-var526 var997))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1754 String (tab/-788090934 var997)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var929 String (append/1560614132 var3439 var1754)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3439!1 String)
(assert (str.prefixof var3439 var3439!1))
(assert true)
;(assert (append/1560614132 var929 "ATTRIBUTE ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("ATTRIBUTE ") 
(declare-const var929!1 String)
(assert (str.prefixof var929 var929!1))
(define-const var1727 String (type/-1353022222 var2971)) ; Statement: $r6 = r5.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type> 
(define-const var1507 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(assert true)
;(assert (appendDescriptor/199836990 var997 var1507 var1727)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>($i1, $r6) 

(declare-const var997!1 var541)
(declare-const var1507!1 Int)
(declare-const var1727!1 String)
(define-const var2194 Bool true) ; Statement: $z0 = r5 instanceof jdk.internal.org.objectweb.asm.util.Textifiable 
 ; Statement: if $z0 == 0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= (ite var2194 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3722 String (buf/-10557480 (cast-from-var541-to-var526 var997!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3722 " : unknown\n")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" : unknown\n") 
(declare-const var3722!1 String)
(assert (str.prefixof var3722 var3722!1))
(assert true) ; Non Conditional
(define-const var3955 var3361 (text/-10557480 (cast-from-var541-to-var526 var997!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1710 String (buf/-10557480 (cast-from-var541-to-var526 var997!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3829 String (toString/-222306083 var1710)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3361_add/328494887 var3955 (cast-from-String-to-var2052 var3829))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10) 

(declare-const var3955!1 var3361)
(declare-const var3829!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var541-to-var526=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), type/-1353022222=([jdk.internal.org.objectweb.asm.Attribute], java.lang.String), cast-from-Int-to-Int=([int], int), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3361_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2052=([java.lang.String], java.lang.Object)}
; {var541=jdk.internal.org.objectweb.asm.util.Textifier, var997=r0, var1758=jdk.internal.org.objectweb.asm.Attribute, var2971=r5, var526=jdk.internal.org.objectweb.asm.util.Printer, var3469=$r1, var2507=0, var3439=$r3, var1754=$r2, var929=$r4, var1727=$r6, var1507=$i1, var2194=$z0, var3722=$r7, var3361=java.util.List, var3955=$r9, var1710=$r8, var3829=$r10, var2052=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var541, r0=var997, jdk.internal.org.objectweb.asm.Attribute=var1758, r5=var2971, jdk.internal.org.objectweb.asm.util.Printer=var526, $r1=var3469, 0=var2507, $r3=var3439, $r2=var1754, $r4=var929, $r6=var1727, $i1=var1507, $z0=var2194, $r7=var3722, java.util.List=var3361, $r9=var3955, $r8=var1710, $r10=var3829, java.lang.Object=var2052}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: jdk.internal.org.objectweb.asm.Attribute;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("ATTRIBUTE ");	$r6 = r5.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type>;	$i1 = (int) -1;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>($i1, $r6);	$z0 = r5 instanceof jdk.internal.org.objectweb.asm.util.Textifiable;	if $z0 == 0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" : unknown\n");	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10);	return
;block_num 3