(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3637 0)
(declare-sort var3509 0)
(declare-sort var1503 0)
(declare-sort var3952 0)
(declare-sort var484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1503) String)
(declare-fun cast-from-var3637-to-var1503 (var3637) var1503)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab/-788090934 (var3637) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1353022222 (var3509) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun appendDescriptor/199836990 (var3637 Int String) void)
(declare-fun text/-10557480 (var1503) var3952)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3952_add/328494887 (var3952 var484) Bool)
(declare-fun cast-from-String-to-var484 (String) var484)
(declare-const null-var3637 var3637)
(declare-const null-var3509 var3509)
(declare-const var2852 var3637) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2852 null-var3637)))
(declare-const var2823 var3509) ; Statement: r5 := @parameter0: jdk.internal.org.objectweb.asm.Attribute 
(assert (not (= var2823 null-var3509)))
(define-const var1512 String (buf/-10557480 (cast-from-var3637-to-var1503 var2852))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1512 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1512!1 String)
(declare-const var1027 Int)
(define-const var891 String (buf/-10557480 (cast-from-var3637-to-var1503 var2852))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var3092 String (tab/-788090934 var2852)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab> 
(assert true)
(define-const var3180 String (append/1560614132 var891 var3092)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var891!1 String)
(assert (str.prefixof var891 var891!1))
(assert true)
;(assert (append/1560614132 var3180 "ATTRIBUTE ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("ATTRIBUTE ") 
(declare-const var3180!1 String)
(assert (str.prefixof var3180 var3180!1))
(define-const var3042 String (type/-1353022222 var2823)) ; Statement: $r6 = r5.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type> 
(define-const var2650 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(assert true)
;(assert (appendDescriptor/199836990 var2852 var2650 var3042)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>($i1, $r6) 

(declare-const var2852!1 var3637)
(declare-const var2650!1 Int)
(declare-const var3042!1 String)
(define-const var2723 Bool true) ; Statement: $z0 = r5 instanceof jdk.internal.org.objectweb.asm.util.Textifiable 
 ; Statement: if $z0 == 0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= (ite var2723 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1600 String (buf/-10557480 (cast-from-var3637-to-var1503 var2852!1))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1600 " : unknown\n")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" : unknown\n") 
(declare-const var1600!1 String)
(assert (str.prefixof var1600 var1600!1))
(assert true) ; Non Conditional
(define-const var104 var3952 (text/-10557480 (cast-from-var3637-to-var1503 var2852!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2320 String (buf/-10557480 (cast-from-var3637-to-var1503 var2852!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var583 String (toString/-222306083 var2320)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3952_add/328494887 var104 (cast-from-String-to-var484 var583))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10) 

(declare-const var104!1 var3952)
(declare-const var583!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3637-to-var1503=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), type/-1353022222=([jdk.internal.org.objectweb.asm.Attribute], java.lang.String), cast-from-Int-to-Int=([int], int), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3952_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var484=([java.lang.String], java.lang.Object)}
; {var3637=jdk.internal.org.objectweb.asm.util.Textifier, var2852=r0, var3509=jdk.internal.org.objectweb.asm.Attribute, var2823=r5, var1503=jdk.internal.org.objectweb.asm.util.Printer, var1512=$r1, var1027=0, var891=$r3, var3092=$r2, var3180=$r4, var3042=$r6, var2650=$i1, var2723=$z0, var1600=$r7, var3952=java.util.List, var104=$r9, var2320=$r8, var583=$r10, var484=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3637, r0=var2852, jdk.internal.org.objectweb.asm.Attribute=var3509, r5=var2823, jdk.internal.org.objectweb.asm.util.Printer=var1503, $r1=var1512, 0=var1027, $r3=var891, $r2=var3092, $r4=var3180, $r6=var3042, $i1=var2650, $z0=var2723, $r7=var1600, java.util.List=var3952, $r9=var104, $r8=var2320, $r10=var583, java.lang.Object=var484}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r5 := @parameter0: jdk.internal.org.objectweb.asm.Attribute;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("ATTRIBUTE ");	$r6 = r5.<jdk.internal.org.objectweb.asm.Attribute: java.lang.String type>;	$i1 = (int) -1;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>($i1, $r6);	$z0 = r5 instanceof jdk.internal.org.objectweb.asm.util.Textifiable;	if $z0 == 0 goto $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" : unknown\n");	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r8 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10);	return
;block_num 3