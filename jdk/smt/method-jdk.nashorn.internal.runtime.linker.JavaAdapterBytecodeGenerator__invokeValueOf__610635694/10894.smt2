(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3805 0)
(declare-sort var502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun invokestatic/1303343655 (var3805 String String String Bool) void)
(declare-const null-var3805 var3805)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var145 var3805) ; Statement: r0 := @parameter0: jdk.internal.org.objectweb.asm.commons.InstructionAdapter 
(assert (not (= var145 null-var3805)))
(declare-const var3300 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3300 null-String)))
(declare-const var610 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var610 null-Int)))
(define-const var2740 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2740)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2740!1 String)
(assert (= var2740!1 ""))
(assert true)
(define-const var3177 String (append/672562846 var2740!1 "java/lang/")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("java/lang/") 
(declare-const var2740!2 String)
(assert (= var2740!2 (str.++ var2740!1 "java/lang/")))
(assert true)
(define-const var707 String (append/672562846 var3177 var3300)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3177!1 String)
(assert (= var3177!1 (str.++ var3177 var3300)))
(assert true)
(define-const var157 String (toString/-2075883882 var707)) ; Statement: $r12 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2593 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2593)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2593!1 String)
(assert (= var2593!1 ""))
(assert true)
(define-const var3021 String (append/672562846 var2593!1 "(")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2593!2 String)
(assert (= var2593!2 (str.++ var2593!1 "(")))
(assert true)
(define-const var3863 String (append/-1166366385 var3021 var610)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var3021!1 String)
(assert (str.prefixof var3021 var3021!1))
(assert true)
(define-const var2705 String (append/672562846 var3863 ")Ljava/lang/")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Ljava/lang/") 
(declare-const var3863!1 String)
(assert (= var3863!1 (str.++ var3863 ")Ljava/lang/")))
(assert true)
(define-const var3045 String (append/672562846 var2705 var3300)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2705!1 String)
(assert (= var2705!1 (str.++ var2705 var3300)))
(assert true)
(define-const var2959 String (append/672562846 var3045 ";")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";") 
(declare-const var3045!1 String)
(assert (= var3045!1 (str.++ var3045 ";")))
(assert true)
(define-const var2581 String (toString/-2075883882 var2959)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (invokestatic/1303343655 var145 var157 "valueOf" var2581 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.InstructionAdapter: void invokestatic(java.lang.String,java.lang.String,java.lang.String,boolean)>($r12, "valueOf", $r11, 0) 

(declare-const var145!1 var3805)
(declare-const var157!1 String)
(declare-const var2439 String)
(declare-const var2581!1 String)
(declare-const var2513 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), invokestatic/1303343655=([jdk.internal.org.objectweb.asm.commons.InstructionAdapter, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3805=jdk.internal.org.objectweb.asm.commons.InstructionAdapter, var145=r0, var3300=r2, var502=null_type, var610=c0, var2740=$r1, var3177=$r3, var707=$r4, var157=$r12, var2593=$r5, var3021=$r6, var3863=$r7, var2705=$r8, var3045=$r9, var2959=$r10, var2581=$r11, var2439="valueOf", var2513=0}
; {jdk.internal.org.objectweb.asm.commons.InstructionAdapter=var3805, r0=var145, r2=var3300, null_type=var502, c0=var610, $r1=var2740, $r3=var3177, $r4=var707, $r12=var157, $r5=var2593, $r6=var3021, $r7=var3863, $r8=var2705, $r9=var3045, $r10=var2959, $r11=var2581, "valueOf"=var2439, 0=var2513}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @parameter0: jdk.internal.org.objectweb.asm.commons.InstructionAdapter;	r2 := @parameter1: java.lang.String;	c0 := @parameter2: char;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("java/lang/");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r12 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")Ljava/lang/");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.commons.InstructionAdapter: void invokestatic(java.lang.String,java.lang.String,java.lang.String,boolean)>($r12, "valueOf", $r11, 0);	return
;block_num 1