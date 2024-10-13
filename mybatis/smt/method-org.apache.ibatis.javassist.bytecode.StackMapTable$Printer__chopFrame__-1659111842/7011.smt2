(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2086 0)
(declare-sort var2698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/-1932807617 (var2086) Int)
(declare-fun writer/-1932807617 (var2086) var2698)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var2698 String) void)
(declare-const null-var2086 var2086)
(declare-const null-Int Int)
(declare-const var1285 var2086) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer 
(assert (not (= var1285 null-var2086)))
(declare-const var1062 Int) ; Statement: i6 := @parameter0: int 
(assert (not (= var1062 null-Int)))
(declare-const var1802 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1802 null-Int)))
(declare-const var1739 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var1739 null-Int)))
(define-const var2200 Int (offset/-1932807617 var1285)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(define-const var894 Int (+ var1802 1)) ; Statement: $i1 = i0 + 1 
(define-const var3890 Int (+ var2200 var894)) ; Statement: $i3 = $i2 + $i1 
(declare-const var1285!1 var2086)
(assert (not (= var1285!1 null-var2086)))
(assert (= (offset/-1932807617 var1285!1) var3890)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3 
(define-const var1992 var2698 (writer/-1932807617 var1285!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer> 
(define-const var2498 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2498)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2498!1 String)
(assert (= var2498!1 ""))
(define-const var375 Int (offset/-1932807617 var1285!1)) ; Statement: $i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(assert true)
(define-const var2536 String (append/-1001720160 var2498!1 var375)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2498!2 String)
(assert (str.prefixof var2498!1 var2498!2))
(assert true)
(define-const var3575 String (append/672562846 var2536 " chop frame: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" chop frame: ") 
(declare-const var2536!1 String)
(assert (= var2536!1 (str.++ var2536 " chop frame: ")))
(assert true)
(define-const var789 String (append/-1001720160 var3575 var1802)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3575!1 String)
(assert (str.prefixof var3575 var3575!1))
(assert true)
(define-const var3880 String (append/672562846 var789 ",    ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",    ") 
(declare-const var789!1 String)
(assert (= var789!1 (str.++ var789 ",    ")))
(assert true)
(define-const var1457 String (append/-1001720160 var3880 var1739)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5) 
(declare-const var3880!1 String)
(assert (str.prefixof var3880 var3880!1))
(assert true)
(define-const var484 String (append/672562846 var1457 " last locals")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" last locals") 
(declare-const var1457!1 String)
(assert (= var1457!1 (str.++ var1457 " last locals")))
(assert true)
(define-const var2608 String (toString/-2075883882 var484)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var1992 var2608)) ; Statement: virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r9) 

(declare-const var1992!1 var2698)
(declare-const var2608!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], int), writer/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var2086=org.apache.ibatis.javassist.bytecode.StackMapTable$Printer, var1285=r0, var1062=i6, var1802=i0, var1739=i5, var2200=$i2, var894=$i1, var3890=$i3, var2698=java.io.PrintWriter, var1992=$r2, var2498=$r1, var375=$i4, var2536=$r3, var3575=$r4, var789=$r5, var3880=$r6, var1457=$r7, var484=$r8, var2608=$r9}
; {org.apache.ibatis.javassist.bytecode.StackMapTable$Printer=var2086, r0=var1285, i6=var1062, i0=var1802, i5=var1739, $i2=var2200, $i1=var894, $i3=var3890, java.io.PrintWriter=var2698, $r2=var1992, $r1=var2498, $i4=var375, $r3=var2536, $r4=var3575, $r5=var789, $r6=var3880, $r7=var1457, $r8=var484, $r9=var2608}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer;	i6 := @parameter0: int;	i0 := @parameter1: int;	i5 := @parameter2: int;	$i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$i1 = i0 + 1;	$i3 = $i2 + $i1;	r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" chop frame: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",    ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" last locals");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r9);	return
;block_num 1