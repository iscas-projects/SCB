(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3655 0)
(declare-sort var2671 0)
(declare-sort var1390 0)
(declare-sort var2162 0)
(declare-sort var305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var1390) String)
(declare-fun cast-from-var3655-to-var1390 (var3655) var1390)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun tab2/-788090934 (var3655) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/867888050 (var3655 Int) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun text/-10557480 (var1390) var2162)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2162_add/328494887 (var2162 var305) Bool)
(declare-fun cast-from-String-to-var305 (String) var305)
(declare-const null-var3655 var3655)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var272 var3655) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var272 null-var3655)))
(declare-const var3314 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var3314 null-String)))
(declare-const var924 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var924 null-Int)))
(define-const var1739 String (buf/-10557480 (cast-from-var3655-to-var1390 var272))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1739 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1739!1 String)
(declare-const var2694 Int)
(define-const var2650 String (buf/-10557480 (cast-from-var3655-to-var1390 var272))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(define-const var1154 String (tab2/-788090934 var272)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2> 
(assert true)
(define-const var2872 String (append/1560614132 var2650 var1154)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2650!1 String)
(assert (str.prefixof var2650 var2650!1))
(assert true)
;(assert (append/1560614132 var2872 "// parameter ")) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// parameter ") 
(declare-const var2872!1 String)
(assert (str.prefixof var2872 var2872!1))
(assert true)
;(assert (appendAccess/867888050 var272 var924)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>(i0) 

(declare-const var272!1 var3655)
(declare-const var924!1 Int)
(define-const var850 String (buf/-10557480 (cast-from-var3655-to-var1390 var272!1))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var759 String (append/1183289509 var850 32)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32) 
 ; Statement: if r6 != null goto $r12 = r6 
(assert (not (not (= var3314 null-String)))) ; Negate: Cond: r6 != null  
(define-const var1930 String "<no name>") ; Statement: $r12 = "<no name>" 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3689 String (append/1560614132 var759 var1930)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12) 
(declare-const var759!1 String)
(assert (str.prefixof var759 var759!1))
(assert true)
;(assert (append/1183289509 var3689 10)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10) 

(declare-const var3689!1 String)
(declare-const var1181 Int)
(define-const var941 var2162 (text/-10557480 (cast-from-var3655-to-var1390 var272!1))) ; Statement: $r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var3188 String (buf/-10557480 (cast-from-var3655-to-var1390 var272!1))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3105 String (toString/-222306083 var3188)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2162_add/328494887 var941 (cast-from-String-to-var305 var3105))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var941!1 var2162)
(declare-const var3105!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var3655-to-var1390=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), tab2/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/867888050=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2162_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var305=([java.lang.String], java.lang.Object)}
; {var3655=jdk.internal.org.objectweb.asm.util.Textifier, var272=r0, var3314=r6, var2671=null_type, var924=i0, var1390=jdk.internal.org.objectweb.asm.util.Printer, var1739=$r1, var2694=0, var2650=$r3, var1154=$r2, var2872=$r4, var850=$r5, var759=$r7, var1930=$r12, var3689=$r8, var1181=10, var2162=java.util.List, var941=$r10, var3188=$r9, var3105=$r11, var305=java.lang.Object}
; {jdk.internal.org.objectweb.asm.util.Textifier=var3655, r0=var272, r6=var3314, null_type=var2671, i0=var924, jdk.internal.org.objectweb.asm.util.Printer=var1390, $r1=var1739, 0=var2694, $r3=var2650, $r2=var1154, $r4=var2872, $r5=var850, $r7=var759, $r12=var1930, $r8=var3689, 10=var1181, java.util.List=var2162, $r10=var941, $r9=var3188, $r11=var3105, java.lang.Object=var305}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r6 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r2 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.String tab2>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("// parameter ");	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendAccess(int)>(i0);	$r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(32);	if r6 != null goto $r12 = r6;	$r12 = "<no name>";	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12)];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(10);	$r10 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r11 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>($r11);	return
;block_num 3