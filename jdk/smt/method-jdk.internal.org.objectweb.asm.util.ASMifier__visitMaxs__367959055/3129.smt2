(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var417 0)
(declare-sort var2079 0)
(declare-sort var1007 0)
(declare-sort var877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2079) String)
(declare-fun cast-from-var417-to-var2079 (var417) var2079)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun name/1045876480 (var417) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun text/-10557480 (var2079) var1007)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1007_add/328494887 (var1007 var877) Bool)
(declare-fun cast-from-String-to-var877 (String) var877)
(declare-const null-var417 var417)
(declare-const null-Int Int)
(declare-const var451 var417) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var451 null-var417)))
(declare-const var2226 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2226 null-Int)))
(declare-const var1709 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1709 null-Int)))
(define-const var749 String (buf/-10557480 (cast-from-var417-to-var2079 var451))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var749 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var749!1 String)
(declare-const var1324 Int)
(define-const var3696 String (buf/-10557480 (cast-from-var417-to-var2079 var451))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(define-const var1881 String (name/1045876480 var451)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name> 
(assert true)
(define-const var373 String (append/1560614132 var3696 var1881)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3696!1 String)
(assert (str.prefixof var3696 var3696!1))
(assert true)
(define-const var985 String (append/1560614132 var373 ".visitMaxs(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitMaxs(") 
(declare-const var373!1 String)
(assert (str.prefixof var373 var373!1))
(assert true)
(define-const var3060 String (append/1845021834 var985 var2226)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
(define-const var1129 String (append/1560614132 var3060 ", ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3060!1 String)
(assert (str.prefixof var3060 var3060!1))
(assert true)
(define-const var3822 String (append/1845021834 var1129 var1709)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
;(assert (append/1560614132 var3822 ");\n")) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n") 
(declare-const var3822!1 String)
(assert (str.prefixof var3822 var3822!1))
(define-const var214 var1007 (text/-10557480 (cast-from-var417-to-var2079 var451))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2658 String (buf/-10557480 (cast-from-var417-to-var2079 var451))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2892 String (toString/-222306083 var2658)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1007_add/328494887 var214 (cast-from-String-to-var877 var2892))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var214!1 var1007)
(declare-const var2892!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var417-to-var2079=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), name/1045876480=([jdk.internal.org.objectweb.asm.util.ASMifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1007_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var877=([java.lang.String], java.lang.Object)}
; {var417=jdk.internal.org.objectweb.asm.util.ASMifier, var451=r0, var2226=i0, var1709=i1, var2079=jdk.internal.org.objectweb.asm.util.Printer, var749=$r1, var1324=0, var3696=$r3, var1881=$r2, var373=$r4, var985=$r5, var3060=$r6, var1129=$r7, var3822=$r8, var1007=java.util.List, var214=$r10, var2658=$r9, var2892=$r11, var877=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var417, r0=var451, i0=var2226, i1=var1709, jdk.internal.org.objectweb.asm.util.Printer=var2079, $r1=var749, 0=var1324, $r3=var3696, $r2=var1881, $r4=var373, $r5=var985, $r6=var3060, $r7=var1129, $r8=var3822, java.util.List=var1007, $r10=var214, $r9=var2658, $r11=var2892, java.lang.Object=var877}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".visitMaxs(");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n");	$r10 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1