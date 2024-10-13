(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3345 0)
(declare-sort var3201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/-1932807617 (var3345) Int)
(declare-fun writer/-1932807617 (var3345) var3201)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var3201 String) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var3345 var3345)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var515 var3345) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer 
(assert (not (= var515 null-var3345)))
(declare-const var3652 Int) ; Statement: i11 := @parameter0: int 
(assert (not (= var3652 null-Int)))
(declare-const var975 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var975 null-Int)))
(declare-const var2623 (Array Int Int)) ; Statement: r8 := @parameter2: int[] 
(assert (not (= var2623 null-__Array__Int__Int__)))
(declare-const var2154 (Array Int Int)) ; Statement: r12 := @parameter3: int[] 
(assert (not (= var2154 null-__Array__Int__Int__)))
(declare-const var2460 (Array Int Int)) ; Statement: r10 := @parameter4: int[] 
(assert (not (= var2460 null-__Array__Int__Int__)))
(declare-const var1813 (Array Int Int)) ; Statement: r11 := @parameter5: int[] 
(assert (not (= var1813 null-__Array__Int__Int__)))
(define-const var2585 Int (offset/-1932807617 var515)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(define-const var3526 Int (+ var975 1)) ; Statement: $i1 = i0 + 1 
(define-const var1959 Int (+ var2585 var3526)) ; Statement: $i3 = $i2 + $i1 
(declare-const var515!1 var3345)
(assert (not (= var515!1 null-var3345)))
(assert (= (offset/-1932807617 var515!1) var1959)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3 
(define-const var2364 var3201 (writer/-1932807617 var515!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer> 
(define-const var2835 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2835)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2835!1 String)
(assert (= var2835!1 ""))
(define-const var249 Int (offset/-1932807617 var515!1)) ; Statement: $i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(assert true)
(define-const var2105 String (append/-1001720160 var2835!1 var249)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2835!2 String)
(assert (str.prefixof var2835!1 var2835!2))
(assert true)
(define-const var1600 String (append/672562846 var2105 " full frame: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" full frame: ") 
(declare-const var2105!1 String)
(assert (= var2105!1 (str.++ var2105 " full frame: ")))
(assert true)
(define-const var2612 String (append/-1001720160 var1600 var975)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1600!1 String)
(assert (str.prefixof var1600 var1600!1))
(assert true)
(define-const var1780 String (toString/-2075883882 var2612)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var2364 var1780)) ; Statement: virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var2364!1 var3201)
(declare-const var1780!1 String)
(define-const var3525 var3201 (writer/-1932807617 var515!1)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer> 
(assert true)
;(assert (println/-1226480079 var3525 "[locals]")) ; Statement: virtualinvoke $r7.<java.io.PrintWriter: void println(java.lang.String)>("[locals]") 

(declare-const var3525!1 var3201)
(declare-const var3221 String)
(define-const var1812 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(define-const var3311 Int (getLength-Arr-Int-1 var2623)) ; Statement: $i5 = lengthof r8 
 ; Statement: if i12 >= $i5 goto $r9 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer> 
(assert (>= var1812 var3311)) ; Cond: i12 >= $i5 
(define-const var2754 var3201 (writer/-1932807617 var515!1)) ; Statement: $r9 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer> 
(assert true)
;(assert (println/-1226480079 var2754 "[stack]")) ; Statement: virtualinvoke $r9.<java.io.PrintWriter: void println(java.lang.String)>("[stack]") 

(declare-const var2754!1 var3201)
(declare-const var897 String)
(define-const var1787 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(define-const var2512 Int (getLength-Arr-Int-1 var2460)) ; Statement: $i6 = lengthof r10 
 ; Statement: if i13 >= $i6 goto return 
(assert (>= var1787 var2512)) ; Cond: i13 >= $i6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], int), writer/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), getLength-Arr-Int-1=([int[]], int)}
; {var3345=org.apache.ibatis.javassist.bytecode.StackMapTable$Printer, var515=r0, var3652=i11, var975=i0, var2623=r8, var2154=r12, var2460=r10, var1813=r11, var2585=$i2, var3526=$i1, var1959=$i3, var3201=java.io.PrintWriter, var2364=$r2, var2835=$r1, var249=$i4, var2105=$r3, var1600=$r4, var2612=$r5, var1780=$r6, var3525=$r7, var3221="[locals]", var1812=i12, var3311=$i5, var2754=$r9, var897="[stack]", var1787=i13, var2512=$i6}
; {org.apache.ibatis.javassist.bytecode.StackMapTable$Printer=var3345, r0=var515, i11=var3652, i0=var975, r8=var2623, r12=var2154, r10=var2460, r11=var1813, $i2=var2585, $i1=var3526, $i3=var1959, java.io.PrintWriter=var3201, $r2=var2364, $r1=var2835, $i4=var249, $r3=var2105, $r4=var1600, $r5=var2612, $r6=var1780, $r7=var3525, "[locals]"=var3221, i12=var1812, $i5=var3311, $r9=var2754, "[stack]"=var897, i13=var1787, $i6=var2512}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer;	i11 := @parameter0: int;	i0 := @parameter1: int;	r8 := @parameter2: int[];	r12 := @parameter3: int[];	r10 := @parameter4: int[];	r11 := @parameter5: int[];	$i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$i1 = i0 + 1;	$i3 = $i2 + $i1;	r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" full frame: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r6);	$r7 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer>;	virtualinvoke $r7.<java.io.PrintWriter: void println(java.lang.String)>("[locals]");	i12 = 0;	$i5 = lengthof r8;	if i12 >= $i5 goto $r9 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer>;	$r9 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer>;	virtualinvoke $r9.<java.io.PrintWriter: void println(java.lang.String)>("[stack]");	i13 = 0;	$i6 = lengthof r10;	if i13 >= $i6 goto return;	return
;block_num 5