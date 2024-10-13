(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2203 0)
(declare-sort var490 0)
(declare-sort var2757 0)
(declare-sort var1466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var490) String)
(declare-fun cast-from-var2203-to-var490 (var2203) var490)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var2203) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun text/-10557480 (var490) var2757)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2757_add/328494887 (var2757 var1466) Bool)
(declare-fun cast-from-String-to-var1466 (String) var1466)
(declare-const null-var2203 var2203)
(declare-const var568 var2203) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var568 null-var2203)))
(define-const var3375 String (buf/-10557480 (cast-from-var2203-to-var490 var568))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3375 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3375!1 String)
(declare-const var358 Int)
(define-const var3833 String (buf/-10557480 (cast-from-var2203-to-var490 var568))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var3354 String (name/1045876480 var568)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var1478 String (append/1560614132 var3833 var3354)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3833!1 String)
(assert (str.prefixof var3833 var3833!1))
(assert true)
;(assert (append/1560614132 var1478 ".visitEnd();\n")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitEnd();\n") 
(declare-const var1478!1 String)
(assert (str.prefixof var1478 var1478!1))
(define-const var1456 var2757 (text/-10557480 (cast-from-var2203-to-var490 var568))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3750 String (buf/-10557480 (cast-from-var2203-to-var490 var568))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var123 String (toString/-222306083 var3750)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2757_add/328494887 var1456 (cast-from-String-to-var1466 var123))) ; Statement: interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>($r7) 

(declare-const var1456!1 var2757)
(declare-const var123!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var2203-to-var490=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2757_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1466=([java.lang.String], java.lang.Object)}
; {var2203=jdk.internal.org.objectweb.asm.util.ASMifier, var568=r0, var490=jdk.internal.org.objectweb.asm.util.Printer, var3375=$r1, var358=0, var3833=$r3, var3354=$r2, var1478=$r4, var2757=java.util.List, var1456=$r6, var3750=$r5, var123=$r7, var1466=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2203, r0=var568, jdk.internal.org.objectweb.asm.util.Printer=var490, $r1=var3375, 0=var358, $r3=var3833, $r2=var3354, $r4=var1478, java.util.List=var2757, $r6=var1456, $r5=var3750, $r7=var123, java.lang.Object=var1466}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitEnd();\n");	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r5 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r6.<java.util.List: boolean add(java.lang.Object)>($r7);	return
;block_num 1