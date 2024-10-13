(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2382 0)
(declare-sort var3016 0)
(declare-sort var542 0)
(declare-sort var1840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var542 String) void)
(declare-fun insertCloseNodeCode/-1396668384 (var2382 var3016 var542 String Bool) void)
(declare-const null-var2382 var2382)
(declare-const null-var3016 var3016)
(declare-const null-var542 var542)
(declare-const null-String String)
(declare-const var2097 var2382) ; Statement: r6 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var2097 null-var2382)))
(declare-const var574 var3016) ; Statement: r7 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var574 null-var3016)))
(declare-const var2470 var542) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var2470 null-var542)))
(declare-const var13 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var13 null-String)))
(define-const var2248 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2248)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2248!1 String)
(assert (= var2248!1 ""))
(assert true)
(define-const var1679 String (append/672562846 var2248!1 var13)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2248!2 String)
(assert (= var2248!2 (str.++ var2248!1 var13)))
(assert true)
(define-const var3212 String (append/672562846 var1679 "{")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var1679!1 String)
(assert (= var1679!1 (str.++ var1679 "{")))
(assert true)
(define-const var420 String (toString/-2075883882 var3212)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2470 var420)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var2470!1 var542)
(declare-const var420!1 String)
(define-const var3827 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3827)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3827!1 String)
(assert (= var3827!1 ""))
(assert true)
(define-const var2976 String (append/672562846 var3827!1 var13)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3827!2 String)
(assert (= var3827!2 (str.++ var3827!1 var13)))
(assert true)
(define-const var2630 String (append/672562846 var2976 "  ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var2976!1 String)
(assert (= var2976!1 (str.++ var2976 "  ")))
(assert true)
(define-const var3956 String (toString/-2075883882 var2630)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (insertCloseNodeCode/-1396668384 var2097 var574 var2470!1 var3956 (ite (= 1 0) true false))) ; Statement: virtualinvoke r6.<org.javacc.jjtree.JavaCodeGenerator: void insertCloseNodeCode(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.lang.String,boolean)>(r7, r0, $r11, 0) 

(declare-const var2097!1 var2382)
(declare-const var574!1 var3016)
(declare-const var2470!2 var542)
(declare-const var3956!1 String)
(declare-const var1740 Int)
(define-const var1171 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1171)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1171!1 String)
(assert (= var1171!1 ""))
(assert true)
(define-const var1362 String (append/672562846 var1171!1 var13)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1171!2 String)
(assert (= var1171!2 (str.++ var1171!1 var13)))
(assert true)
(define-const var3725 String (append/672562846 var1362 "}")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1362!1 String)
(assert (= var1362!1 (str.++ var1362 "}")))
(assert true)
(define-const var1242 String (toString/-2075883882 var3725)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2470!2 var1242)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r15) 

(declare-const var2470!3 var542)
(declare-const var1242!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), insertCloseNodeCode/-1396668384=([org.javacc.jjtree.JavaCodeGenerator, org.javacc.jjtree.NodeScope, org.javacc.jjtree.IO, java.lang.String, boolean], void)}
; {var2382=org.javacc.jjtree.JavaCodeGenerator, var2097=r6, var3016=org.javacc.jjtree.NodeScope, var574=r7, var542=org.javacc.jjtree.IO, var2470=r0, var13=r2, var1840=null_type, var2248=$r1, var1679=$r3, var3212=$r4, var420=$r5, var3827=$r8, var2976=$r9, var2630=$r10, var3956=$r11, var1740=0, var1171=$r12, var1362=$r13, var3725=$r14, var1242=$r15}
; {org.javacc.jjtree.JavaCodeGenerator=var2382, r6=var2097, org.javacc.jjtree.NodeScope=var3016, r7=var574, org.javacc.jjtree.IO=var542, r0=var2470, r2=var13, null_type=var1840, $r1=var2248, $r3=var1679, $r4=var3212, $r5=var420, $r8=var3827, $r9=var2976, $r10=var2630, $r11=var3956, 0=var1740, $r12=var1171, $r13=var1362, $r14=var3725, $r15=var1242}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r6 := @this: org.javacc.jjtree.JavaCodeGenerator;	r7 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r2 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r6.<org.javacc.jjtree.JavaCodeGenerator: void insertCloseNodeCode(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.lang.String,boolean)>(r7, r0, $r11, 0);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r15);	return
;block_num 1