(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2586 0)
(declare-sort var3309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTag/-2079556831 (var2586 Int) Int)
(declare-fun var3309-init () var3309)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3309 String) void)
(declare-const null-var2586 var2586)
(declare-const null-Int Int)
(declare-const var3470 var2586) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var3470 null-var2586)))
(declare-const var1863 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1863 null-Int)))
(assert true)
(define-const var1203 Int (getTag/-2079556831 var3470 var1863)) ; Statement: i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0) 
 ; Statement: tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; } 
(assert (and (not (= var1203 8)) (and (not (= var1203 7)) (and (not (= var1203 6)) (and (not (= var1203 5)) (and (not (= var1203 4)) (and (not (= var1203 3)) true))))))) ; Intersect: Negate: Cond: i1 == 8   and Intersect: Negate: Cond: i1 == 7   and Intersect: Negate: Cond: i1 == 6   and Intersect: Negate: Cond: i1 == 5   and Intersect: Negate: Cond: i1 == 4   and Intersect: Negate: Cond: i1 == 3   and Non Conditional      
(define-const var2529 var3309 var3309-init) ; Statement: $r34 = new java.lang.RuntimeException 
(define-const var3390 String String-init) ; Statement: $r35 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3390)) ; Statement: specialinvoke $r35.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3390!1 String)
(assert (= var3390!1 ""))
(assert true)
(define-const var753 String (append/672562846 var3390!1 "bad LDC: ")) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad LDC: ") 
(declare-const var3390!2 String)
(assert (= var3390!2 (str.++ var3390!1 "bad LDC: ")))
(assert true)
(define-const var276 String (append/-1001720160 var753 var1203)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var753!1 String)
(assert (str.prefixof var753 var753!1))
(assert true)
(define-const var1107 String (toString/-2075883882 var276)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2529 var1107)) ; Statement: specialinvoke $r34.<java.lang.RuntimeException: void <init>(java.lang.String)>($r38) 

(declare-const var2529!1 var3309)
(declare-const var1107!1 String)
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {getTag/-2079556831=([org.apache.ibatis.javassist.bytecode.ConstPool, int], int), var3309-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2586=org.apache.ibatis.javassist.bytecode.ConstPool, var3470=r0, var1863=i0, var1203=i1, var3309=java.lang.RuntimeException, var2529=$r34, var3390=$r35, var753=$r36, var276=$r37, var1107=$r38}
; {org.apache.ibatis.javassist.bytecode.ConstPool=var2586, r0=var3470, i0=var1863, i1=var1203, java.lang.RuntimeException=var3309, $r34=var2529, $r35=var3390, $r36=var753, $r37=var276, $r38=var1107}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	i0 := @parameter1: int;	i1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: int getTag(int)>(i0);	tableswitch(i1) {     case 3: goto $r28 = new java.lang.StringBuilder;     case 4: goto $r22 = new java.lang.StringBuilder;     case 5: goto $r16 = new java.lang.StringBuilder;     case 6: goto $r10 = new java.lang.StringBuilder;     case 7: goto $r9 = staticinvoke <org.apache.ibatis.javassist.bytecode.InstructionPrinter: java.lang.String classInfo(org.apache.ibatis.javassist.bytecode.ConstPool,int)>(r0, i0);     case 8: goto $r1 = new java.lang.StringBuilder;     default: goto $r34 = new java.lang.RuntimeException; };	$r34 = new java.lang.RuntimeException;	$r35 = new java.lang.StringBuilder;	specialinvoke $r35.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bad LDC: ");	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<java.lang.RuntimeException: void <init>(java.lang.String)>($r38);	throw $r34
;block_num 2