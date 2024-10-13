(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1168 0)
(declare-sort var3091 0)
(declare-sort var409 0)
(declare-sort var1333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var409 String) void)
(declare-fun insertOpenNodeCode/1284769165 (var1168 var3091 var409 String) void)
(declare-const null-var1168 var1168)
(declare-const null-var3091 var3091)
(declare-const null-var409 var409)
(declare-const null-String String)
(declare-const var3775 var1168) ; Statement: r6 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var3775 null-var1168)))
(declare-const var2087 var3091) ; Statement: r7 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var2087 null-var3091)))
(declare-const var2593 var409) ; Statement: r0 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var2593 null-var409)))
(declare-const var1866 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1866 null-String)))
(define-const var470 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var470)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var470!1 String)
(assert (= var470!1 ""))
(assert true)
(define-const var3848 String (append/672562846 var470!1 var1866)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var470!2 String)
(assert (= var470!2 (str.++ var470!1 var1866)))
(assert true)
(define-const var2099 String (append/672562846 var3848 "{")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var3848!1 String)
(assert (= var3848!1 (str.++ var3848 "{")))
(assert true)
(define-const var3739 String (toString/-2075883882 var2099)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2593 var3739)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5) 

(declare-const var2593!1 var409)
(declare-const var3739!1 String)
(define-const var245 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var245)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var245!1 String)
(assert (= var245!1 ""))
(assert true)
(define-const var1692 String (append/672562846 var245!1 var1866)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var245!2 String)
(assert (= var245!2 (str.++ var245!1 var1866)))
(assert true)
(define-const var1883 String (append/672562846 var1692 "  ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ") 
(declare-const var1692!1 String)
(assert (= var1692!1 (str.++ var1692 "  ")))
(assert true)
(define-const var2057 String (toString/-2075883882 var1883)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (insertOpenNodeCode/1284769165 var3775 var2087 var2593!1 var2057)) ; Statement: virtualinvoke r6.<org.javacc.jjtree.CPPCodeGenerator: void insertOpenNodeCode(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.lang.String)>(r7, r0, $r11) 

(declare-const var3775!1 var1168)
(declare-const var2087!1 var3091)
(declare-const var2593!2 var409)
(declare-const var2057!1 String)
(define-const var1992 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1992)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1992!1 String)
(assert (= var1992!1 ""))
(assert true)
(define-const var597 String (append/672562846 var1992!1 var1866)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1992!2 String)
(assert (= var1992!2 (str.++ var1992!1 var1866)))
(assert true)
(define-const var1305 String (append/672562846 var597 "}")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var597!1 String)
(assert (= var597!1 (str.++ var597 "}")))
(assert true)
(define-const var25 String (toString/-2075883882 var1305)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2593!2 var25)) ; Statement: virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r15) 

(declare-const var2593!3 var409)
(declare-const var25!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), insertOpenNodeCode/1284769165=([org.javacc.jjtree.CPPCodeGenerator, org.javacc.jjtree.NodeScope, org.javacc.jjtree.IO, java.lang.String], void)}
; {var1168=org.javacc.jjtree.CPPCodeGenerator, var3775=r6, var3091=org.javacc.jjtree.NodeScope, var2087=r7, var409=org.javacc.jjtree.IO, var2593=r0, var1866=r2, var1333=null_type, var470=$r1, var3848=$r3, var2099=$r4, var3739=$r5, var245=$r8, var1692=$r9, var1883=$r10, var2057=$r11, var1992=$r12, var597=$r13, var1305=$r14, var25=$r15}
; {org.javacc.jjtree.CPPCodeGenerator=var1168, r6=var3775, org.javacc.jjtree.NodeScope=var3091, r7=var2087, org.javacc.jjtree.IO=var409, r0=var2593, r2=var1866, null_type=var1333, $r1=var470, $r3=var3848, $r4=var2099, $r5=var3739, $r8=var245, $r9=var1692, $r10=var1883, $r11=var2057, $r12=var1992, $r13=var597, $r14=var1305, $r15=var25}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r6 := @this: org.javacc.jjtree.CPPCodeGenerator;	r7 := @parameter0: org.javacc.jjtree.NodeScope;	r0 := @parameter1: org.javacc.jjtree.IO;	r2 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r5);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r6.<org.javacc.jjtree.CPPCodeGenerator: void insertOpenNodeCode(org.javacc.jjtree.NodeScope,org.javacc.jjtree.IO,java.lang.String)>(r7, r0, $r11);	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjtree.IO: void println(java.lang.String)>($r15);	return
;block_num 1