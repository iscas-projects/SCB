(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2437 0)
(declare-sort var905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/-1932807617 (var2437) Int)
(declare-fun writer/-1932807617 (var2437) var905)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var905 String) void)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var2437 var2437)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3591 var2437) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer 
(assert (not (= var3591 null-var2437)))
(declare-const var577 Int) ; Statement: i8 := @parameter0: int 
(assert (not (= var577 null-Int)))
(declare-const var3405 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3405 null-Int)))
(declare-const var2192 (Array Int Int)) ; Statement: r7 := @parameter2: int[] 
(assert (not (= var2192 null-__Array__Int__Int__)))
(declare-const var3695 (Array Int Int)) ; Statement: r8 := @parameter3: int[] 
(assert (not (= var3695 null-__Array__Int__Int__)))
(define-const var3011 Int (offset/-1932807617 var3591)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(define-const var581 Int (+ var3405 1)) ; Statement: $i1 = i0 + 1 
(define-const var258 Int (+ var3011 var581)) ; Statement: $i3 = $i2 + $i1 
(declare-const var3591!1 var2437)
(assert (not (= var3591!1 null-var2437)))
(assert (= (offset/-1932807617 var3591!1) var258)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3 
(define-const var1763 var905 (writer/-1932807617 var3591!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer> 
(define-const var1899 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1899)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1899!1 String)
(assert (= var1899!1 ""))
(define-const var1013 Int (offset/-1932807617 var3591!1)) ; Statement: $i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(assert true)
(define-const var2857 String (append/-1001720160 var1899!1 var1013)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1899!2 String)
(assert (str.prefixof var1899!1 var1899!2))
(assert true)
(define-const var421 String (append/672562846 var2857 " append frame: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" append frame: ") 
(declare-const var2857!1 String)
(assert (= var2857!1 (str.++ var2857 " append frame: ")))
(assert true)
(define-const var1738 String (append/-1001720160 var421 var3405)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var421!1 String)
(assert (str.prefixof var421 var421!1))
(assert true)
(define-const var1784 String (toString/-2075883882 var1738)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var1763 var1784)) ; Statement: virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var1763!1 var905)
(declare-const var1784!1 String)
(define-const var2716 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(define-const var3235 Int (getLength-Arr-Int-1 var2192)) ; Statement: $i5 = lengthof r7 
 ; Statement: if i9 >= $i5 goto return 
(assert (>= var2716 var3235)) ; Cond: i9 >= $i5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], int), writer/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), getLength-Arr-Int-1=([int[]], int)}
; {var2437=org.apache.ibatis.javassist.bytecode.StackMapTable$Printer, var3591=r0, var577=i8, var3405=i0, var2192=r7, var3695=r8, var3011=$i2, var581=$i1, var258=$i3, var905=java.io.PrintWriter, var1763=$r2, var1899=$r1, var1013=$i4, var2857=$r3, var421=$r4, var1738=$r5, var1784=$r6, var2716=i9, var3235=$i5}
; {org.apache.ibatis.javassist.bytecode.StackMapTable$Printer=var2437, r0=var3591, i8=var577, i0=var3405, r7=var2192, r8=var3695, $i2=var3011, $i1=var581, $i3=var258, java.io.PrintWriter=var905, $r2=var1763, $r1=var1899, $i4=var1013, $r3=var2857, $r4=var421, $r5=var1738, $r6=var1784, i9=var2716, $i5=var3235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer;	i8 := @parameter0: int;	i0 := @parameter1: int;	r7 := @parameter2: int[];	r8 := @parameter3: int[];	$i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$i1 = i0 + 1;	$i3 = $i2 + $i1;	r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" append frame: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r6);	i9 = 0;	$i5 = lengthof r7;	if i9 >= $i5 goto return;	return
;block_num 3