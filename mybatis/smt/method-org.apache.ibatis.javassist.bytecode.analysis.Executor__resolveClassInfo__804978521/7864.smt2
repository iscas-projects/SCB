(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort var3169 0)
(declare-sort var109 0)
(declare-sort var667 0)
(declare-sort var1893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var667-init () var667)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lastPos/-20364844 (var2948) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getMessage/849299655 (var1893) String)
(declare-fun cast-from-var109-to-var1893 (var109) var1893)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var667 String) void)
(declare-const null-var2948 var2948)
(declare-const null-String String)
(declare-const null-var109 var109)
(declare-const var2674 var2948) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var2674 null-var2948)))
(declare-const var138 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var138 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1438 var109) ; Statement: $r12 := @caughtexception 
(assert (not (= var1438 null-var109)))
(define-const var1900 var667 var667-init) ; Statement: $r23 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var3330 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3330)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3330!1 String)
(assert (= var3330!1 ""))
(assert true)
(define-const var1695 String (append/672562846 var3330!1 "Could not find class in descriptor [pos = ")) ; Statement: $r15 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class in descriptor [pos = ") 
(declare-const var3330!2 String)
(assert (= var3330!2 (str.++ var3330!1 "Could not find class in descriptor [pos = ")))
(define-const var2966 Int (lastPos/-20364844 var2674)) ; Statement: $i2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos> 
(assert true)
(define-const var3147 String (append/-1001720160 var1695 var2966)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1695!1 String)
(assert (str.prefixof var1695 var1695!1))
(assert true)
(define-const var1891 String (append/672562846 var3147 "]: ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var3147!1 String)
(assert (= var3147!1 (str.++ var3147 "]: ")))
(assert true)
(define-const var1608 String (getMessage/849299655 (cast-from-var109-to-var1893 var1438))) ; Statement: $r17 = virtualinvoke $r12.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>() 
(assert true)
(define-const var373 String (append/672562846 var1891 var1608)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1891!1 String)
(assert (= var1891!1 (str.++ var1891 var1608)))
(assert true)
(define-const var3387 String (toString/-2075883882 var373)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var1900 var3387)) ; Statement: specialinvoke $r23.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r20) 

(declare-const var1900!1 var667)
(declare-const var3387!1 String)
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var667-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lastPos/-20364844=([org.apache.ibatis.javassist.bytecode.analysis.Executor], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var109-to-var1893=([org.apache.ibatis.javassist.NotFoundException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var2948=org.apache.ibatis.javassist.bytecode.analysis.Executor, var2674=r1, var138=r0, var3169=null_type, var109=org.apache.ibatis.javassist.NotFoundException, var1438=$r12, var667=org.apache.ibatis.javassist.bytecode.BadBytecode, var1900=$r23, var3330=$r22, var1695=$r15, var2966=$i2, var3147=$r16, var1891=$r18, var1893=java.lang.Throwable, var1608=$r17, var373=$r19, var3387=$r20}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var2948, r1=var2674, r0=var138, null_type=var3169, org.apache.ibatis.javassist.NotFoundException=var109, $r12=var1438, org.apache.ibatis.javassist.bytecode.BadBytecode=var667, $r23=var1900, $r22=var3330, $r15=var1695, $i2=var2966, $r16=var3147, $r18=var1891, java.lang.Throwable=var1893, $r17=var1608, $r19=var373, $r20=var3387}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	r0 := @parameter0: java.lang.String;	$r12 := @caughtexception;	$r23 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find class in descriptor [pos = ");	$i2 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Executor: int lastPos>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r17 = virtualinvoke $r12.<org.apache.ibatis.javassist.NotFoundException: java.lang.String getMessage()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r23.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r20);	throw $r23
;block_num 2