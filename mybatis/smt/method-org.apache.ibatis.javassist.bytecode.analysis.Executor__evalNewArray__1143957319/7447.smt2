(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var390 0)
(declare-sort var2706 0)
(declare-sort var335 0)
(declare-sort var3403 0)
(declare-sort var2636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun simplePop/581266537 (var390 var335) var3403)
(declare-fun verifyAssignable/2089426193 (var390 var3403 var3403) void)
(declare-fun byteAt/822625918 (var2706 Int) Int)
(declare-fun var2636-init () var2636)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1768538769 (var2636 String) void)
(declare-const null-var390 var390)
(declare-const null-Int Int)
(declare-const null-var2706 var2706)
(declare-const null-var335 var335)
(declare-const var3403-INTEGER var3403)
(declare-const var2798 var390) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor 
(assert (not (= var2798 null-var390)))
(declare-const var3234 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3234 null-Int)))
(declare-const var916 var2706) ; Statement: r4 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator 
(assert (not (= var916 null-var2706)))
(declare-const var353 var335) ; Statement: r1 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.Frame 
(assert (not (= var353 null-var335)))
(define-const var1279 var3403 var3403-INTEGER) ; Statement: $r2 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER> 
(assert true)
(define-const var241 var3403 (simplePop/581266537 var2798 var353)) ; Statement: $r3 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type simplePop(org.apache.ibatis.javassist.bytecode.analysis.Frame)>(r1) 
(assert true)
;(assert (verifyAssignable/2089426193 var2798 var1279 var241)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void verifyAssignable(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Type)>($r2, $r3) 

(declare-const var2798!1 var390)
(declare-const var1279!1 var3403)
(declare-const var241!1 var3403)
(define-const var1708 Int (+ var3234 1)) ; Statement: $i1 = i0 + 1 
(assert true)
(define-const var2568 Int (byteAt/822625918 var916 var1708)) ; Statement: i2 = virtualinvoke r4.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>($i1) 
 ; Statement: tableswitch(i2) {     case 4: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("boolean[]");     case 5: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("char[]");     case 6: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("float[]");     case 7: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("double[]");     case 8: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("byte[]");     case 9: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("short[]");     case 10: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("int[]");     case 11: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("long[]");     default: goto $r5 = new org.apache.ibatis.javassist.bytecode.BadBytecode; } 
(assert (and (not (= var2568 11)) (and (not (= var2568 10)) (and (not (= var2568 9)) (and (not (= var2568 8)) (and (not (= var2568 7)) (and (not (= var2568 6)) (and (not (= var2568 5)) (and (not (= var2568 4)) true))))))))) ; Intersect: Negate: Cond: i2 == 11   and Intersect: Negate: Cond: i2 == 10   and Intersect: Negate: Cond: i2 == 9   and Intersect: Negate: Cond: i2 == 8   and Intersect: Negate: Cond: i2 == 7   and Intersect: Negate: Cond: i2 == 6   and Intersect: Negate: Cond: i2 == 5   and Intersect: Negate: Cond: i2 == 4   and Non Conditional        
(define-const var2598 var2636 var2636-init) ; Statement: $r5 = new org.apache.ibatis.javassist.bytecode.BadBytecode 
(define-const var3315 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3315)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3315!1 String)
(assert (= var3315!1 ""))
(assert true)
(define-const var346 String (append/672562846 var3315!1 "Invalid array type [pos = ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid array type [pos = ") 
(declare-const var3315!2 String)
(assert (= var3315!2 (str.++ var3315!1 "Invalid array type [pos = ")))
(assert true)
(define-const var3447 String (append/-1001720160 var346 var3234)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var346!1 String)
(assert (str.prefixof var346 var346!1))
(assert true)
(define-const var969 String (append/672562846 var3447 "]: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ") 
(declare-const var3447!1 String)
(assert (= var3447!1 (str.++ var3447 "]: ")))
(assert true)
(define-const var247 String (append/-1001720160 var969 var2568)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var969!1 String)
(assert (str.prefixof var969 var969!1))
(assert true)
(define-const var3270 String (toString/-2075883882 var247)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1768538769 var2598 var3270)) ; Statement: specialinvoke $r5.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r11) 

(declare-const var2598!1 var2636)
(declare-const var3270!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {simplePop/581266537=([org.apache.ibatis.javassist.bytecode.analysis.Executor, org.apache.ibatis.javassist.bytecode.analysis.Frame], org.apache.ibatis.javassist.bytecode.analysis.Type), verifyAssignable/2089426193=([org.apache.ibatis.javassist.bytecode.analysis.Executor, org.apache.ibatis.javassist.bytecode.analysis.Type, org.apache.ibatis.javassist.bytecode.analysis.Type], void), byteAt/822625918=([org.apache.ibatis.javassist.bytecode.CodeIterator, int], int), var2636-init=([], org.apache.ibatis.javassist.bytecode.BadBytecode), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1768538769=([org.apache.ibatis.javassist.bytecode.BadBytecode, java.lang.String], void)}
; {var390=org.apache.ibatis.javassist.bytecode.analysis.Executor, var2798=r0, var3234=i0, var2706=org.apache.ibatis.javassist.bytecode.CodeIterator, var916=r4, var335=org.apache.ibatis.javassist.bytecode.analysis.Frame, var353=r1, var3403=org.apache.ibatis.javassist.bytecode.analysis.Type, var1279=$r2, var241=$r3, var1708=$i1, var2568=i2, var2636=org.apache.ibatis.javassist.bytecode.BadBytecode, var2598=$r5, var3315=$r6, var346=$r7, var3447=$r8, var969=$r9, var247=$r10, var3270=$r11}
; {org.apache.ibatis.javassist.bytecode.analysis.Executor=var390, r0=var2798, i0=var3234, org.apache.ibatis.javassist.bytecode.CodeIterator=var2706, r4=var916, org.apache.ibatis.javassist.bytecode.analysis.Frame=var335, r1=var353, org.apache.ibatis.javassist.bytecode.analysis.Type=var3403, $r2=var1279, $r3=var241, $i1=var1708, i2=var2568, org.apache.ibatis.javassist.bytecode.BadBytecode=var2636, $r5=var2598, $r6=var3315, $r7=var346, $r8=var3447, $r9=var969, $r10=var247, $r11=var3270}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.analysis.Executor;	i0 := @parameter0: int;	r4 := @parameter1: org.apache.ibatis.javassist.bytecode.CodeIterator;	r1 := @parameter2: org.apache.ibatis.javassist.bytecode.analysis.Frame;	$r2 = <org.apache.ibatis.javassist.bytecode.analysis.Type: org.apache.ibatis.javassist.bytecode.analysis.Type INTEGER>;	$r3 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type simplePop(org.apache.ibatis.javassist.bytecode.analysis.Frame)>(r1);	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: void verifyAssignable(org.apache.ibatis.javassist.bytecode.analysis.Type,org.apache.ibatis.javassist.bytecode.analysis.Type)>($r2, $r3);	$i1 = i0 + 1;	i2 = virtualinvoke r4.<org.apache.ibatis.javassist.bytecode.CodeIterator: int byteAt(int)>($i1);	tableswitch(i2) {     case 4: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("boolean[]");     case 5: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("char[]");     case 6: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("float[]");     case 7: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("double[]");     case 8: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("byte[]");     case 9: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("short[]");     case 10: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("int[]");     case 11: goto r12 = specialinvoke r0.<org.apache.ibatis.javassist.bytecode.analysis.Executor: org.apache.ibatis.javassist.bytecode.analysis.Type getType(java.lang.String)>("long[]");     default: goto $r5 = new org.apache.ibatis.javassist.bytecode.BadBytecode; };	$r5 = new org.apache.ibatis.javassist.bytecode.BadBytecode;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid array type [pos = ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.javassist.bytecode.BadBytecode: void <init>(java.lang.String)>($r11);	throw $r5
;block_num 2