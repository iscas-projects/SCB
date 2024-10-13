(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3881 0)
(declare-sort var821 0)
(declare-sort var228 0)
(declare-sort var2493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var821) String)
(declare-fun cast-from-var3881-to-var821 (var3881) var821)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3881) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var821) var228)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var228_add/328494887 (var228 var2493) Bool)
(declare-fun cast-from-String-to-var2493 (String) var2493)
(declare-const null-var3881 var3881)
(declare-const null-Int Int)
(declare-const var3059 var3881) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var3059 null-var3881)))
(declare-const var632 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var632 null-Int)))
(declare-const var1913 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1913 null-Int)))
(define-const var3589 String (buf/-10557480 (cast-from-var3881-to-var821 var3059))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3589 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3589!1 String)
(declare-const var2659 Int)
(define-const var3190 String (buf/-10557480 (cast-from-var3881-to-var821 var3059))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var854 String (tab2/-788090934 var3059)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2407 String (append/1560614132 var3190 var854)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3190!1 String)
(assert (str.prefixof var3190 var3190!1))
(assert true)
(define-const var337 String (append/1560614132 var2407 "IINC ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("IINC ") 
(declare-const var2407!1 String)
(assert (str.prefixof var2407 var2407!1))
(assert true)
(define-const var3914 String (append/1845021834 var337 var632)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 
(assert true)
(define-const var2640 String (append/1183289509 var3914 32)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
(assert true)
(define-const var2302 String (append/1845021834 var2640 var1913)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 
(assert true)
;(assert (append/1183289509 var2302 10)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var2302!1 String)
(declare-const var1910 Int)
(define-const var1716 var228 (text/-10557480 (cast-from-var3881-to-var821 var3059))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var2192 String (buf/-10557480 (cast-from-var3881-to-var821 var3059))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1186 String (toString/-222306083 var2192)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var228_add/328494887 var1716 (cast-from-String-to-var2493 var1186))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var1716!1 var228)
(declare-const var1186!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3881-to-var821=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var228_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2493=([java.lang.String], java.lang.Object)}
; {var3881=jdk.internal.org.objectweb.asm.util.Textifier, var3059=r0, var632=i0, var1913=i1, var821=jdk.internal.org.objectweb.asm.util.Printer, var3589=$r1, var2659=0, var3190=$r3, var854=$r2, var2407=$r4, var337=$r5, var3914=$r6, var2640=$r7, var2302=$r8, var1910=10, var228=java.util.List, var1716=$r10, var2192=$r9, var1186=$r11, var2493=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3881, r0=var3059, i0=var632, i1=var1913, jdk.internal.org.objectweb.asm.util.Printer=var821, $r1=var3589, 0=var2659, $r3=var3190, $r2=var854, $r4=var2407, $r5=var337, $r6=var3914, $r7=var2640, $r8=var2302, 10=var1910, java.util.List=var228, $r10=var1716, $r9=var2192, $r11=var1186, java.lang.Object=var2493}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("IINC ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 1