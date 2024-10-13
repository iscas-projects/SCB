(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1572 0)
(declare-sort var3893 0)
(declare-sort var2114 0)
(declare-sort var1275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var2114 String) void)
(declare-fun insertOpenNodeCode/-1910072544 (var1572 var3893 var2114 String) void)
(declare-const null-var1572 var1572)
(declare-const null-var3893 var3893)
(declare-const null-var2114 var2114)
(declare-const null-String String)
(declare-const var2330 var1572) ; Statement: r6 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var2330 null-var1572)))
(declare-const var1296 var3893) ; Statement: r7 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var1296 null-var3893)))
(declare-const var3134 var2114) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var3134 null-var2114)))
(declare-const var2593 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2593 null-String)))
(define-const var2569 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2569)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2569!1 String)
(assert (= var2569!1 ""))
(assert true)
(define-const var3713 String (append/672562846 var2569!1 var2593)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2569!2 String)
(assert (= var2569!2 (str.++ var2569!1 var2593)))
(assert true)
(define-const var2205 String (append/672562846 var3713 "{")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var3713!1 String)
(assert (= var3713!1 (str.++ var3713 "{")))
(assert true)
(define-const var3452 String (toString/-2075883882 var2205)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3134 var3452)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var3134!1 var2114)
(declare-const var3452!1 String)
(define-const var1565 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1565)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1565!1 String)
(assert (= var1565!1 ""))
(assert true)
(define-const var3050 String (append/672562846 var1565!1 var2593)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1565!2 String)
(assert (= var1565!2 (str.++ var1565!1 var2593)))
(assert true)
(define-const var2748 String (append/672562846 var3050 "  ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var3050!1 String)
(assert (= var3050!1 (str.++ var3050 "  ")))
(assert true)
(define-const var2278 String (toString/-2075883882 var2748)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (insertOpenNodeCode/-1910072544 var2330 var1296 var3134!1 var2278)) ; Statement: virtualinvoke r6.<org.javacc.jjtree.JavaCodeGenerator: void insertOpenNodeCode(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.lang.String)>(r7, r0, $r11) 

(declare-const var2330!1 var1572)
(declare-const var1296!1 var3893)
(declare-const var3134!2 var2114)
(declare-const var2278!1 String)
(define-const var3010 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3010)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3010!1 String)
(assert (= var3010!1 ""))
(assert true)
(define-const var3056 String (append/672562846 var3010!1 var2593)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3010!2 String)
(assert (= var3010!2 (str.++ var3010!1 var2593)))
(assert true)
(define-const var2722 String (append/672562846 var3056 "}")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3056!1 String)
(assert (= var3056!1 (str.++ var3056 "}")))
(assert true)
(define-const var3432 String (toString/-2075883882 var2722)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3134!2 var3432)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r15) 

(declare-const var3134!3 var2114)
(declare-const var3432!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), insertOpenNodeCode/-1910072544=([org.javacc.jjtree.JavaCodeGenerator, org.javacc.jjtree.NodeScope, org.javacc.jjtree.IO, java.lang.String], void)}
; {var1572=org.javacc.jjtree.JavaCodeGenerator, var2330=r6, var3893=org.javacc.jjtree.NodeScope, var1296=r7, var2114=org.javacc.jjtree.IO, var3134=r0, var2593=r2, var1275=null_type, var2569=$r1, var3713=$r3, var2205=$r4, var3452=$r5, var1565=$r8, var3050=$r9, var2748=$r10, var2278=$r11, var3010=$r12, var3056=$r13, var2722=$r14, var3432=$r15}
; {org.javacc.jjtree.JavaCodeGenerator=var1572, r6=var2330, org.javacc.jjtree.NodeScope=var3893, r7=var1296, org.javacc.jjtree.IO=var2114, r0=var3134, r2=var2593, null_type=var1275, $r1=var2569, $r3=var3713, $r4=var2205, $r5=var3452, $r8=var1565, $r9=var3050, $r10=var2748, $r11=var2278, $r12=var3010, $r13=var3056, $r14=var2722, $r15=var3432}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r6 := @this: org.javacc.jjtree.JavaCodeGenerator;	r7 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r2 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r6.<org.javacc.jjtree.JavaCodeGenerator: void insertOpenNodeCode(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.lang.String)>(r7, r0, $r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r15);	return
;block_num 1