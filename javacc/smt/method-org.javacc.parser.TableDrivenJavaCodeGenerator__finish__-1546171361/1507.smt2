(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var350 0)
(declare-sort var3573 0)
(declare-sort var113 0)
(declare-sort var549 0)
(declare-sort var769 0)
(declare-sort var1479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun codeGenerator/1881512927 (var350) var113)
(declare-fun arr-var549-init () (Array Int var549))
(declare-fun cast-from-String-to-var549 (String) var549)
(declare-fun genCodeLine/787715242 (var113 (Array Int var549)) void)
(declare-fun var769_getBuildParser/-805250893 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var769_getOutputDirectory/873146074 () var1479)
(declare-fun append/-1031950772 (String var549) String)
(declare-fun cast-from-var1479-to-var549 (var1479) var549)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun parserName/658263060 (var3573) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun saveOutput/-1572319013 (var113 String) void)
(declare-const null-var350 var350)
(declare-const null-var3573 var3573)
(declare-const null-__Array__Int__var549__ (Array Int var549))
(declare-const var1479-separator String)
(declare-const var3482 var350) ; Statement: r0 := @this: org.javacc.parser.TableDrivenJavaCodeGenerator 
(assert (not (= var3482 null-var350)))
(declare-const var1867 var3573) ; Statement: r7 := @parameter0: org.javacc.parser.TokenizerData 
(assert (not (= var1867 null-var3573)))
(define-const var1130 var113 (codeGenerator/1881512927 var3482)) ; Statement: $r2 = r0.<org.javacc.parser.TableDrivenJavaCodeGenerator: org.javacc.parser.CodeGenerator codeGenerator> 
(define-const var1861 (Array Int var549) arr-var549-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var1861!1 (Array Int var549))
(assert (not (= var1861!1 null-__Array__Int__var549__)))
(assert (= (select var1861!1 0) (cast-from-String-to-var549 "\n}"))) ; Statement: $r1[0] = "\n}" 
(assert true)
;(assert (genCodeLine/787715242 var1130 var1861!1)) ; Statement: virtualinvoke $r2.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1) 

(declare-const var1130!1 var113)
(declare-const var1861!2 (Array Int var549))
(define-const var511 Bool var769_getBuildParser/-805250893) ; Statement: $z0 = staticinvoke <org.javacc.parser.Options: boolean getBuildParser()>() 
 ; Statement: if $z0 != 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var511 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2551 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2551)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2551!1 String)
(assert (= var2551!1 ""))
(define-const var2935 var1479 var769_getOutputDirectory/873146074) ; Statement: $r4 = staticinvoke <org.javacc.parser.Options: java.io.File getOutputDirectory()>() 
(assert true)
(define-const var658 String (append/-1031950772 var2551!1 (cast-from-var1479-to-var549 var2935))) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2551!2 String)
(assert (str.prefixof var2551!1 var2551!2))
(define-const var2005 String var1479-separator) ; Statement: $r5 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var353 String (append/672562846 var658 var2005)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var658!1 String)
(assert (= var658!1 (str.++ var658 var2005)))
(define-const var2060 String (parserName/658263060 var1867)) ; Statement: $r8 = r7.<org.javacc.parser.TokenizerData: java.lang.String parserName> 
(assert true)
(define-const var2765 String (append/672562846 var353 var2060)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var353!1 String)
(assert (= var353!1 (str.++ var353 var2060)))
(assert true)
(define-const var472 String (append/672562846 var2765 "TokenManager.java")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TokenManager.java") 
(declare-const var2765!1 String)
(assert (= var2765!1 (str.++ var2765 "TokenManager.java")))
(assert true)
(define-const var821 String (toString/-2075883882 var472)) ; Statement: r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1428 var113 (codeGenerator/1881512927 var3482)) ; Statement: $r13 = r0.<org.javacc.parser.TableDrivenJavaCodeGenerator: org.javacc.parser.CodeGenerator codeGenerator> 
(assert true)
;(assert (saveOutput/-1572319013 var1428 var821)) ; Statement: virtualinvoke $r13.<org.javacc.parser.CodeGenerator: void saveOutput(java.lang.String)>(r12) 

(declare-const var1428!1 var113)
(declare-const var821!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {codeGenerator/1881512927=([org.javacc.parser.TableDrivenJavaCodeGenerator], org.javacc.parser.CodeGenerator), arr-var549-init=([], java.lang.Object[]), cast-from-String-to-var549=([java.lang.String], java.lang.Object), genCodeLine/787715242=([org.javacc.parser.CodeGenerator, java.lang.Object[]], void), var769_getBuildParser/-805250893=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var769_getOutputDirectory/873146074=([], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1479-to-var549=([java.io.File], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), parserName/658263060=([org.javacc.parser.TokenizerData], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), saveOutput/-1572319013=([org.javacc.parser.CodeGenerator, java.lang.String], void)}
; {var350=org.javacc.parser.TableDrivenJavaCodeGenerator, var3482=r0, var3573=org.javacc.parser.TokenizerData, var1867=r7, var113=org.javacc.parser.CodeGenerator, var1130=$r2, var549=java.lang.Object, var1861=$r1, var769=org.javacc.parser.Options, var511=$z0, var2551=$r3, var1479=java.io.File, var2935=$r4, var658=$r6, var2005=$r5, var353=$r9, var2060=$r8, var2765=$r10, var472=$r11, var821=r12, var1428=$r13}
; {org.javacc.parser.TableDrivenJavaCodeGenerator=var350, r0=var3482, org.javacc.parser.TokenizerData=var3573, r7=var1867, org.javacc.parser.CodeGenerator=var113, $r2=var1130, java.lang.Object=var549, $r1=var1861, org.javacc.parser.Options=var769, $z0=var511, $r3=var2551, java.io.File=var1479, $r4=var2935, $r6=var658, $r5=var2005, $r9=var353, $r8=var2060, $r10=var2765, $r11=var472, r12=var821, $r13=var1428}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.TableDrivenJavaCodeGenerator;	r7 := @parameter0: org.javacc.parser.TokenizerData;	$r2 = r0.<org.javacc.parser.TableDrivenJavaCodeGenerator: org.javacc.parser.CodeGenerator codeGenerator>;	$r1 = newarray (java.lang.Object)[1];	$r1[0] = "\n}";	virtualinvoke $r2.<org.javacc.parser.CodeGenerator: void genCodeLine(java.lang.Object[])>($r1);	$z0 = staticinvoke <org.javacc.parser.Options: boolean getBuildParser()>();	if $z0 != 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = staticinvoke <org.javacc.parser.Options: java.io.File getOutputDirectory()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r5 = <java.io.File: java.lang.String separator>;	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = r7.<org.javacc.parser.TokenizerData: java.lang.String parserName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TokenManager.java");	r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r0.<org.javacc.parser.TableDrivenJavaCodeGenerator: org.javacc.parser.CodeGenerator codeGenerator>;	virtualinvoke $r13.<org.javacc.parser.CodeGenerator: void saveOutput(java.lang.String)>(r12);	return
;block_num 2