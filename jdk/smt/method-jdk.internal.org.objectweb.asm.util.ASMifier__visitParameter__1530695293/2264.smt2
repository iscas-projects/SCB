(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var845 0)
(declare-sort var2985 0)
(declare-sort var3364 0)
(declare-sort var3944 0)
(declare-sort var2298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3364) String)
(declare-fun cast-from-var845-to-var3364 (var845) var3364)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var845) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3364_appendString/1146634190 (String String) void)
(declare-fun appendAccess/732682052 (var845 Int) void)
(declare-fun text/-10557480 (var3364) var3944)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3944_add/328494887 (var3944 var2298) Bool)
(declare-fun cast-from-String-to-var2298 (String) var2298)
(declare-const null-var845 var845)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1603 var845) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1603 null-var845)))
(declare-const var3012 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3012 null-String)))
(declare-const var2615 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2615 null-Int)))
(define-const var413 String (buf/-10557480 (cast-from-var845-to-var3364 var1603))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var413 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var413!1 String)
(declare-const var1769 Int)
(define-const var106 String (buf/-10557480 (cast-from-var845-to-var3364 var1603))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var1898 String (name/1045876480 var1603)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var2146 String (append/1560614132 var106 var1898)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var106!1 String)
(assert (str.prefixof var106 var106!1))
(assert true)
;(assert (append/1560614132 var2146 ".visitParameter(")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitParameter(") 
(declare-const var2146!1 String)
(assert (str.prefixof var2146 var2146!1))
(define-const var3726 String (buf/-10557480 (cast-from-var845-to-var3364 var1603))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
;(assert (var3364_appendString/1146634190 var3726 var3012)) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendString(java.lang.StringBuffer,java.lang.String)>($r6, r5) 

(declare-const var3726!1 String)
(declare-const var3012!1 String)
(define-const var373 String (buf/-10557480 (cast-from-var845-to-var3364 var1603))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var373 ", ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var373!1 String)
(assert (str.prefixof var373 var373!1))
(assert true)
;(assert (appendAccess/732682052 var1603 var2615)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>(i0) 

(declare-const var1603!1 var845)
(declare-const var2615!1 Int)
(define-const var1158 var3944 (text/-10557480 (cast-from-var845-to-var3364 var1603!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var218 String (buf/-10557480 (cast-from-var845-to-var3364 var1603!1))) ; Statement: $r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2594 String (append/1560614132 var218 ");\n")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var218!1 String)
(assert (str.prefixof var218 var218!1))
(assert true)
(define-const var335 String (toString/-222306083 var2594)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3944_add/328494887 var1158 (cast-from-String-to-var2298 var335))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var1158!1 var3944)
(declare-const var335!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var845-to-var3364=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var3364_appendString/1146634190=([java.lang.StringBuffer, java.lang.String], void), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3944_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2298=([java.lang.String], java.lang.Object)}
; {var845=jdk.internal.org.objectweb.asm.util.ASMifier, var1603=r0, var3012=r5, var2985=null_type, var2615=i0, var3364=jdk.internal.org.objectweb.asm.util.Printer, var413=$r1, var1769=0, var106=$r3, var1898=$r2, var2146=$r4, var3726=$r6, var373=$r7, var3944=java.util.List, var1158=$r9, var218=$r8, var2594=$r10, var335=$r11, var2298=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var845, r0=var1603, r5=var3012, null_type=var2985, i0=var2615, jdk.internal.org.objectweb.asm.util.Printer=var3364, $r1=var413, 0=var1769, $r3=var106, $r2=var1898, $r4=var2146, $r6=var3726, $r7=var373, java.util.List=var3944, $r9=var1158, $r8=var218, $r10=var2594, $r11=var335, java.lang.Object=var2298}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	r5 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitParameter(");	$r6 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	staticinvoke <jdk.internal.org.objectweb.asm.util.ASMifier: void appendString(java.lang.StringBuffer,java.lang.String)>($r6, r5);	$r7 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>(i0);	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r8 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1