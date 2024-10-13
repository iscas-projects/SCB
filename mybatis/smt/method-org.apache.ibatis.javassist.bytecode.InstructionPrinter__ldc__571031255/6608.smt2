(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/-2079556831 (var2536 Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getFloatInfo/-1031980828 (var2536 Int) Float32)
(declare-fun append/991902413 (String Float32) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2536 var2536)
(declare-const null-Int Int)
(declare-const var1317 var2536) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var1317 null-var2536)))
(declare-const var3645 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3645 null-Int)))
(assert true)
(define-const var3038 Int (getTag/-2079556831 var1317 var3645)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0) 
 ; Statement: tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; } 
(assert (and (= var3038 4) (and (not (= var3038 3)) true))) ; Intersect: Cond: i1 == 4  and Intersect: Negate: Cond: i1 == 3   and Non Conditional  
(define-const var1751 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1751)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1751!1 String)
(assert (= var1751!1 ""))
(assert true)
(define-const var3443 String (append/672562846 var1751!1 "#")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1751!2 String)
(assert (= var1751!2 (str.++ var1751!1 "#")))
(assert true)
(define-const var678 String (append/-1001720160 var3443 var3645)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3443!1 String)
(assert (str.prefixof var3443 var3443!1))
(assert true)
(define-const var1600 String (append/672562846 var678 " = float ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = float ") 
(declare-const var678!1 String)
(assert (= var678!1 (str.++ var678 " = float ")))
(assert true)
(define-const var26 Float32 (getFloatInfo/-1031980828 var1317 var3645)) ; Statement: $f0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: float getFloatInfo(int)>(i0) 
(assert true)
(define-const var3913 String (append/991902413 var1600 var26)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0) 
(declare-const var1600!1 String)
(assert (str.prefixof var1600 var1600!1))
(assert true)
(define-const var687 String (toString/-2075883882 var3913)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/-2079556831=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getFloatInfo/-1031980828=([org.apache.ibatis.javassist.bytecode.ConstPool, int], float), append/991902413=([java.lang.StringBuilder, float], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2536=org.apache.ibatis.javassist.bytecode.ConstPool, var1317=r0, var3645=i0, var3038=i1, var1751=$r22, var3443=$r23, var678=$r24, var1600=$r25, var26=$f0, var3913=$r26, var687=$r27}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var2536, r0=var1317, i0=var3645, i1=var3038, $r22=var1751, $r23=var3443, $r24=var678, $r25=var1600, $f0=var26, $r26=var3913, $r27=var687}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(float)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(float)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0);	tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; };	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = float ");	$f0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: float getFloatInfo(int)>(i0);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(float)>($f0);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	return $r27
;block_num 2