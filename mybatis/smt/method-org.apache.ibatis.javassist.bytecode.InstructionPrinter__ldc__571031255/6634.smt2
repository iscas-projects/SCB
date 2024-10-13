(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/-2079556831 (var3013 Int) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getStringInfo/1523008390 (var3013 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3013 var3013)
(declare-const null-Int Int)
(declare-const var3029 var3013) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var3029 null-var3013)))
(declare-const var1045 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1045 null-Int)))
(assert true)
(define-const var2749 Int (getTag/-2079556831 var3029 var1045)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0) 
 ; Statement: tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; } 
(assert (and (= var2749 8) (and (not (= var2749 7)) (and (not (= var2749 6)) (and (not (= var2749 5)) (and (not (= var2749 4)) (and (not (= var2749 3)) true))))))) ; Intersect: Cond: i1 == 8  and Intersect: Negate: Cond: i1 == 7   and Intersect: Negate: Cond: i1 == 6   and Intersect: Negate: Cond: i1 == 5   and Intersect: Negate: Cond: i1 == 4   and Intersect: Negate: Cond: i1 == 3   and Non Conditional      
(define-const var1808 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1808)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1808!1 String)
(assert (= var1808!1 ""))
(assert true)
(define-const var1564 String (append/672562846 var1808!1 "#")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1808!2 String)
(assert (= var1808!2 (str.++ var1808!1 "#")))
(assert true)
(define-const var3117 String (append/-1001720160 var1564 var1045)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1564!1 String)
(assert (str.prefixof var1564 var1564!1))
(assert true)
(define-const var1266 String (append/672562846 var3117 " = \u0022")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = \"") 
(declare-const var3117!1 String)
(assert (= var3117!1 (str.++ var3117 " = \u0022")))
(assert true)
(define-const var448 String (getStringInfo/1523008390 var3029 var1045)) ; Statement: $r4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getStringInfo(int)>(i0) 
(assert true)
(define-const var2486 String (append/672562846 var1266 var448)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1266!1 String)
(assert (= var1266!1 (str.++ var1266 var448)))
(assert true)
(define-const var1447 String (append/672562846 var2486 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2486!1 String)
(assert (= var2486!1 (str.++ var2486 "\u0022")))
(assert true)
(define-const var618 String (toString/-2075883882 var1447)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/-2079556831=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getStringInfo/1523008390=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3013=org.apache.ibatis.javassist.bytecode.ConstPool, var3029=r0, var1045=i0, var2749=i1, var1808=$r1, var1564=$r2, var3117=$r3, var1266=$r5, var448=$r4, var2486=$r6, var1447=$r7, var618=$r8}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var3013, r0=var3029, i0=var1045, i1=var2749, $r1=var1808, $r2=var1564, $r3=var3117, $r5=var1266, $r4=var448, $r6=var2486, $r7=var1447, $r8=var618}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0);	tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; };	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = \"");	$r4 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getStringInfo(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2