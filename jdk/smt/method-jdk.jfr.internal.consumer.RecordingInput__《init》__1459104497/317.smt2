(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var120 0)
(declare-sort var1391 0)
(declare-sort var114 0)
(declare-sort var3347 0)
(declare-sort var693 0)
(declare-sort var2550 0)
(declare-sort var1806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var114) void)
(declare-fun cast-from-var120-to-var114 (var120) var114)
(declare-fun var3347-init () var3347)
(declare-fun <init>/-1628222719 (var3347 var693) void)
(declare-fun currentBlock/548216533 (var120) var3347)
(declare-fun previousBlock/548216533 (var120) var3347)
(declare-fun length/-1852051827 (var1391) Int)
(declare-fun size/548216533 (var120) Int)
(declare-fun blockSize/548216533 (var120) Int)
(declare-fun var1806-init () var1806)
(declare-fun <init>/129610947 (var1806 var1391 String) void)
(declare-fun file/548216533 (var120) var1806)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var120 var120)
(declare-const null-var1391 var1391)
(declare-const null-Int Int)
(declare-const null-NullType var2550)
(declare-const null-var693 var693)
(declare-const var2767 var120) ; Statement: r0 := @this: jdk.jfr.internal.consumer.RecordingInput 
(assert (not (= var2767 null-var120)))
(declare-const var1260 var1391) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var1260 null-var1391)))
(declare-const var2890 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2890 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var120-to-var114 var2767))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2767!1 var120)
(define-const var1556 var3347 var3347-init) ; Statement: $r11 = new jdk.jfr.internal.consumer.RecordingInput$Block 
(assert true)
;(assert (<init>/-1628222719 var1556 null-var693)) ; Statement: specialinvoke $r11.<jdk.jfr.internal.consumer.RecordingInput$Block: void <init>(jdk.jfr.internal.consumer.RecordingInput$1)>(null) 

(declare-const var1556!1 var3347)
(declare-const var1188 var2550)
(declare-const var2767!2 var120)
(assert (not (= var2767!2 null-var120)))
(assert (= (currentBlock/548216533 var2767!2) var1556!1)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: jdk.jfr.internal.consumer.RecordingInput$Block currentBlock> = $r11 
(define-const var1229 var3347 var3347-init) ; Statement: $r12 = new jdk.jfr.internal.consumer.RecordingInput$Block 
(assert true)
;(assert (<init>/-1628222719 var1229 null-var693)) ; Statement: specialinvoke $r12.<jdk.jfr.internal.consumer.RecordingInput$Block: void <init>(jdk.jfr.internal.consumer.RecordingInput$1)>(null) 

(declare-const var1229!1 var3347)
(declare-const var1188!1 var2550)
(declare-const var2767!3 var120)
(assert (not (= var2767!3 null-var120)))
(assert (= (previousBlock/548216533 var2767!3) var1229!1)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: jdk.jfr.internal.consumer.RecordingInput$Block previousBlock> = $r12 
(assert true)
(define-const var2886 Int (length/-1852051827 var1260)) ; Statement: $l0 = virtualinvoke r3.<java.io.File: long length()>() 
(declare-const var2767!4 var120)
(assert (not (= var2767!4 null-var120)))
(assert (= (size/548216533 var2767!4) var2886)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: long size> = $l0 
(declare-const var2767!5 var120)
(assert (not (= var2767!5 null-var120)))
(assert (= (blockSize/548216533 var2767!5) var2890)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: int blockSize> = i1 
(define-const var3716 var1806 var1806-init) ; Statement: $r13 = new java.io.RandomAccessFile 
(assert true)
;(assert (<init>/129610947 var3716 var1260 "r")) ; Statement: specialinvoke $r13.<java.io.RandomAccessFile: void <init>(java.io.File,java.lang.String)>(r3, "r") 

(declare-const var3716!1 var1806)
(declare-const var1260!1 var1391)
(declare-const var2035 String)
(declare-const var2767!6 var120)
(assert (not (= var2767!6 null-var120)))
(assert (= (file/548216533 var2767!6) var3716!1)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: java.io.RandomAccessFile file> = $r13 
(define-const var1936 Int (size/548216533 var2767!6)) ; Statement: $l2 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size> 
(define-const var3773 Int (ite (> var1936 8) 1 (ite (< var1936 8) (- 1) 0))) ; Statement: $b3 = $l2 cmp 8L 
(define-const var1392 Int (cast-from-Int-to-Int var3773)) ; Statement: $i5 = (int) $b3 
 ; Statement: if $i5 >= 0 goto return 
(assert (>= var1392 0)) ; Cond: $i5 >= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var120-to-var114=([jdk.jfr.internal.consumer.RecordingInput], java.lang.Object), var3347-init=([], jdk.jfr.internal.consumer.RecordingInput$Block), <init>/-1628222719=([jdk.jfr.internal.consumer.RecordingInput$Block, jdk.jfr.internal.consumer.RecordingInput$1], void), currentBlock/548216533=([jdk.jfr.internal.consumer.RecordingInput], jdk.jfr.internal.consumer.RecordingInput$Block), previousBlock/548216533=([jdk.jfr.internal.consumer.RecordingInput], jdk.jfr.internal.consumer.RecordingInput$Block), length/-1852051827=([java.io.File], long), size/548216533=([jdk.jfr.internal.consumer.RecordingInput], long), blockSize/548216533=([jdk.jfr.internal.consumer.RecordingInput], int), var1806-init=([], java.io.RandomAccessFile), <init>/129610947=([java.io.RandomAccessFile, java.io.File, java.lang.String], void), file/548216533=([jdk.jfr.internal.consumer.RecordingInput], java.io.RandomAccessFile), cast-from-Int-to-Int=([byte], int)}
; {var120=jdk.jfr.internal.consumer.RecordingInput, var2767=r0, var1391=java.io.File, var1260=r3, var2890=i1, var114=java.lang.Object, var3347=jdk.jfr.internal.consumer.RecordingInput$Block, var1556=$r11, var693=jdk.jfr.internal.consumer.RecordingInput$1, var1188=null, var2550=null_type, var1229=$r12, var2886=$l0, var1806=java.io.RandomAccessFile, var3716=$r13, var2035="r", var1936=$l2, var3773=$b3, var1392=$i5}
; {jdk.jfr.internal.consumer.RecordingInput=var120, r0=var2767, java.io.File=var1391, r3=var1260, i1=var2890, java.lang.Object=var114, jdk.jfr.internal.consumer.RecordingInput$Block=var3347, $r11=var1556, jdk.jfr.internal.consumer.RecordingInput$1=var693, null=var1188, null_type=var2550, $r12=var1229, $l0=var2886, java.io.RandomAccessFile=var1806, $r13=var3716, "r"=var2035, $l2=var1936, $b3=var3773, $i5=var1392}
;seq 
;cnt {}
;stmts r0 := @this: jdk.jfr.internal.consumer.RecordingInput;	r3 := @parameter0: java.io.File;	i1 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r11 = new jdk.jfr.internal.consumer.RecordingInput$Block;	specialinvoke $r11.<jdk.jfr.internal.consumer.RecordingInput$Block: void <init>(jdk.jfr.internal.consumer.RecordingInput$1)>(null);	r0.<jdk.jfr.internal.consumer.RecordingInput: jdk.jfr.internal.consumer.RecordingInput$Block currentBlock> = $r11;	$r12 = new jdk.jfr.internal.consumer.RecordingInput$Block;	specialinvoke $r12.<jdk.jfr.internal.consumer.RecordingInput$Block: void <init>(jdk.jfr.internal.consumer.RecordingInput$1)>(null);	r0.<jdk.jfr.internal.consumer.RecordingInput: jdk.jfr.internal.consumer.RecordingInput$Block previousBlock> = $r12;	$l0 = virtualinvoke r3.<java.io.File: long length()>();	r0.<jdk.jfr.internal.consumer.RecordingInput: long size> = $l0;	r0.<jdk.jfr.internal.consumer.RecordingInput: int blockSize> = i1;	$r13 = new java.io.RandomAccessFile;	specialinvoke $r13.<java.io.RandomAccessFile: void <init>(java.io.File,java.lang.String)>(r3, "r");	r0.<jdk.jfr.internal.consumer.RecordingInput: java.io.RandomAccessFile file> = $r13;	$l2 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size>;	$b3 = $l2 cmp 8L;	$i5 = (int) $b3;	if $i5 >= 0 goto return;	return
;block_num 2