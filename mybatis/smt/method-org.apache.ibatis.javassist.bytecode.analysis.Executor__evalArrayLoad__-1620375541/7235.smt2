(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var754 0)
(declare-sort var3005 0)
(declare-sort var1167 0)
(declare-sort var82 0)
(declare-sort var1036 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pop/-1531762245 (var1167) var3005)
(declare-fun getComponent/540937838 (var3005) var3005)
(declare-fun var82-init () var82)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lastPos/-20364844 (var754) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1036) String)
(declare-fun cast-from-var3005-to-var1036 (var3005) var1036)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var82 String) void)
(declare-const null-var754 var754)
(declare-const null-var3005 var3005)
(declare-const null-var1167 var1167)
(declare-const var3005-UNINIT var3005)
(declare-const var2150 var754) ; Statement: r4 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var2150 null-var754)))
(declare-const var1849 var3005) ; Statement: r5 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.Type 
(assert (not (= var1849 null-var3005)))
(declare-const var3105 var1167) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var3105 null-var1167)))
(assert true)
(define-const var447 var3005 (pop/-1531762245 var3105)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type pop()>() 
(assert true)
(define-const var2035 var3005 (pop/-1531762245 var3105)) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type pop()>() 
(define-const var3630 var3005 var3005-UNINIT) ; Statement: $r3 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type UNINIT> 
 ; Statement: if r2 != $r3 goto r17 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type getComponent()>() 
(assert (not (= var2035 var3630))) ; Cond: r2 != $r3 
(assert true)
(define-const var2480 var3005 (getComponent/540937838 var2035)) ; Statement: r17 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type getComponent()>() 
 ; Statement: if r17 != null goto r18 = specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type zeroExtend(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r17) 
(assert (not (not (= var2480 null-var3005)))) ; Negate: Cond: r17 != null  
(define-const var811 var82 var82-init) ; Statement: $r7 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var2067 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2067)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2067!1 String)
(assert (= var2067!1 ""))
(assert true)
(define-const var2457 String (append/672562846 var2067!1 "Not an array! [pos = ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not an array! [pos = ") 
(declare-const var2067!2 String)
(assert (= var2067!2 (str.++ var2067!1 "Not an array! [pos = ")))
(define-const var2911 Int (lastPos/-20364844 var2150)) ; Statement: $i0 = r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos> 
(assert true)
(define-const var2326 String (append/-1001720160 var2457 var2911)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2457!1 String)
(assert (str.prefixof var2457 var2457!1))
(assert true)
(define-const var3722 String (append/672562846 var2326 "]: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var2326!1 String)
(assert (= var2326!1 (str.++ var2326 "]: ")))
(assert true)
(define-const var2243 String (append/-1031950772 var3722 (cast-from-var3005-to-var1036 var2480))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r17) 
(declare-const var3722!1 String)
(assert (str.prefixof var3722 var3722!1))
(assert true)
(define-const var3756 String (toString/-2075883882 var2243)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var811 var3756)) ; Statement: specialinvoke $r7.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r13) 

(declare-const var811!1 var82)
(declare-const var3756!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {pop/-1531762245=([org.apache.ibatis.javassist.bytecode.analysis.Frame], org.apache.ibatis.javassist.bytecode.analysis.Type), getComponent/540937838=([org.apache.ibatis.javassist.bytecode.analysis.Type], org.apache.ibatis.javassist.bytecode.analysis.Type), var82-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lastPos/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3005-to-var1036=([org.apache.ibatis.javassist.bytecode.analysis.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var754=org.apache.ibatis.javassist.bytecode.analysis.Executor, var2150=r4, var3005=org.apache.ibatis.javassist.bytecode.analysis.Type, var1849=r5, var1167=org.apache.ibatis.javassist.bytecode.analysis.Frame, var3105=r0, var447=r1, var2035=r2, var3630=$r3, var2480=r17, var82=org.apache.ibatis.javassist.bytecode.BadBytecode, var811=$r7, var2067=$r8, var2457=$r9, var2911=$i0, var2326=$r10, var3722=$r11, var1036=java.lang.Object, var2243=$r12, var3756=$r13}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var754, r4=var2150, org.apache.ibatis.javassist.bytecode.analysis.Type=var3005, r5=var1849, org.apache.ibatis.javassist.bytecode.analysis.Frame=var1167, r0=var3105, r1=var447, r2=var2035, $r3=var3630, r17=var2480, org.apache.ibatis.javassist.bytecode.BadBytecode=var82, $r7=var811, $r8=var2067, $r9=var2457, $i0=var2911, $r10=var2326, $r11=var3722, java.lang.Object=var1036, $r12=var2243, $r13=var3756}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r5 := @parameter0: org.apache.ibatis.javassist.bytecode.analysis.Type;	r0 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Frame;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type pop()>();	r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Frame: org.apache.ibatis.javassist.bytecode.analysis.Type pop()>();	$r3 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type UNINIT>;	if r2 != $r3 goto r17 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type getComponent()>();	r17 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type getComponent()>();	if r17 != null goto r18 = specialinvoke r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type zeroExtend(org.apache.ibatis.javassist.bytecode.analysis.Type)>(r17);	$r7 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Not an array! [pos = ");	$i0 = r4.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r17);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 3