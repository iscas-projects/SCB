(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1097 0)
(declare-sort var254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun offset/-1932807617 (var1097) Int)
(declare-fun writer/-1932807617 (var1097) var254)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var254 String) void)
(declare-fun printTypeInfo/1998833321 (var1097 Int Int) void)
(declare-const null-var1097 var1097)
(declare-const null-Int Int)
(declare-const var2309 var1097) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer 
(assert (not (= var2309 null-var1097)))
(declare-const var288 Int) ; Statement: i7 := @parameter0: int 
(assert (not (= var288 null-Int)))
(declare-const var2058 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2058 null-Int)))
(declare-const var3487 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3487 null-Int)))
(declare-const var3404 Int) ; Statement: i6 := @parameter3: int 
(assert (not (= var3404 null-Int)))
(define-const var697 Int (offset/-1932807617 var2309)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(define-const var2978 Int (+ var2058 1)) ; Statement: $i1 = i0 + 1 
(define-const var1908 Int (+ var697 var2978)) ; Statement: $i3 = $i2 + $i1 
(declare-const var2309!1 var1097)
(assert (not (= var2309!1 null-var1097)))
(assert (= (offset/-1932807617 var2309!1) var1908)) ; Statement: r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3 
(define-const var264 var254 (writer/-1932807617 var2309!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer> 
(define-const var1612 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1612)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1612!1 String)
(assert (= var1612!1 ""))
(define-const var1258 Int (offset/-1932807617 var2309!1)) ; Statement: $i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> 
(assert true)
(define-const var836 String (append/-1001720160 var1612!1 var1258)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1612!2 String)
(assert (str.prefixof var1612!1 var1612!2))
(assert true)
(define-const var2135 String (append/672562846 var836 " same locals: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" same locals: ") 
(declare-const var836!1 String)
(assert (= var836!1 (str.++ var836 " same locals: ")))
(assert true)
(define-const var3020 String (append/-1001720160 var2135 var2058)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2135!1 String)
(assert (str.prefixof var2135 var2135!1))
(assert true)
(define-const var652 String (toString/-2075883882 var3020)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var264 var652)) ; Statement: virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var264!1 var254)
(declare-const var652!1 String)
(assert true)
;(assert (printTypeInfo/1998833321 var2309!1 var3487 var3404)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: void printTypeInfo(int,int)>(i5, i6) 

(declare-const var2309!2 var1097)
(declare-const var3487!1 Int)
(declare-const var3404!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {offset/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], int), writer/-1932807617=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), printTypeInfo/1998833321=([org.apache.ibatis.javassist.bytecode.StackMapTable$Printer, int, int], void)}
; {var1097=org.apache.ibatis.javassist.bytecode.StackMapTable$Printer, var2309=r0, var288=i7, var2058=i0, var3487=i5, var3404=i6, var697=$i2, var2978=$i1, var1908=$i3, var254=java.io.PrintWriter, var264=$r2, var1612=$r1, var1258=$i4, var836=$r3, var2135=$r4, var3020=$r5, var652=$r6}
; {org.apache.ibatis.javassist.bytecode.StackMapTable$Printer=var1097, r0=var2309, i7=var288, i0=var2058, i5=var3487, i6=var3404, $i2=var697, $i1=var2978, $i3=var1908, java.io.PrintWriter=var254, $r2=var264, $r1=var1612, $i4=var1258, $r3=var836, $r4=var2135, $r5=var3020, $r6=var652}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.StackMapTable$Printer;	i7 := @parameter0: int;	i0 := @parameter1: int;	i5 := @parameter2: int;	i6 := @parameter3: int;	$i2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$i1 = i0 + 1;	$i3 = $i2 + $i1;	r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset> = $i3;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: java.io.PrintWriter writer>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$i4 = r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: int offset>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" same locals: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r6);	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.StackMapTable$Printer: void printTypeInfo(int,int)>(i5, i6);	return
;block_num 1