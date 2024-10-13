(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-41019612 (var1061) (Array Int Int))
(declare-fun sort/-41019612 (var1061) Int)
(declare-fun append/1183289509 (String Int) String)
(declare-fun off/-41019612 (var1061) Int)
(declare-fun len/-41019612 (var1061) Int)
(declare-fun append/-420189427 (String (Array Int Int) Int Int) String)
(declare-const null-var1061 var1061)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2956 var1061) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var2956 null-var1061)))
(declare-const var1625 String) ; Statement: r2 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1625 null-String)))
(define-const var118 (Array Int Int) (buf/-41019612 var2956)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
 ; Statement: if $r1 != null goto $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort> 
(assert (not (= var118 null-__Array__Int__Int__))) ; Cond: $r1 != null 
(define-const var1879 Int (sort/-41019612 var2956)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort> 
 ; Statement: if $i0 != 10 goto $r3 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
(assert (not (not (= var1879 10)))) ; Negate: Cond: $i0 != 10  
(assert true)
;(assert (append/1183289509 var1625 76)) ; Statement: virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76) 

(declare-const var1625!1 String)
(declare-const var1881 Int)
(define-const var1700 (Array Int Int) (buf/-41019612 var2956)) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
(define-const var374 Int (off/-41019612 var2956)) ; Statement: $i4 = r0.<jdk.internal.org.objectweb.asm.Type: int off> 
(define-const var3707 Int (len/-41019612 var2956)) ; Statement: $i3 = r0.<jdk.internal.org.objectweb.asm.Type: int len> 
(assert true)
;(assert (append/-420189427 var1625!1 var1700 var374 var3707)) ; Statement: virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>($r4, $i4, $i3) 

(declare-const var1625!2 String)
(declare-const var1700!1 (Array Int Int))
(declare-const var374!1 Int)
(declare-const var3707!1 Int)
(assert true)
;(assert (append/1183289509 var1625!2 59)) ; Statement: virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59) 

(declare-const var1625!3 String)
(declare-const var3407 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-41019612=([jdk.internal.org.objectweb.asm.Type], char[]), sort/-41019612=([jdk.internal.org.objectweb.asm.Type], int), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), off/-41019612=([jdk.internal.org.objectweb.asm.Type], int), len/-41019612=([jdk.internal.org.objectweb.asm.Type], int), append/-420189427=([java.lang.StringBuffer, char[], int, int], java.lang.StringBuffer)}
; {var1061=jdk.internal.org.objectweb.asm.Type, var2956=r0, var1625=r2, var118=$r1, var1879=$i0, var1881=76, var1700=$r4, var374=$i4, var3707=$i3, var3407=59}
; {jdk.internal.org.objectweb.asm.Type=var1061, r0=var2956, r2=var1625, $r1=var118, $i0=var1879, 76=var1881, $r4=var1700, $i4=var374, $i3=var3707, 59=var3407}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Type;	r2 := @parameter0: java.lang.StringBuffer;	$r1 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	if $r1 != null goto $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort>;	$i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort>;	if $i0 != 10 goto $r3 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(76);	$r4 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	$i4 = r0.<jdk.internal.org.objectweb.asm.Type: int off>;	$i3 = r0.<jdk.internal.org.objectweb.asm.Type: int len>;	virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>($r4, $i4, $i3);	virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(59);	goto [?= return];	return
;block_num 4