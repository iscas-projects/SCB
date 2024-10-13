(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1503 0)
(declare-sort var937 0)
(declare-sort var3234 0)
(declare-sort var2693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var3234 String) void)
(declare-fun insertCloseNodeCode/1158645843 (var1503 var937 var3234 String Bool) void)
(declare-const null-var1503 var1503)
(declare-const null-var937 var937)
(declare-const null-var3234 var3234)
(declare-const null-String String)
(declare-const var676 var1503) ; Statement: r6 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var676 null-var1503)))
(declare-const var3900 var937) ; Statement: r7 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var3900 null-var937)))
(declare-const var2790 var3234) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var2790 null-var3234)))
(declare-const var2567 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2567 null-String)))
(define-const var3311 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3311)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3311!1 String)
(assert (= var3311!1 ""))
(assert true)
(define-const var1990 String (append/672562846 var3311!1 var2567)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3311!2 String)
(assert (= var3311!2 (str.++ var3311!1 var2567)))
(assert true)
(define-const var1053 String (append/672562846 var1990 "{")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var1990!1 String)
(assert (= var1990!1 (str.++ var1990 "{")))
(assert true)
(define-const var3920 String (toString/-2075883882 var1053)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2790 var3920)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var2790!1 var3234)
(declare-const var3920!1 String)
(define-const var2030 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2030)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2030!1 String)
(assert (= var2030!1 ""))
(assert true)
(define-const var2383 String (append/672562846 var2030!1 var2567)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2030!2 String)
(assert (= var2030!2 (str.++ var2030!1 var2567)))
(assert true)
(define-const var932 String (append/672562846 var2383 "  ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2383!1 String)
(assert (= var2383!1 (str.++ var2383 "  ")))
(assert true)
(define-const var834 String (toString/-2075883882 var932)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (insertCloseNodeCode/1158645843 var676 var3900 var2790!1 var834 (ite (= 1 0) true false))) ; Statement: virtualinvoke r6.<org.javacc.jjtree.CPPCodeGenerator: void insertCloseNodeCode(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.lang.String,boolean)>(r7, r0, $r11, 0) 

(declare-const var676!1 var1503)
(declare-const var3900!1 var937)
(declare-const var2790!2 var3234)
(declare-const var834!1 String)
(declare-const var3274 Int)
(define-const var1285 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1285)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1285!1 String)
(assert (= var1285!1 ""))
(assert true)
(define-const var3286 String (append/672562846 var1285!1 var2567)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1285!2 String)
(assert (= var1285!2 (str.++ var1285!1 var2567)))
(assert true)
(define-const var380 String (append/672562846 var3286 "}")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3286!1 String)
(assert (= var3286!1 (str.++ var3286 "}")))
(assert true)
(define-const var3223 String (toString/-2075883882 var380)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2790!2 var3223)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r15) 

(declare-const var2790!3 var3234)
(declare-const var3223!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), insertCloseNodeCode/1158645843=([org.javacc.jjtree.CPPCodeGenerator, org.javacc.jjtree.NodeScope, org.javacc.jjtree.IO, java.lang.String, boolean], void)}
; {var1503=org.javacc.jjtree.CPPCodeGenerator, var676=r6, var937=org.javacc.jjtree.NodeScope, var3900=r7, var3234=org.javacc.jjtree.IO, var2790=r0, var2567=r2, var2693=null_type, var3311=$r1, var1990=$r3, var1053=$r4, var3920=$r5, var2030=$r8, var2383=$r9, var932=$r10, var834=$r11, var3274=0, var1285=$r12, var3286=$r13, var380=$r14, var3223=$r15}
; {org.javacc.jjtree.CPPCodeGenerator=var1503, r6=var676, org.javacc.jjtree.NodeScope=var937, r7=var3900, org.javacc.jjtree.IO=var3234, r0=var2790, r2=var2567, null_type=var2693, $r1=var3311, $r3=var1990, $r4=var1053, $r5=var3920, $r8=var2030, $r9=var2383, $r10=var932, $r11=var834, 0=var3274, $r12=var1285, $r13=var3286, $r14=var380, $r15=var3223}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r6 := @this: org.javacc.jjtree.CPPCodeGenerator;	r7 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r2 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r6.<org.javacc.jjtree.CPPCodeGenerator: void insertCloseNodeCode(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.lang.String,boolean)>(r7, r0, $r11, 0);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r15);	return
;block_num 1