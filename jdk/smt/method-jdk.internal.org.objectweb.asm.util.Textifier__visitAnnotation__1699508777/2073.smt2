(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var702 0)
(declare-sort var2219 0)
(declare-sort var2003 0)
(declare-sort var1326 0)
(declare-sort var3626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var2003) String)
(declare-fun cast-from-var702-to-var2003 (var702) var2003)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun valueNumber/-788090934 (var702) Int)
(declare-fun appendComa/-337716018 (var702 Int) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun appendDescriptor/199836990 (var702 Int String) void)
(declare-fun text/-10557480 (var2003) var1326)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1326_add/328494887 (var1326 var3626) Bool)
(declare-fun cast-from-String-to-var3626 (String) var3626)
(declare-fun createTextifier/-1341636553 (var702) var702)
(declare-fun getText/-142638630 (var2003) var1326)
(declare-fun cast-from-var1326-to-var3626 (var1326) var3626)
(declare-const null-var702 var702)
(declare-const null-String String)
(declare-const var2095 var702) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var2095 null-var702)))
(declare-const var1549 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1549 null-String)))
(declare-const var1822 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1822 null-String)))
(define-const var2274 String (buf/-10557480 (cast-from-var702-to-var2003 var2095))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var2274 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2274!1 String)
(declare-const var3629 Int)
(define-const var2394 Int (valueNumber/-788090934 var2095)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> 
(define-const var1898 Int (+ var2394 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var2095!1 var702)
(assert (not (= var2095!1 null-var702)))
(assert (= (valueNumber/-788090934 var2095!1) var1898)) ; Statement: r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> = $i1 
(assert true)
;(assert (appendComa/-337716018 var2095!1 var2394)) ; Statement: specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendComa(int)>($i0) 

(declare-const var2095!2 var702)
(declare-const var2394!1 Int)
 ; Statement: if r2 == null goto $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var1549 null-String)) ; Cond: r2 == null 
(define-const var3248 String (buf/-10557480 (cast-from-var702-to-var2003 var2095!2))) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var3248 64)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64) 

(declare-const var3248!1 String)
(declare-const var3374 Int)
(assert true)
;(assert (appendDescriptor/199836990 var2095!2 1 var1822)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r4) 

(declare-const var2095!3 var702)
(declare-const var3756 Int)
(declare-const var1822!1 String)
(define-const var141 String (buf/-10557480 (cast-from-var702-to-var2003 var2095!3))) ; Statement: $r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1183289509 var141 40)) ; Statement: virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40) 

(declare-const var141!1 String)
(declare-const var30 Int)
(define-const var3147 var1326 (text/-10557480 (cast-from-var702-to-var2003 var2095!3))) ; Statement: $r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(define-const var1953 String (buf/-10557480 (cast-from-var702-to-var2003 var2095!3))) ; Statement: $r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2534 String (toString/-222306083 var1953)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1326_add/328494887 var3147 (cast-from-String-to-var3626 var2534))) ; Statement: interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r8) 

(declare-const var3147!1 var1326)
(declare-const var2534!1 String)
(assert true)
(define-const var502 var702 (createTextifier/-1341636553 var2095!3)) ; Statement: $r14 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>() 
(define-const var175 var1326 (text/-10557480 (cast-from-var702-to-var2003 var2095!3))) ; Statement: $r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
(assert true)
(define-const var2345 var1326 (getText/-142638630 (cast-from-var702-to-var2003 var502))) ; Statement: $r10 = virtualinvoke $r14.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>() 
;(assert (var1326_add/328494887 var175 (cast-from-var1326-to-var3626 var2345))) ; Statement: interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10) 

(declare-const var175!1 var1326)
(declare-const var2345!1 var1326)
(define-const var763 var1326 (text/-10557480 (cast-from-var702-to-var2003 var2095!3))) ; Statement: $r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text> 
;(assert (var1326_add/328494887 var763 (cast-from-String-to-var3626 ")"))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>(")") 

(declare-const var763!1 var1326)
(declare-const var2337 String)
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var702-to-var2003=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), valueNumber/-788090934=([jdk.internal.org.objectweb.asm.util.Textifier], int), appendComa/-337716018=([jdk.internal.org.objectweb.asm.util.Textifier, int], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), appendDescriptor/199836990=([jdk.internal.org.objectweb.asm.util.Textifier, int, java.lang.String], void), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1326_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3626=([java.lang.String], java.lang.Object), createTextifier/-1341636553=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Textifier), getText/-142638630=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1326-to-var3626=([java.util.List], java.lang.Object)}
; {var702=jdk.internal.org.objectweb.asm.util.Textifier, var2095=r0, var1549=r2, var2219=null_type, var1822=r4, var2003=jdk.internal.org.objectweb.asm.util.Printer, var2274=$r1, var3629=0, var2394=$i0, var1898=$i1, var3248=$r3, var3374=64, var3756=1, var141=$r5, var30=40, var1326=java.util.List, var3147=$r7, var1953=$r6, var2534=$r8, var3626=java.lang.Object, var502=$r14, var175=$r9, var2345=$r10, var763=$r11, var2337=")"}
; {jdk.internal.org.objectweb.asm.util.Textifier=var702, r0=var2095, r2=var1549, null_type=var2219, r4=var1822, jdk.internal.org.objectweb.asm.util.Printer=var2003, $r1=var2274, 0=var3629, $i0=var2394, $i1=var1898, $r3=var3248, 64=var3374, 1=var3756, $r5=var141, 40=var30, java.util.List=var1326, $r7=var3147, $r6=var1953, $r8=var2534, java.lang.Object=var3626, $r14=var502, $r9=var175, $r10=var2345, $r11=var763, ")"=var2337}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$i0 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber>;	$i1 = $i0 + 1;	r0.<jdk.internal.org.objectweb.asm.util.Textifier: int valueNumber> = $i1;	specialinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendComa(int)>($i0);	if r2 == null goto $r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r3 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64);	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: void appendDescriptor(int,java.lang.String)>(1, r4);	$r5 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(40);	$r7 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r6 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r7.<java.util.List: boolean add(java.lang.Object)>($r8);	$r14 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.Textifier: jdk.internal.org.objectweb.asm.util.Textifier createTextifier()>();	$r9 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	$r10 = virtualinvoke $r14.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List getText()>();	interfaceinvoke $r9.<java.util.List: boolean add(java.lang.Object)>($r10);	$r11 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.util.List text>;	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>(")");	return $r14
;block_num 2