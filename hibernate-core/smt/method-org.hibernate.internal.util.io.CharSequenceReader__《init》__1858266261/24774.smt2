(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var374 0)
(declare-sort var3640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-553797664 (var3640) void)
(declare-fun cast-from-var374-to-var3640 (var374) var3640)
(declare-fun position/814526081 (var374) Int)
(declare-fun mark/814526081 (var374) Int)
(declare-fun charSequence/814526081 (var374) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun length/814526081 (var374) Int)
(declare-const null-var374 var374)
(declare-const null-String String)
(declare-const var2145 var374) ; Statement: r0 := @this: org.hibernate.internal.util.io.CharSequenceReader 
(assert (not (= var2145 null-var374)))
(declare-const var3062 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var3062 null-String)))
(assert true)
;(assert (<init>/-553797664 (cast-from-var374-to-var3640 var2145))) ; Statement: specialinvoke r0.<java.io.Reader: void <init>()>() 

(declare-const var2145!1 var374)
(declare-const var2145!2 var374)
(assert (not (= var2145!2 null-var374)))
(assert (= (position/814526081 var2145!2) 0)) ; Statement: r0.<org.hibernate.internal.util.io.CharSequenceReader: int position> = 0 
(declare-const var2145!3 var374)
(assert (not (= var2145!3 null-var374)))
(assert (= (mark/814526081 var2145!3) 0)) ; Statement: r0.<org.hibernate.internal.util.io.CharSequenceReader: int mark> = 0 
(declare-const var2145!4 var374)
(assert (not (= var2145!4 null-var374)))
(assert (= (charSequence/814526081 var2145!4) var3062)) ; Statement: r0.<org.hibernate.internal.util.io.CharSequenceReader: java.lang.CharSequence charSequence> = r1 
(define-const var2337 Int (String_length/-667254855 var3062)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(declare-const var2145!5 var374)
(assert (not (= var2145!5 null-var374)))
(assert (= (length/814526081 var2145!5) var2337)) ; Statement: r0.<org.hibernate.internal.util.io.CharSequenceReader: int length> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-553797664=([java.io.Reader], void), cast-from-var374-to-var3640=([org.hibernate.internal.util.io.CharSequenceReader], java.io.Reader), position/814526081=([org.hibernate.internal.util.io.CharSequenceReader], int), mark/814526081=([org.hibernate.internal.util.io.CharSequenceReader], int), charSequence/814526081=([org.hibernate.internal.util.io.CharSequenceReader], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), length/814526081=([org.hibernate.internal.util.io.CharSequenceReader], int)}
; {var374=org.hibernate.internal.util.io.CharSequenceReader, var2145=r0, var3062=r1, var3640=java.io.Reader, var2337=$i0}
; {org.hibernate.internal.util.io.CharSequenceReader=var374, r0=var2145, r1=var3062, java.io.Reader=var3640, $i0=var2337}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.hibernate.internal.util.io.CharSequenceReader;	r1 := @parameter0: java.lang.CharSequence;	specialinvoke r0.<java.io.Reader: void <init>()>();	r0.<org.hibernate.internal.util.io.CharSequenceReader: int position> = 0;	r0.<org.hibernate.internal.util.io.CharSequenceReader: int mark> = 0;	r0.<org.hibernate.internal.util.io.CharSequenceReader: java.lang.CharSequence charSequence> = r1;	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	r0.<org.hibernate.internal.util.io.CharSequenceReader: int length> = $i0;	return
;block_num 1