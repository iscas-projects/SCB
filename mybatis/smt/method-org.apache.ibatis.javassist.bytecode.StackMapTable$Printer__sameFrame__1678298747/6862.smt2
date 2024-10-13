(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3341 0)
(declare-sort var925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/-1932807617 (var3341) Int)
(declare-fun writer/-1932807617 (var3341) var925)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var925 String) void)
(declare-const null-var3341 var3341)
(declare-const null-Int Int)
(declare-const var2935 var3341) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer 
(assert (not (= var2935 null-var3341)))
(declare-const var2560 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var2560 null-Int)))
(declare-const var3018 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3018 null-Int)))
(define-const var3804 Int (offset/-1932807617 var2935)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(define-const var3054 Int (+ var3018 1)) ; Statement: $i1 = i0 + 1 
(define-const var404 Int (+ var3804 var3054)) ; Statement: $i3 = $i2 + $i1 
(declare-const var2935!1 var3341)
(assert (not (= var2935!1 null-var3341)))
(assert (= (offset/-1932807617 var2935!1) var404)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3 
(define-const var3345 var925 (writer/-1932807617 var2935!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer> 
(define-const var2709 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2709)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2709!1 String)
(assert (= var2709!1 ""))
(define-const var2588 Int (offset/-1932807617 var2935!1)) ; Statement: $i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(assert true)
(define-const var1828 String (append/-1001720160 var2709!1 var2588)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2709!2 String)
(assert (str.prefixof var2709!1 var2709!2))
(assert true)
(define-const var1749 String (append/672562846 var1828 " same frame: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" same frame: ") 
(declare-const var1828!1 String)
(assert (= var1828!1 (str.++ var1828 " same frame: ")))
(assert true)
(define-const var2630 String (append/-1001720160 var1749 var3018)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1749!1 String)
(assert (str.prefixof var1749 var1749!1))
(assert true)
(define-const var453 String (toString/-2075883882 var2630)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var3345 var453)) ; Statement: virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var3345!1 var925)
(declare-const var453!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], int), writer/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void)}
; {var3341=org.apache.ibatis.javassist.bytecode.StackMapTable$Printer, var2935=r0, var2560=i5, var3018=i0, var3804=$i2, var3054=$i1, var404=$i3, var925=java.io.PrintWriter, var3345=$r2, var2709=$r1, var2588=$i4, var1828=$r3, var1749=$r4, var2630=$r5, var453=$r6}
; {org.apache.ibatis.javassist.bytecode.StackMapTable$Printer=var3341, r0=var2935, i5=var2560, i0=var3018, $i2=var3804, $i1=var3054, $i3=var404, java.io.PrintWriter=var925, $r2=var3345, $r1=var2709, $i4=var2588, $r3=var1828, $r4=var1749, $r5=var2630, $r6=var453}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer;	i5 := @parameter0: int;	i0 := @parameter1: int;	$i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$i1 = i0 + 1;	$i3 = $i2 + $i1;	r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" same frame: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r6);	return
;block_num 1