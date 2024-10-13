(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/-2079556831 (var1192 Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getIntegerInfo/-1123389933 (var1192 Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1192 var1192)
(declare-const null-Int Int)
(declare-const var2612 var1192) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2612 null-var1192)))
(declare-const var1742 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1742 null-Int)))
(assert true)
(define-const var1236 Int (getTag/-2079556831 var2612 var1742)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0) 
 ; Statement: tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; } 
(assert (and (= var1236 3) true)) ; Intersect: Cond: i1 == 3  and Non Conditional 
(define-const var821 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var821)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var821!1 String)
(assert (= var821!1 ""))
(assert true)
(define-const var2747 String (append/672562846 var821!1 "#")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var821!2 String)
(assert (= var821!2 (str.++ var821!1 "#")))
(assert true)
(define-const var2192 String (append/-1001720160 var2747 var1742)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2747!1 String)
(assert (str.prefixof var2747 var2747!1))
(assert true)
(define-const var2678 String (append/672562846 var2192 " = int ")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = int ") 
(declare-const var2192!1 String)
(assert (= var2192!1 (str.++ var2192 " = int ")))
(assert true)
(define-const var755 Int (getIntegerInfo/-1123389933 var2612 var1742)) ; Statement: $i3 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getIntegerInfo(int)>(i0) 
(assert true)
(define-const var1388 String (append/-1001720160 var2678 var755)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2678!1 String)
(assert (str.prefixof var2678 var2678!1))
(assert true)
(define-const var1715 String (toString/-2075883882 var1388)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/-2079556831=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getIntegerInfo/-1123389933=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1192=org.apache.ibatis.javassist.bytecode.ConstPool, var2612=r0, var1742=i0, var1236=i1, var821=$r28, var2747=$r29, var2192=$r30, var2678=$r31, var755=$i3, var1388=$r32, var1715=$r33}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var1192, r0=var2612, i0=var1742, i1=var1236, $r28=var821, $r29=var2747, $r30=var2192, $r31=var2678, $i3=var755, $r32=var1388, $r33=var1715}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0);	tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; };	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = int ");	$i3 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getIntegerInfo(int)>(i0);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	return $r33
;block_num 2