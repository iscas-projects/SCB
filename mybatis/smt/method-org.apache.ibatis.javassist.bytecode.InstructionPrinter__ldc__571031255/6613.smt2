(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/-2079556831 (var123 Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getLongInfo/1493184328 (var123 Int) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var123 var123)
(declare-const null-Int Int)
(declare-const var215 var123) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var215 null-var123)))
(declare-const var3086 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3086 null-Int)))
(assert true)
(define-const var3373 Int (getTag/-2079556831 var215 var3086)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0) 
 ; Statement: tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; } 
(assert (and (= var3373 5) (and (not (= var3373 4)) (and (not (= var3373 3)) true)))) ; Intersect: Cond: i1 == 5  and Intersect: Negate: Cond: i1 == 4   and Intersect: Negate: Cond: i1 == 3   and Non Conditional   
(define-const var2024 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2024)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2024!1 String)
(assert (= var2024!1 ""))
(assert true)
(define-const var1495 String (append/672562846 var2024!1 "#")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2024!2 String)
(assert (= var2024!2 (str.++ var2024!1 "#")))
(assert true)
(define-const var3719 String (append/-1001720160 var1495 var3086)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1495!1 String)
(assert (str.prefixof var1495 var1495!1))
(assert true)
(define-const var1807 String (append/672562846 var3719 " = long ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = long ") 
(declare-const var3719!1 String)
(assert (= var3719!1 (str.++ var3719 " = long ")))
(assert true)
(define-const var2729 Int (getLongInfo/1493184328 var215 var3086)) ; Statement: $l2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: long getLongInfo(int)>(i0) 
(assert true)
(define-const var299 String (append/-901862667 var1807 var2729)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var1807!1 String)
(assert (str.prefixof var1807 var1807!1))
(assert true)
(define-const var2743 String (toString/-2075883882 var299)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/-2079556831=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getLongInfo/1493184328=([org.apache.ibatis.javassist.bytecode.ConstPool, int], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var123=org.apache.ibatis.javassist.bytecode.ConstPool, var215=r0, var3086=i0, var3373=i1, var2024=$r16, var1495=$r17, var3719=$r18, var1807=$r19, var2729=$l2, var299=$r20, var2743=$r21}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var123, r0=var215, i0=var3086, i1=var3373, $r16=var2024, $r17=var1495, $r18=var3719, $r19=var1807, $l2=var2729, $r20=var299, $r21=var2743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0);	tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; };	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = long ");	$l2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: long getLongInfo(int)>(i0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	return $r21
;block_num 2