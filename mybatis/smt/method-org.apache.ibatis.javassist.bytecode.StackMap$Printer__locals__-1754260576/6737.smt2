(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var844 0)
(declare-sort var503 0)
(declare-sort var2652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun writer/-1289891525 (var844) var503)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var503 String) void)
(declare-fun locals/-901809198 (var2652 Int Int Int) Int)
(declare-fun cast-from-var844-to-var2652 (var844) var2652)
(declare-const null-var844 var844)
(declare-const null-Int Int)
(declare-const var3289 var844) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.StackMap$Printer 
(assert (not (= var3289 null-var844)))
(declare-const var2706 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2706 null-Int)))
(declare-const var1292 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1292 null-Int)))
(declare-const var749 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var749 null-Int)))
(define-const var207 var503 (writer/-1289891525 var3289)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMap$Printer: java.io.PrintWriter writer> 
(define-const var3627 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3627)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3627!1 String)
(assert (= var3627!1 ""))
(assert true)
(define-const var2142 String (append/672562846 var3627!1 "  * offset ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  * offset ") 
(declare-const var3627!2 String)
(assert (= var3627!2 (str.++ var3627!1 "  * offset ")))
(assert true)
(define-const var1961 String (append/-1001720160 var2142 var1292)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2142!1 String)
(assert (str.prefixof var2142 var2142!1))
(assert true)
(define-const var17 String (toString/-2075883882 var1961)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var207 var17)) ; Statement: virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r5) 

(declare-const var207!1 var503)
(declare-const var17!1 String)
(assert true)
(define-const var2220 Int (locals/-901809198 (cast-from-var844-to-var2652 var3289) var2706 var1292 var749)) ; Statement: $i3 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.StackMap$Walker: int locals(int,int,int)>(i1, i0, i2) 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {writer/-1289891525=([org.apache.ibatis.javassist.bytecode.StackMap$Printer], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), locals/-901809198=([org.apache.ibatis.javassist.bytecode.StackMap$Walker, int, int, int], int), cast-from-var844-to-var2652=([org.apache.ibatis.javassist.bytecode.StackMap$Printer], org.apache.ibatis.javassist.bytecode.StackMap$Walker)}
; {var844=org.apache.ibatis.javassist.bytecode.StackMap$Printer, var3289=r0, var2706=i1, var1292=i0, var749=i2, var503=java.io.PrintWriter, var207=$r2, var3627=$r1, var2142=$r3, var1961=$r4, var17=$r5, var2652=org.apache.ibatis.javassist.bytecode.StackMap$Walker, var2220=$i3}
; {org.apache.ibatis.javassist.bytecode.StackMap$Printer=var844, r0=var3289, i1=var2706, i0=var1292, i2=var749, java.io.PrintWriter=var503, $r2=var207, $r1=var3627, $r3=var2142, $r4=var1961, $r5=var17, org.apache.ibatis.javassist.bytecode.StackMap$Walker=var2652, $i3=var2220}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.StackMap$Printer;	i1 := @parameter0: int;	i0 := @parameter1: int;	i2 := @parameter2: int;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.StackMap$Printer: java.io.PrintWriter writer>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  * offset ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.PrintWriter: void println(java.lang.String)>($r5);	$i3 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.StackMap$Walker: int locals(int,int,int)>(i1, i0, i2);	return $i3
;block_num 1