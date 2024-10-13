(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2409 0)
(declare-sort var3016 0)
(declare-sort var1722 0)
(declare-sort var2834 0)
(declare-sort var945 0)
(declare-sort var603 0)
(declare-sort var864 0)
(declare-sort var308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1722) void)
(declare-fun cast-from-var2409-to-var1722 (var2409) var1722)
(declare-fun var2834-init () var2834)
(declare-fun <init>/-1628222719 (var2834 var945) void)
(declare-fun currentBlock/548216533 (var2409) var2834)
(declare-fun previousBlock/548216533 (var2409) var2834)
(declare-fun length/-1852051827 (var3016) Int)
(declare-fun size/548216533 (var2409) Int)
(declare-fun blockSize/548216533 (var2409) Int)
(declare-fun var864-init () var864)
(declare-fun <init>/129610947 (var864 var3016 String) void)
(declare-fun file/548216533 (var2409) var864)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var308-init () var308)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var308 String) void)
(declare-const null-var2409 var2409)
(declare-const null-var3016 var3016)
(declare-const null-Int Int)
(declare-const null-NullType var603)
(declare-const null-var945 var945)
(declare-const var1500 var2409) ; Statement: r0 := @this: jdk.jfr.internal.consumer.RecordingInput 
(assert (not (= var1500 null-var2409)))
(declare-const var2085 var3016) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var2085 null-var3016)))
(declare-const var3773 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3773 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2409-to-var1722 var1500))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1500!1 var2409)
(define-const var1511 var2834 var2834-init) ; Statement: $r11 = new jdk.jfr.internal.consumer.RecordingInput$Block 
(assert true)
;(assert (<init>/-1628222719 var1511 null-var945)) ; Statement: specialinvoke $r11.<jdk.jfr.internal.consumer.RecordingInput$Block: void <init>(jdk.jfr.internal.consumer.RecordingInput$1)>(null) 

(declare-const var1511!1 var2834)
(declare-const var1816 var603)
(declare-const var1500!2 var2409)
(assert (not (= var1500!2 null-var2409)))
(assert (= (currentBlock/548216533 var1500!2) var1511!1)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: jdk.jfr.internal.consumer.RecordingInput$Block currentBlock> = $r11 
(define-const var977 var2834 var2834-init) ; Statement: $r12 = new jdk.jfr.internal.consumer.RecordingInput$Block 
(assert true)
;(assert (<init>/-1628222719 var977 null-var945)) ; Statement: specialinvoke $r12.<jdk.jfr.internal.consumer.RecordingInput$Block: void <init>(jdk.jfr.internal.consumer.RecordingInput$1)>(null) 

(declare-const var977!1 var2834)
(declare-const var1816!1 var603)
(declare-const var1500!3 var2409)
(assert (not (= var1500!3 null-var2409)))
(assert (= (previousBlock/548216533 var1500!3) var977!1)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: jdk.jfr.internal.consumer.RecordingInput$Block previousBlock> = $r12 
(assert true)
(define-const var3889 Int (length/-1852051827 var2085)) ; Statement: $l0 = virtualinvoke r3.<java.io.File: long length()>() 
(declare-const var1500!4 var2409)
(assert (not (= var1500!4 null-var2409)))
(assert (= (size/548216533 var1500!4) var3889)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: long size> = $l0 
(declare-const var1500!5 var2409)
(assert (not (= var1500!5 null-var2409)))
(assert (= (blockSize/548216533 var1500!5) var3773)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: int blockSize> = i1 
(define-const var669 var864 var864-init) ; Statement: $r13 = new java.io.RandomAccessFile 
(assert true)
;(assert (<init>/129610947 var669 var2085 "r")) ; Statement: specialinvoke $r13.<java.io.RandomAccessFile: void <init>(java.io.File,java.lang.String)>(r3, "r") 

(declare-const var669!1 var864)
(declare-const var2085!1 var3016)
(declare-const var3058 String)
(declare-const var1500!6 var2409)
(assert (not (= var1500!6 null-var2409)))
(assert (= (file/548216533 var1500!6) var669!1)) ; Statement: r0.<jdk.jfr.internal.consumer.RecordingInput: java.io.RandomAccessFile file> = $r13 
(define-const var2069 Int (size/548216533 var1500!6)) ; Statement: $l2 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size> 
(define-const var3913 Int (ite (> var2069 8) 1 (ite (< var2069 8) (- 1) 0))) ; Statement: $b3 = $l2 cmp 8L 
(define-const var144 Int (cast-from-Int-to-Int var3913)) ; Statement: $i5 = (int) $b3 
 ; Statement: if $i5 >= 0 goto return 
(assert (not (>= var144 0))) ; Negate: Cond: $i5 >= 0  
(define-const var1595 var308 var308-init) ; Statement: $r15 = new java.io.IOException 
(define-const var546 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var546)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var546!1 String)
(assert (= var546!1 ""))
(assert true)
(define-const var3586 String (append/672562846 var546!1 "Not a valid Flight Recorder file. File length is only ")) ; Statement: $r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a valid Flight Recorder file. File length is only ") 
(declare-const var546!2 String)
(assert (= var546!2 (str.++ var546!1 "Not a valid Flight Recorder file. File length is only ")))
(define-const var1355 Int (size/548216533 var1500!6)) ; Statement: $l4 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size> 
(assert true)
(define-const var362 String (append/-901862667 var3586 var1355)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3586!1 String)
(assert (str.prefixof var3586 var3586!1))
(assert true)
(define-const var423 String (append/672562846 var362 " bytes.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes.") 
(declare-const var362!1 String)
(assert (= var362!1 (str.++ var362 " bytes.")))
(assert true)
(define-const var2021 String (toString/-2075883882 var423)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1595 var2021)) ; Statement: specialinvoke $r15.<java.io.IOException: void <init>(java.lang.String)>($r10) 

(declare-const var1595!1 var308)
(declare-const var2021!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2409-to-var1722=([jdk.jfr.internal.consumer.RecordingInput], java.lang.Object), var2834-init=([], jdk.jfr.internal.consumer.RecordingInput$Block), <init>/-1628222719=([jdk.jfr.internal.consumer.RecordingInput$Block, jdk.jfr.internal.consumer.RecordingInput$1], void), currentBlock/548216533=([jdk.jfr.internal.consumer.RecordingInput], jdk.jfr.internal.consumer.RecordingInput$Block), previousBlock/548216533=([jdk.jfr.internal.consumer.RecordingInput], jdk.jfr.internal.consumer.RecordingInput$Block), length/-1852051827=([java.io.File], long), size/548216533=([jdk.jfr.internal.consumer.RecordingInput], long), blockSize/548216533=([jdk.jfr.internal.consumer.RecordingInput], int), var864-init=([], java.io.RandomAccessFile), <init>/129610947=([java.io.RandomAccessFile, java.io.File, java.lang.String], void), file/548216533=([jdk.jfr.internal.consumer.RecordingInput], java.io.RandomAccessFile), cast-from-Int-to-Int=([byte], int), var308-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2409=jdk.jfr.internal.consumer.RecordingInput, var1500=r0, var3016=java.io.File, var2085=r3, var3773=i1, var1722=java.lang.Object, var2834=jdk.jfr.internal.consumer.RecordingInput$Block, var1511=$r11, var945=jdk.jfr.internal.consumer.RecordingInput$1, var1816=null, var603=null_type, var977=$r12, var3889=$l0, var864=java.io.RandomAccessFile, var669=$r13, var3058="r", var2069=$l2, var3913=$b3, var144=$i5, var308=java.io.IOException, var1595=$r15, var546=$r14, var3586=$r7, var1355=$l4, var362=$r8, var423=$r9, var2021=$r10}
; {jdk.jfr.internal.consumer.RecordingInput=var2409, r0=var1500, java.io.File=var3016, r3=var2085, i1=var3773, java.lang.Object=var1722, jdk.jfr.internal.consumer.RecordingInput$Block=var2834, $r11=var1511, jdk.jfr.internal.consumer.RecordingInput$1=var945, null=var1816, null_type=var603, $r12=var977, $l0=var3889, java.io.RandomAccessFile=var864, $r13=var669, "r"=var3058, $l2=var2069, $b3=var3913, $i5=var144, java.io.IOException=var308, $r15=var1595, $r14=var546, $r7=var3586, $l4=var1355, $r8=var362, $r9=var423, $r10=var2021}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.consumer.RecordingInput;	r3 := @parameter0: java.io.File;	i1 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r11 = new jdk.jfr.internal.consumer.RecordingInput$Block;	specialinvoke $r11.<jdk.jfr.internal.consumer.RecordingInput$Block: void <init>(jdk.jfr.internal.consumer.RecordingInput$1)>(null);	r0.<jdk.jfr.internal.consumer.RecordingInput: jdk.jfr.internal.consumer.RecordingInput$Block currentBlock> = $r11;	$r12 = new jdk.jfr.internal.consumer.RecordingInput$Block;	specialinvoke $r12.<jdk.jfr.internal.consumer.RecordingInput$Block: void <init>(jdk.jfr.internal.consumer.RecordingInput$1)>(null);	r0.<jdk.jfr.internal.consumer.RecordingInput: jdk.jfr.internal.consumer.RecordingInput$Block previousBlock> = $r12;	$l0 = virtualinvoke r3.<java.io.File: long length()>();	r0.<jdk.jfr.internal.consumer.RecordingInput: long size> = $l0;	r0.<jdk.jfr.internal.consumer.RecordingInput: int blockSize> = i1;	$r13 = new java.io.RandomAccessFile;	specialinvoke $r13.<java.io.RandomAccessFile: void <init>(java.io.File,java.lang.String)>(r3, "r");	r0.<jdk.jfr.internal.consumer.RecordingInput: java.io.RandomAccessFile file> = $r13;	$l2 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size>;	$b3 = $l2 cmp 8L;	$i5 = (int) $b3;	if $i5 >= 0 goto return;	$r15 = new java.io.IOException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not a valid Flight Recorder file. File length is only ");	$l4 = r0.<jdk.jfr.internal.consumer.RecordingInput: long size>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.io.IOException: void <init>(java.lang.String)>($r10);	throw $r15
;block_num 2