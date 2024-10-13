(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/-2079556831 (var1438 Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getDoubleInfo/2074079922 (var1438 Int) Float64)
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1438 var1438)
(declare-const null-Int Int)
(declare-const var2596 var1438) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var2596 null-var1438)))
(declare-const var1240 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1240 null-Int)))
(assert true)
(define-const var2955 Int (getTag/-2079556831 var2596 var1240)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0) 
 ; Statement: tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; } 
(assert (and (= var2955 6) (and (not (= var2955 5)) (and (not (= var2955 4)) (and (not (= var2955 3)) true))))) ; Intersect: Cond: i1 == 6  and Intersect: Negate: Cond: i1 == 5   and Intersect: Negate: Cond: i1 == 4   and Intersect: Negate: Cond: i1 == 3   and Non Conditional    
(define-const var1858 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1858)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1858!1 String)
(assert (= var1858!1 ""))
(assert true)
(define-const var2666 String (append/672562846 var1858!1 "#")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1858!2 String)
(assert (= var1858!2 (str.++ var1858!1 "#")))
(assert true)
(define-const var3805 String (append/-1001720160 var2666 var1240)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2666!1 String)
(assert (str.prefixof var2666 var2666!1))
(assert true)
(define-const var3215 String (append/672562846 var3805 " = double ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = double ") 
(declare-const var3805!1 String)
(assert (= var3805!1 (str.++ var3805 " = double ")))
(assert true)
(define-const var2262 Float64 (getDoubleInfo/2074079922 var2596 var1240)) ; Statement: $d0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: double getDoubleInfo(int)>(i0) 
(assert true)
(define-const var3807 String (append/33611274 var3215 var2262)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var3215!1 String)
(assert (str.prefixof var3215 var3215!1))
(assert true)
(define-const var913 String (toString/-2075883882 var3807)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/-2079556831=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getDoubleInfo/2074079922=([org.apache.ibatis.javassist.bytecode.ConstPool, int], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1438=org.apache.ibatis.javassist.bytecode.ConstPool, var2596=r0, var1240=i0, var2955=i1, var1858=$r10, var2666=$r11, var3805=$r12, var3215=$r13, var2262=$d0, var3807=$r14, var913=$r15}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var1438, r0=var2596, i0=var1240, i1=var2955, $r10=var1858, $r11=var2666, $r12=var3805, $r13=var3215, $d0=var2262, $r14=var3807, $r15=var913}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0);	tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; };	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = double ");	$d0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: double getDoubleInfo(int)>(i0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2