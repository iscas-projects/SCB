(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var743 0)
(declare-sort var1124 0)
(declare-sort var3061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-10557480 (var3061) String)
(declare-fun cast-from-var743-to-var3061 (var743) var3061)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun length/-1112840705 (String) Int)
(declare-const null-var743 var743)
(declare-const null-String String)
(declare-const var1858 var743) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier 
(assert (not (= var1858 null-var743)))
(declare-const var477 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var477 null-String)))
(declare-const var3534 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3534 null-String)))
(define-const var3230 String (buf/-10557480 (cast-from-var743-to-var3061 var1858))) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3230 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3230!1 String)
(declare-const var2677 Int)
 ; Statement: if r2 == null goto (branch) 
(assert (= var477 null-String)) ; Cond: r2 == null 
 ; Statement: if r3 == null goto $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert (= var3534 null-String)) ; Cond: r3 == null 
(define-const var3581 String (buf/-10557480 (cast-from-var743-to-var3061 var1858))) ; Statement: $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3565 Int (length/-1112840705 var3581)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var3565 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), cast-from-var743-to-var3061=([jdk.internal.org.objectweb.asm.util.Textifier], jdk.internal.org.objectweb.asm.util.Printer), setLength/163251007=([java.lang.StringBuffer, int], void), length/-1112840705=([java.lang.StringBuffer], int)}
; {var743=jdk.internal.org.objectweb.asm.util.Textifier, var1858=r0, var477=r2, var1124=null_type, var3534=r3, var3061=jdk.internal.org.objectweb.asm.util.Printer, var3230=$r1, var2677=0, var3581=$r4, var3565=$i0}
; {jdk.internal.org.objectweb.asm.util.Textifier=var743, r0=var1858, r2=var477, null_type=var1124, r3=var3534, jdk.internal.org.objectweb.asm.util.Printer=var3061, $r1=var3230, 0=var2677, $r4=var3581, $i0=var3565}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: int length()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.Textifier;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r1 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	if r2 == null goto (branch);	if r3 == null goto $r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$r4 = r0.<jdk.internal.org.objectweb.asm.util.Textifier: java.lang.StringBuffer buf>;	$i0 = virtualinvoke $r4.<java.lang.StringBuffer: int length()>();	if $i0 <= 0 goto return;	return
;block_num 4