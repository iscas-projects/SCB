(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1408 0)
(declare-sort var662 0)
(declare-sort var2571 0)
(declare-sort var381 0)
(declare-sort var2073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2571) String)
(declare-fun cast-from-var1408-to-var2571 (var1408) var2571)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var1408) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/867888050 (var1408 Int) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var2571) var381)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var381_add/328494887 (var381 var2073) Bool)
(declare-fun cast-from-String-to-var2073 (String) var2073)
(declare-const null-var1408 var1408)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var355 var1408) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var355 null-var1408)))
(declare-const var3511 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3511 null-String)))
(declare-const var1227 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1227 null-Int)))
(define-const var1366 String (buf/-10557480 (cast-from-var1408-to-var2571 var355))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1366 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1366!1 String)
(declare-const var1323 Int)
(define-const var200 String (buf/-10557480 (cast-from-var1408-to-var2571 var355))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var2661 String (tab2/-788090934 var355)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var1909 String (append/1560614132 var200 var2661)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var200!1 String)
(assert (str.prefixof var200 var200!1))
(assert true)
;(assert (append/1560614132 var1909 "// parameter ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// parameter ") 
(declare-const var1909!1 String)
(assert (str.prefixof var1909 var1909!1))
(assert true)
;(assert (appendAccess/867888050 var355 var1227)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>(i0) 

(declare-const var355!1 var1408)
(declare-const var1227!1 Int)
(define-const var1987 String (buf/-10557480 (cast-from-var1408-to-var2571 var355!1))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1364 String (append/1183289509 var1987 32)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
 ; Statement: if r6 != null goto $r12 = r6 
(assert (not (= var3511 null-String))) ; Cond: r6 != null 
(define-const var148 String var3511) ; Statement: $r12 = r6 
(assert true) ; Non Conditional
(assert true)
(define-const var3641 String (append/1560614132 var1364 var148)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12) 
(declare-const var1364!1 String)
(assert (str.prefixof var1364 var1364!1))
(assert true)
;(assert (append/1183289509 var3641 10)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3641!1 String)
(declare-const var2545 Int)
(define-const var2435 var381 (text/-10557480 (cast-from-var1408-to-var2571 var355!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3748 String (buf/-10557480 (cast-from-var1408-to-var2571 var355!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3680 String (toString/-222306083 var3748)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var381_add/328494887 var2435 (cast-from-String-to-var2073 var3680))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var2435!1 var381)
(declare-const var3680!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var1408-to-var2571=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/867888050=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var381_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2073=([java.lang.String], java.lang.Object)}
; {var1408=jdk.internal.org.objectweb.asm.util.Textifier, var355=r0, var3511=r6, var662=null_type, var1227=i0, var2571=jdk.internal.org.objectweb.asm.util.Printer, var1366=$r1, var1323=0, var200=$r3, var2661=$r2, var1909=$r4, var1987=$r5, var1364=$r7, var148=$r12, var3641=$r8, var2545=10, var381=java.util.List, var2435=$r10, var3748=$r9, var3680=$r11, var2073=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var1408, r0=var355, r6=var3511, null_type=var662, i0=var1227, jdk.internal.org.objectweb.asm.util.Printer=var2571, $r1=var1366, 0=var1323, $r3=var200, $r2=var2661, $r4=var1909, $r5=var1987, $r7=var1364, $r12=var148, $r8=var3641, 10=var2545, java.util.List=var381, $r10=var2435, $r9=var3748, $r11=var3680, java.lang.Object=var2073}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r6 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// parameter ");	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>(i0);	$r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	if r6 != null goto $r12 = r6;	$r12 = r6;	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 3