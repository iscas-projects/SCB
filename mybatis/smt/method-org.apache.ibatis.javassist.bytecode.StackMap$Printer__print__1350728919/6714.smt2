(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3242 0)
(declare-sort var2608 0)
(declare-sort var1299 0)
(declare-sort var415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun info/-1242292491 (var2608) (Array Int Int))
(declare-fun cast-from-var3242-to-var2608 (var3242) var2608)
(declare-fun var1299_readU16bit/-514445618 ((Array Int Int) Int) Int)
(declare-fun writer/-1289891525 (var3242) var415)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/-1226480079 (var415 String) void)
(declare-fun visit/155598983 (var2608) void)
(declare-const null-var3242 var3242)
(declare-const var92 var3242) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.StackMap$Printer 
(assert (not (= var92 null-var3242)))
(define-const var2988 (Array Int Int) (info/-1242292491 (cast-from-var3242-to-var2608 var92))) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.StackMap$Printer: byte[] info> 
(define-const var3873 Int (var1299_readU16bit/-514445618 var2988 0)) ; Statement: i0 = staticinvoke <org.apache.ibatis.javassist.bytecode.ByteArray: int readU16bit(byte[],int)>($r1, 0) 
(define-const var3074 var415 (writer/-1289891525 var92)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.bytecode.StackMap$Printer: java.io.PrintWriter writer> 
(define-const var28 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var28)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var28!1 String)
(assert (= var28!1 ""))
(assert true)
(define-const var3223 String (append/-1001720160 var28!1 var3873)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var28!2 String)
(assert (str.prefixof var28!1 var28!2))
(assert true)
(define-const var1499 String (append/672562846 var3223 " entries")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" entries") 
(declare-const var3223!1 String)
(assert (= var3223!1 (str.++ var3223 " entries")))
(assert true)
(define-const var951 String (toString/-2075883882 var1499)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/-1226480079 var3074 var951)) ; Statement: virtualinvoke $r3.<java.io.PrintWriter: void println(java.lang.String)>($r6) 

(declare-const var3074!1 var415)
(declare-const var951!1 String)
(assert true)
;(assert (visit/155598983 (cast-from-var3242-to-var2608 var92))) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.StackMap$Printer: void visit()>() 

(declare-const var92!1 var3242)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {info/-1242292491=([org.apache.ibatis.javassist.bytecode.StackMap$Walker], byte[]), cast-from-var3242-to-var2608=([org.apache.ibatis.javassist.bytecode.StackMap$Printer], org.apache.ibatis.javassist.bytecode.StackMap$Walker), var1299_readU16bit/-514445618=([byte[], int], int), writer/-1289891525=([org.apache.ibatis.javassist.bytecode.StackMap$Printer], java.io.PrintWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), visit/155598983=([org.apache.ibatis.javassist.bytecode.StackMap$Walker], void)}
; {var3242=org.apache.ibatis.javassist.bytecode.StackMap$Printer, var92=r0, var2608=org.apache.ibatis.javassist.bytecode.StackMap$Walker, var2988=$r1, var1299=org.apache.ibatis.javassist.bytecode.ByteArray, var3873=i0, var415=java.io.PrintWriter, var3074=$r3, var28=$r2, var3223=$r4, var1499=$r5, var951=$r6}
; {org.apache.ibatis.javassist.bytecode.StackMap$Printer=var3242, r0=var92, org.apache.ibatis.javassist.bytecode.StackMap$Walker=var2608, $r1=var2988, org.apache.ibatis.javassist.bytecode.ByteArray=var1299, i0=var3873, java.io.PrintWriter=var415, $r3=var3074, $r2=var28, $r4=var3223, $r5=var1499, $r6=var951}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.StackMap$Printer;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.StackMap$Printer: byte[] info>;	i0 = staticinvoke <org.apache.ibatis.javassist.bytecode.ByteArray: int readU16bit(byte[],int)>($r1, 0);	$r3 = r0.<org.apache.ibatis.javassist.bytecode.StackMap$Printer: java.io.PrintWriter writer>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" entries");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintWriter: void println(java.lang.String)>($r6);	virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.StackMap$Printer: void visit()>();	return
;block_num 1