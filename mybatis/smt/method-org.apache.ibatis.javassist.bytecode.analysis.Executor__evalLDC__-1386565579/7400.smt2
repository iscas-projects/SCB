(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var400 0)
(declare-sort var1011 0)
(declare-sort var2446 0)
(declare-sort var2199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun constPool/-20364844 (var400) var2446)
(declare-fun getTag/-2079556831 (var2446 Int) Int)
(declare-fun var2199-init () var2199)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lastPos/-20364844 (var400) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var2199 String) void)
(declare-const null-var400 var400)
(declare-const null-Int Int)
(declare-const null-var1011 var1011)
(declare-const var1539 var400) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var1539 null-var400)))
(declare-const var3931 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3931 null-Int)))
(declare-const var2648 var1011) ; Statement: r2 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var2648 null-var1011)))
(define-const var877 var2446 (constPool/-20364844 var1539)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.ConstPool constPool> 
(assert true)
(define-const var3690 Int (getTag/-2079556831 var877 var3931)) ; Statement: i1 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0) 
 ; Statement: tableswitch(i1) {     case 3: goto r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;     case 4: goto r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type FLOAT>;     case 5: goto r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type LONG>;     case 6: goto r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type DOUBLE>;     case 7: goto r10 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type CLASS_TYPE>;     case 8: goto r10 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type STRING_TYPE>;     default: goto $r3 = new org.apache.ibatis.javassist.bytecode.BadBytecode; } 
(assert (and (not (= var3690 8)) (and (not (= var3690 7)) (and (not (= var3690 6)) (and (not (= var3690 5)) (and (not (= var3690 4)) (and (not (= var3690 3)) true))))))) ; Intersect: Negate: Cond: i1 == 8   and Intersect: Negate: Cond: i1 == 7   and Intersect: Negate: Cond: i1 == 6   and Intersect: Negate: Cond: i1 == 5   and Intersect: Negate: Cond: i1 == 4   and Intersect: Negate: Cond: i1 == 3   and Non Conditional      
(define-const var3434 var2199 var2199-init) ; Statement: $r3 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var1876 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1876)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1876!1 String)
(assert (= var1876!1 ""))
(assert true)
(define-const var2961 String (append/672562846 var1876!1 "bad LDC [pos = ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad LDC [pos = ") 
(declare-const var1876!2 String)
(assert (= var1876!2 (str.++ var1876!1 "bad LDC [pos = ")))
(define-const var1277 Int (lastPos/-20364844 var1539)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos> 
(assert true)
(define-const var505 String (append/-1001720160 var2961 var1277)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2961!1 String)
(assert (str.prefixof var2961 var2961!1))
(assert true)
(define-const var1652 String (append/672562846 var505 "]: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var505!1 String)
(assert (= var505!1 (str.++ var505 "]: ")))
(assert true)
(define-const var2414 String (append/-1001720160 var1652 var3690)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1652!1 String)
(assert (str.prefixof var1652 var1652!1))
(assert true)
(define-const var1914 String (toString/-2075883882 var2414)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var3434 var1914)) ; Statement: specialinvoke $r3.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r9) 

(declare-const var3434!1 var2199)
(declare-const var1914!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {constPool/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], org.apache.ibatis.javassist.bytecode.ConstPool), getTag/-2079556831=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), var2199-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lastPos/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var400=org.apache.ibatis.javassist.bytecode.analysis.Executor, var1539=r0, var3931=i0, var1011=org.apache.ibatis.javassist.bytecode.analysis.Frame, var2648=r2, var2446=org.apache.ibatis.javassist.bytecode.ConstPool, var877=$r1, var3690=i1, var2199=org.apache.ibatis.javassist.bytecode.BadBytecode, var3434=$r3, var1876=$r4, var2961=$r5, var1277=$i2, var505=$r6, var1652=$r7, var2414=$r8, var1914=$r9}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var400, r0=var1539, i0=var3931, org.apache.ibatis.javassist.bytecode.analysis.Frame=var1011, r2=var2648, org.apache.ibatis.javassist.bytecode.ConstPool=var2446, $r1=var877, i1=var3690, org.apache.ibatis.javassist.bytecode.BadBytecode=var2199, $r3=var3434, $r4=var1876, $r5=var2961, $i2=var1277, $r6=var505, $r7=var1652, $r8=var2414, $r9=var1914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	i0 := @parameter0: int;	r2 := @parameter1: org.apache.ibatis.javassist.bytecode.analysis.Frame;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.ConstPool constPool>;	i1 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0);	tableswitch(i1) {     case 3: goto r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;     case 4: goto r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type FLOAT>;     case 5: goto r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type LONG>;     case 6: goto r10 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type DOUBLE>;     case 7: goto r10 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type CLASS_TYPE>;     case 8: goto r10 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type STRING_TYPE>;     default: goto $r3 = new org.apache.ibatis.javassist.bytecode.BadBytecode; };	$r3 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad LDC [pos = ");	$i2 = r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2